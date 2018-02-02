#!/usr/bin/env python3

import sys

from bdflib import reader, writer, model


def double_glyph_data(gd):
	ret = []
	for gl in gd:
		# get the bits in each line
		glh = int(gl, 16)
		bits = bin(glh)[2:]
		double_bits = []
		for bit in bits:
			# output two bits for each bit in the line
			double_bits.append(bit)
			double_bits.append(bit)
		double_bits = ''.join(double_bits)
		double_glh = int(double_bits, 2)
		double_gl = hex(double_glh)[2:].upper()
		# must 0-pad to two times the length of the original lines
		double_gl = "0" * (len(gl) * 2 - len(double_gl)) + double_gl
		# output the line two times
		ret.append(double_gl)
		ret.append(double_gl)
	return ret


bdf = reader.read_bdf(sys.stdin)

double_bdf = model.Font(bdf['FACE_NAME'],
		bdf['POINT_SIZE'],
		bdf['RESOLUTION_X'],
		bdf['RESOLUTION_Y'])

for g in bdf.glyphs_by_codepoint.values():
	double_bdf.new_glyph_from_data(g.name,
			double_glyph_data(g.get_data()),
			g.bbX * 2,
			g.bbY * 2,
			g.bbW * 2,
			g.bbH * 2,
			g.advance * 2,
			g.codepoint)

writer.write_bdf(double_bdf, sys.stdout)

{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  buildInputs = [ fontforge python3 xorg.mkfontdir ];
}

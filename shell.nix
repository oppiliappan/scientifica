{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  buildInputs = [ fontforge-gtk fontforge python3 xorg.mkfontdir adoptopenjdk-bin ];
}

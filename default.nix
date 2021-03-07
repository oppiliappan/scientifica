let 
  pkgs = import <nixpkgs> {};
in
  with pkgs;
  stdenv.mkDerivation rec {
    name = "scientifica";
    version = "v2.2";
    src = ./src;
    buildInputs = [ fontforge python3 xorg.mkfontdir ];

    buildPhase = ''
      for i in *; do
          p=''${i%%.*}
          fontforge -c 'open(argv[1]).generate(argv[2])' $i "$p".otb
      done
      '';
    installPhase = ''
      fontDir="$out/share/fonts/misc"
      install -m 644 -D *.otb out/* -t "$fontDir"
      mkfontdir "$fontDir"
      '';
  }



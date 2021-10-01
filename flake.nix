{
  description = "Scientifica: tall and condensed bitmap font for geeks";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.05";

    bitsnpicas-src = {
      url = "github:kreativekorp/bitsnpicas";
      flake = false;
    };

  };

  outputs =
    { self
    , nixpkgs
    , bitsnpicas-src
    , ...
    }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });
    in
    {

      overlay = final: prev: rec {

        bitsnpicas = with final; pkgs.writeScriptBin "bitsnpicas" ''
          ${jdk}/bin/java -jar ${bitsnpicas-src}/downloads/BitsNPicas.jar "$@"
        '';

        scientifica = with final; pkgs.stdenvNoCC.mkDerivation {
          pname = "scientifica";
          version = "v2.3";
          src = ./src;

          buildPhase = ''
            runHook preBuild

            ff_filter() {
              ${pkgs.fontforge}/bin/fontforge -c 'open(argv[1]).generate(argv[2])' "$@"
            }

            ttf_filter() {
              ${pkgs.bitsnpicas}/bin/bitsnpicas convertbitmap -f ttf -o "$2" "$1"
            }

            mkdir -p $out/{ttf,otb,bdf}

            pushd $src

            # generate font files
            for i in *; do
              local file_name
              file_name="''${i%.*}"
              ttf_filter "$i" "$out/ttf/$file_name.ttf"
              ff_filter "$i" "$out/otb/$file_name.otb"
              ff_filter "$i" "$out/bdf/$file_name.bdf"
            done

            popd

            runHook postBuild
          '';

          installPhase = ''
            true
          '';

        };

      };

      packages = forAllSystems (system: {
        inherit (nixpkgsFor."${system}") scientifica bitsnpicas;
      });

      defaultPackage = forAllSystems (system: self.packages."${system}".scientifica);

    };
}

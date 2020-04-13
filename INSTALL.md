# Installation

 - [Install from release](#install-from-release)
 - [Build from source](#build-from-source)
 - [Verification](#verification)
 - [Troubleshooting](#troubleshooting)

## Install from release

 1. Grab the latest release from the
[releases](https://github.com/NerdyPepper/scientifica/releases)
page.

 2. Extract the release package:
```shell
tar xzf scientifica-v1.2.tar.gz
```

3. You may install either the `ttf`s or the `otb`s or the
`bdf`s
```shell
# ttfs are recommended
cp ttf/* ~/.local/share/fonts/

# but you may install the otbs if you want to
cp otb/* ~/.local/share/fonts

# bdfs are not recommendedk
cp bdf/* ~/.local/share/fonts
```

## Build from source

Requirements:

 - java
 - [BitsNPicas](https://github.com/kreativekorp/bitsnpicas)
 - [fontforge](https://fontforge.org)
 - python3

On Debian based distros, you can install all requirements
via:
```
sudo apt install openjdk-8-jdk openjdk-8-jre python3 fontforge
curl -o BitsNPicas.jar "https://github.com/kreativekorp/bitsnpicas/blob/master/downloads/BitsNPicas.jar"
```

1. Open `build.sh` and change variable `BNP` to the full
   path to the BitsNPicas `jar` file.
```shell
# for example.:
export BNP="/home/nerdypepper/downloads/BitsNPicas.jar"
```

2. Run `build.sh`
3. If everything went well, you will find the generated font
   files under the `build` folder.
4. Continue with step 3 of "Install from release"

## Verification

Check if your installation procedure was a success:

 1. Run `fc-list | grep sci`
 2. If the output is **not** null, congrats!
 3. Proceed to [Troubleshooting](#troubleshooting) if the output is empty

## Troubleshooting

 If your application does not recognize the font, you can
try a couple of things:

 - use `ttf` variant instead of the `otb` or `bdf`
   variants
 - run `fc-cache --really-force -v` and verify again
 - open an issue, I'd love to help you out!

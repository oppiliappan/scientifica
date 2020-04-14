# Installation

 - [Enable bitmap fonts](#enable-bitmap-fonts)
 - [Install from release](#install-from-release)
 - [Build from source](#build-from-source)
 - [Verification](#verification)
 - [Troubleshooting](#troubleshooting)

## Enable bitmap fonts

If you are an Debian/Ubuntu based system, chances are bitmap
fonts are disabled, go ahead and enable them:

```
sudo mv /etc/fonts/conf.d/10-* /etc/fonts/conf.avail/
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf /etc/fonts/conf.avail/
```

If you would like to disable them for some reason, simply
move the files back back from `/etc/fonts/conf.avail` to
`/etc/fonts/conf.d`.

## Install from release

 1. Grab the latest release from the
[releases](https://github.com/NerdyPepper/scientifica/releases)
page.

 2. Extract the release package:
```shell
tar xf scientifica-v1.2.tar.gz
```

3. You may install either the `ttf`s or the `otb`s or the
`bdf`s
```shell
# ttfs are recommended
cp ttf/* ~/.local/share/fonts/

# but you may install the otbs if you want to
cp otb/* ~/.local/share/fonts

# bdfs are not recommended
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

1. Set an environment variable `BNP` to the path of
   `BitsNPicas.jar`, defaults to the current directory if
   unset
```shell
# for example:
user@host$ BNP="/home/nerdypepper/BitsNPicas.jar" ./build.sh
```

2. If everything went well, you will find the generated font
   files under the `build` folder.
3. Continue with step 3 of "Install from release"

## Verification

Check if your installation procedure was a success:

 1. Run `fc-list | grep scientifica`
 2. If the output is **not** null, congrats!
 3. Proceed to [Troubleshooting](#troubleshooting) if the output is empty

## Troubleshooting

 If your application does not recognize the font, you can
try a couple of things:

 - use `ttf` variant instead of the `otb` or `bdf`
   variants
 - run `fc-cache --really-force -v` and verify again
 - open an issue, I'd love to help you out!

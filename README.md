![heroimage.png](https://0x0.st/scCW.png)

# Scientifica

![deets.png](https://0x0.st/s1JT.png)

Tall and condensed bitmap font for geeks.  
**Now with a bold variant!**


Scientifica is largely based on [creep](https://github.com/romeovs/creep), with a number
of minor tweaks to improve readablity (*a matter of taste of course*).

Most characters are just 4px wide, which is brilliant for low dpi(90-120) displays.


## What's different?


Scientifica now has a **bold** variant too!

Here's a few characters that recieved a revamp:

`V, *, f, W, M, ~, & , i, t, a, (), [], {}`

I have also added characters to the following unicode blocks:

 - Geometric Shapes
 - Arrows
 - Miscellaneous Technical
 - Miscellaneous Symbols
 - Miscellaneous Mathematical Symbols-A
 - Private Use Area
 - Mathematical Operators
 - Box Drawings

I will be constantly adding glyphs to this font. **Keep a lookout.**



## Screenshots

### Dark background

Scientifica in the wild:

![preview.png](https://0x0.st/scvW.png)

![scientificacpp.png](https://0x0.st/scvO.png)


Scientifica now has most box drawing glyphs as well!

![boxx.png](https://0x0.st/scEZ.png)


Latin, Polish, Solvakian, French, German accents included!

![polski.png](https://0x0.st/scvJ.png)


Powerline glyphs

![scientificapowerline1.png](https://0x0.st/scvy.png)
![scientificapowerline2.png](https://0x0.st/scEC.png)


Unicode Python:

![scientificapyligs.png](https://0x0.st/scvt.png)


Unicode C++ (Ligatures included)

![scientificaligs.png](https://0x0.st/scv4.png)


*Please read [this](./ligature_plugins/README.md) for instructions on ligatures.*

### Light background


You're kidding me right?


## Installation


### Linux


 1. Enable bitmap fonts
 ```shell
 cd /etc/fonts/conf.d/
 sudo rm /etc/fonts/conf.d/10* && sudo rm -rf 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf
 sudo dpkg-reconfigure fontconfig
  ```

 2. Get Scientifica
 ```shell
 cd ~ 
 git clone https://github.com/nerdypepper/scientifica
 ```

 3. Symlink it to the right folder
 ```shell
ln -fs ~/scientifica/regular/scientifica-11.bdf ~/.local/share/fonts/scientifica-11.bdf
ln -fs ~/scientifica/bold/scientificaBold-11.bdf ~/.local/share/fonts/scientificaBold-11.bdf
 ```

 4. Use it. `rxvt` for example:

 `URxvt.font:xft:scientifica:size=11`


### MacOS


 1. Get Scientifica
 ```shell
 cd ~
 git clone https://github.com/nerdypepper/scientifica
 ```

 2. Open the `.dfont` in the Font Book.app  
(This may not always be up to date. Try downloading the `.bdf` and exporting it to `.dfont` through fontforge)

 3. You are done, I guess ... dont have a Mac to test it out.

 4. Submit an issue in case you face any problems, or a pull request if you would like to correct me.



## TODO

Following agenda *may* be followed:

 - Add Control Pictures
 - ~~Add all mathematical operators~~ (Almost) Done!
 - ~~Get scientifica to work on windows~~ Done!
 - ~~Work on a bold version (Probably never)~~ Done!
 - Add variants for `a, i, l, 1` etc.



## Credits

Most Basic Latin characters are from [creep](https://github.com/romeovs/creep) by [romeovs](https://github.com/romeovs/).

Creep has been optimized for linux terminals by [raymond-w-ko](https://github.com/raymond-w-ko/). Check out his version [here](https://github.com/raymond-w-ko/creep2).

Some characters are based on [Lemon](http://artwizaleczapka.sourceforge.net/).

Thanks to the creators of [Font Forge](https://fontforge.github.io/en-US/) for, well, creating fontforge.

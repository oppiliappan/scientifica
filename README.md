[![heroimage.png](https://s2.postimg.org/9qdcdg821/heroimage.png)](https://postimg.org/image/6jisttnlx/)

# Scientifica


Tall and condensed bitmap font for geeks.


Scientifica is largely based on [creep](https://github.com/romeovs/creep), with a number
of minor tweaks to improve readablity (*a matter of taste of course*).

Most characters are just 4px wide, which is brilliant for small displays.

Here's a comparison between [creep](https://github.com/romeovs/creep) and [scientifica](https://github.com/nerdypepper/scientifica).

[![latestscreenie.png](https://s8.postimg.org/i2p0x699x/latestscreenie.png)](https://postimg.org/image/lz2ct5u9d/)


## What's different?


Here's a few characters that recieved a revamp:

`V, *, f, W, M, ~ `

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

[![preview1.png](https://s2.postimg.org/4vo8snbw9/scientificajs.png)](https://postimg.org/image/toxstauwl/)


Scientifica now has most box drawing glyphs as well!

[![boxx.png](https://s17.postimg.org/5cimzpx2n/boxx.png)](https://postimg.org/image/igo7cep4b/)


Latin accents too!

[![polski.png](https://s33.postimg.org/a4se02ayn/polski.png)](https://postimg.org/image/p0qx7nmd7/)

### Light background


You're kidding me right?




## Installation


### Ubuntu


 1. Enable bitmap fonts
 ```shell
 $ cd /etc/fonts/conf.d/ 
 $ sudo rm /etc/fonts/conf.d/10* && sudo rm -rf 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf
 $ sudo dpkg-reconfigure fontconfig
  ```

 2. Get Scientifica
 ```shell
 $ cd ~ 
 $ git clone https://github.com/nerdypepper/scientifica
 ```

 3. Copy it to the right folder
 ```shell 
 $ cp ~/scientifica/scientifica-11.bdf ~/.local/share/fonts/
 ```

 4. Use it. `rxvt` for example:
 ```shell
 URxvt.font:xft:scientifica:size=11
 ```


### MacOS


 1. Get Scientifica
 ```shell
 $ cd ~
 $ git clone https://github.com/nerdypepper/scientifica
 ```

 2. Open the `.dfont` in the Font Book.app (This may not always be up to date. Try downloading the `.bdf` and exporting it to `.dfont` through fontforge)

 3. You are done, I guess ... dont have a Mac to test it out.

 4. Submit an issue in case you face any problems, or a pull request if you would like to correct me.


### Arch

You probably already know how to install them.

If not, read the [wiki](https://wiki.archlinux.org/index.php/fonts).




## TODO

Following agenda *may* be followed:

 - Add Control Pictures
 - Add all mathematical operators
 - Get scientifica to work on windows
 - Work on a bold version (Probably never)
 - Add variants for `a, i, l, 1` etc.




## Credits

Most Basic Latin characters are from [creep](https://github.com/romeovs/creep) by [romeovs](https://github.com/romeovs).

Creep has been optimized for linux terminals by [raymond-w-ko](https://github.com/raymond-w-ko). Check out his version [here](https://github.com/raymond-w-ko/creep2).

Some characters are based on [Lemon](http://artwizaleczapka.sourceforge.net/).

Thanks to the creators of [Font Forge](https://fontforge.github.io/en-US/) for, well, creating fontforge.

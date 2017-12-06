<img src="https://github.com/NerdyPepper/scientifica/blob/master/images/heroimage.jpg">

# Scientifica


Tall and condensed bitmap font for geeks.


Scientifica is largely based on [creep](https://github.com/romeovs/creep), with a number
of minor tweaks to improve readablity (*a matter of taste of course*).

Most characters are just 4px wide, which is brilliant for small displays.

Heres a comparison between [creep](https://github.com/romeovs/creep) and [scientifica](https://github.com/nerdypepper/scientifica)

<img src="https://imgur.com/LalwDlR">


## Whats different?


Here's a few characters that recieved a revamp:

`V, *, f, W, M, ~ `


A full list of changed characters can be found [here](~/images/changes.png).


I will be constantly adding glyphs to this font. **Keep a lookout.**



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



## Credits

Most Basic Latin characters are from [creep](https://github.com/romeovs/creep) by [romeovs](https://github.com/romeovs).

Creep has been optimized for linux terminals by [raymond-w-ko](https://github.com/raymond-w-ko). Check out his version [here](https://github.com/raymond-w-ko/creep2).

Some characters are based on [Lemon](http://artwizaleczapka.sourceforge.net/)

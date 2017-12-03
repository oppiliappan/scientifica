# Scientifica


Tall and condensed bitmap font for geeks.


Scientifica is largely based on [creep](https://github.com/romeovs/creep), with a number
of minor tweaks to improve readablity (*a matter of taste of course*).

Most characters are just 4px wide, which is brilliant for small displays.


## Whats different?


A few characters that were changed are:

`V, *, f, W, M `

A full list of changed characters can be found [here](~/images/changes.png).


I will be constantly adding glyphs to this font. Keep a lookout.



## Installation


### Ubuntu


 - Enable bitmap fonts
 ```shell
 $ cd /etc/fonts/conf.d/ 
 $ sudo rm /etc/fonts/conf.d/10* && sudo rm -rf 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf
 $ sudo dpkg-reconfigure fontconfig
  ```
  
 - Get Scientifica
 ```shell
 $ cd ~ 
 $ git clone https://gitbhub.com/nerdypepper/scientifica
 ```

 - Copy it to the right folder
 ```shell 
 $ cp ~/scientifica/scientifica.bdf ~/.local/share/fonts/
 ```


### MacOS


 - Get Scientifica
 
 ` $ cd ~ `
 
 ` $ git clone https://gitbhub.com/nerdypepper/scientifica ` 


 - Open the `.dfont` in the Font Book.app


 - You are done, I guess...dont have a Mac to test it out.


 - Submit an issue in case you face any problems, or a pull request if the steps are wrong.

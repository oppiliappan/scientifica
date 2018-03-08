# Ligature and Unicode substitution

These features are supported *in (neo)vim only*.

### Installation

Symlink the required vim plugins to

 - `~/.vim/after/syntax/` (vim)
 - `~/.config/nvim/after/syntax/` (neovim)

 ```shell
 #vim
 cd ~/scientifica/ligature_plugins/
 for i in `ls` ; do
 ln -sf ~/scientifica/ligature_plugins/"$i" ~/.vim/after/syntax/"$i"
 done

 #nvim
 cd ~/scientifica/ligature_plugins/
 for i in `ls` ; do
 ln -sf ~/scientifica/ligature_plugins/"$i" ~/.config/nvim/after/syntax/"$i"
 done
 ```

Haskell in vim with scientifica:  
![haskell_ligs](https://0x0.st/sT8a.png)

Credits go to [romeovs](https://github.com/romeovs/) for the haskell plugin.  
Credits go to [ehamberg](https://github.com/ehamberg/vim-cute-python) for the python plugin.

Both plugins have been modified (haskell.vim especially) to play well with scientifica.  
If you need ligatures for other languages, just open an issue, with the language and the ligature sequence.

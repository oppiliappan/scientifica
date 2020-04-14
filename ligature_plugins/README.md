# Ligature and Unicode substitution

These features are supported in {neo,}vim only.

### Installation

Copy the required vim plugins to

 - `~/.vim/after/syntax/` (vim)
 - `~/.config/nvim/after/syntax/` (neovim)

 ```shell
# the rust plugin for example:
mkdir -p ~/.vim/after/syntax
cp ligature_plugins/rust.vim ~/.vim/after/syntax/
 ```

If you have `set conceallevel=0` if your `vimrc`, remove it.

Big thanks to [romeovs](https://github.com/romeovs/) for
creating the haskell plugin and the idea of ligatures via
conceals.

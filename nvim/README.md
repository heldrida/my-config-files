# Neovim

## Install

First, install [vim-plug](https://github.com/junegunn/vim-plug)

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 🗝 Hotkeys

Edit the configuration file by using one of the following:

`nvim ~/.config/nvim/init.vim`

`:e $MYVIMRC`

`<Leader>ce`

👆The <Leader> key by default is \

**Ctrl+w and v** - Split vertically

**Ctrl+w and s** - Split horizontally

**Ctrl+hjkl** - Switch between split panes, originally as Ctrl+w and direction hjkl

**$** - Go to the end of the line

**A** - Go to the end of the line and enter insert mode

**Cltr+t** - Toggler NERDTree

**gg** - Move to the first line of the file
**G** - Move to the last line
**gg=G** - Reindent the whole file
**gv** - Reselect the last visual selection
**`<** - Jump to beginning of last visual selection
**`>** - Jump to end of last visual selection
**^** - Move to first non-blank character of the line
**g_** - Move the last non-blank character of the line (but you remove trailing whitespace, right)
**g_lD** - Delete all the trailing whitespace on the line
**ea** - Append to the end of the current word
**gf** - Jump to the file name under the cursor
**xp** - Swap character forward
**Xp** - Swap character backward
**yyp** - Duplicate the current line
**yapP** - Duplicate the current paragraph
**dat** - Delete around an HTML tag, including the tag
**dit** - Delete inside an HTML tag, excluding the tag
**w** - Move one word to the right
**b** - Move one word to the left
**dd** - Delete the current line
**zc** - Close current fold
**zo** - Open current fold
**za** - Toggle current fold
**zi** - Toggle folding entirely
**<<** - Outdent current line
**>>** - Indent current line
**z=** - Show spelling corrections
**zg** - Add to spelling dictionary
**zw** - Remove from spelling dictionary
**~** - Toggle case of current character
**gUw** - Uppercase until end of word (u for lower, ~ to toggle)
**gUiw** - Uppercase entire word (u for lower, ~ to toggle)
**gUU** - Uppercase entire line
**gu$** - Lowercase until the end of the line
**da"** - Delete the next double-quoted string
**+** - Move to the first non-whitespace character of the next line
**S** - Delete current line and go into insert mode
**I** - insert at the beginning of the line
**ci"** - Change what’s inside the next double-quoted string
**ca{** - Change inside the curly braces (try [, (, etc.)
**cw** – Change from cursor to the end of the word.
**caw** – Change around the word, including trailing whitespace.
**ciw** – Change inside the word, excluding trailing whitespace.
**vaw** - Visually select word
**dap** - Delete the whole paragraph
**r** - Replace a character
**`[** - Jump to beginning of last yanked text
**`]** - Jump to end of last yanked text
**g;** - Jump to the last change you made
**g,** - Jump back forward through the change list
**&** - Repeat last substitution on current line
**g&** - Repeat last substitution on all lines
**ZZ** - Save the current file and close it

## Reload config

```sh
:source <init.vim>
```

Or,

```sh
:so $MYVIMRC
```


## References

[https://vimcolorschemes.com/](https://vimcolorschemes.com/)

[https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

[https://vimtricks.com/](https://vimtricks.com/)

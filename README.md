# Quick install guide
1. Download latest build of Vim for Windows from Cream (need Vim 80)
2. Run the installer and let it create all Windows registry items (right-click menu, "edit with vim", add to PATH)
3. Delete everything you have under `~/Vim`
4. Pull the content of this repo to your `~/Vim` directory
5. Delete anything stored in `~/Vim/plugged`
6. Run `:PlugInstall` in the new session of Vim.

# Features

## Stata support
The `RunIt()` and `RunDoLines()` functions are superb at sending Stata command
to Stata/SE 14.1. If you have a different version of Stata, change the
following specification file:
`~\Vim\vimfiles\ftplugin\Stata-Vim-Suite\rundo.ini`

## MISC
* Vimwiki 2.3 is working fine on my side, with image display through the new syntax `{{image.jpg}}`

# 另有 中文 快速安裝 指南

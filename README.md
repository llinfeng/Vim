# Intro
Renewed branch containing the most up-to-date Vim installation on my windows machines.

# Features
Vundle deployed, together with all handy tools. Satiable for coding in Stata and writing Latex.

# How to Install
This is a Vim distribution for personal use, contributed by a non-programmer. So, no open-box installation shall be readily available at this point. All the following steps are tested to work on a 64-bit Windows 7 machine (as well as Windows 8 machine).

0. Clear the previous installation of Vim from registry (yes, Windows has annoying Registry feature)
1. Install the latest Vim for Windows (32-bit) from Cream (http://sourceforge.net/projects/cream/files/Vim/) onto `C:\Vim`
2. Delete all files in `C:\Vim` (All Cream installation does is to create necessary Windows registry items.)
3. Use arbitrary shell for `Git` and `cd` to C-drive. Then, execute the following through the shell: `git clone https://www.github.com/llinfeng/Vim`
4. Delete eveyrthing in `C:\Vim\Vimfiles\bundle` and copy all the files in the `Vundle` repo (https://github.com/gmarik/Vundle.vim) to the following folder:`c:\Vim\vimfiles\bundle\Vundle.vim\`
    One may use `git clone` directly, but copy-pasting from another indepednent directory has been tested to work.
5. Open Vim and ignore the errors. Then execute `PluginInstall` through `Ex Mode`.
6. (Minor tune, 1) Vimwiki would need to get onto `dev` mode. Steps to take: 
    1. Use abitrary shell for `git` to change directory to: (`c:\vim\vimfiles\bundle\vimwiki\`)
    2. execute the following git command: `git checkout origin/dev`.

# Known Problems:
## 32-bit Vim with 32-bit python
To make the python integration work, 32-bit Vim downloaded through Cream (http://sourceforge.net/projects/cream/files/Vim/) would need **32-bit** Python.

* Installing SPSS on a 64-bit machine will distort the Python integration.

nmap j gj
nmap k gk

setlocal wrap linebreak nolist textwidth=80 wrapmargin=0
iab <buffer> sj TimeTag: <c-r>=strftime("20%y-%m-%d %H:%M:%S")<cr><ESC>

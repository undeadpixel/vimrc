" Font and styles
set guifont=Inconsolata\ 12
color solarized
set background=dark

"" local costumizations
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

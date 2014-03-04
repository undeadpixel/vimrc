" Font and styles
set guifont=Inconsolata\ 12
color evening

"" local costumizations
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

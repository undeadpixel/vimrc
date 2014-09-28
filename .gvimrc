" Font and styles

if has("gui_macvim")
  " retina macs treat fonts differently
  set guifont=Inconsolata:h15
else
  set guifont=Inconsolata\ 12
endif


color solarized
set background=dark

"" local costumizations
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

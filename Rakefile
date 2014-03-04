desc "update all submodules & pathogen"
task :update do |t|
  puts "> updating vimrc"
  `git pull`

  puts "> updating all submodules"
  `git submodule sync`
  `git submodule update --init`
end

desc "install vimrc in current system"
task :install do |t|
  puts "> symlinking vimrc files"
  `ln -nfs .vimrc $HOME/.vimrc`
  `ln -nfs .gvimrc $HOME/.gvimrc`

  # update everything
  `rake update`
end

task :default => [:update]

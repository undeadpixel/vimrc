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
  %w{.vimrc .gvimrc}.each do |file|
    ln_sf File.expand_path("../#{file}", __FILE__), File.expand_path("~/#{file}")
  end

  # update everything
  sh "rake update"
end

task :default => [:update]

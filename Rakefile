desc "update all submodules & pathogen"
task :update do |t|
  puts "> updating vimrc"
  sh "git pull"

  puts "> updating all submodules"
  sh "git submodule sync"
  sh "git submodule update --init"
end

FILES = %w{.vimrc .gvimrc}

desc "install vimrc in current system"
task :install do |t|
  puts "> symlinking vimrc files"
  FILES.each do |file|
    ln_sf File.expand_path("../#{file}", __FILE__), File.expand_path("~/#{file}")
  end

  # update everything
  sh "rake update"
end

desc "removes all external files"
task :remove do |t|
  puts "> removing external config files"
  FILES.each do |file|
    rm_f(File.expand_path("~/#{file}"))
  end

  puts "> renaming local modifications files"
  FILES.each do |file|
    local_file = File.expand_path("~/#{file}.local")
    mv(local_file, File.expand_path("~/#{file}.local.old"), :force => true) if File.exist? local_file
  end

  puts "### You should manually execute: rm -fr #{File.expand_path("..", __FILE__)}"
end

task :default => [:update]

require 'bundler/setup'
require 'padrino-core/cli/rake'

PadrinoTasks.use(:database)
PadrinoTasks.init

task :docgen do
  if(which("aglio"))
    exec("aglio -t flatly -i ./public/api-doc.md  -o ./public/api-doc.html")
  else
    puts "Generating docs requires aglio API blueprint parser."
    puts "Please install node, and then 'sudo npm install -g aglio'"
  end
end

def which(cmd)
  exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
  ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
    exts.each { |ext|
      exe = File.join(path, "#{cmd}#{ext}")
      return exe if File.executable? exe
    }
  end
  return nil
end

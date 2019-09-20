#!/usr/bin/env ruby
#
Dir.chdir("/home/iwsyhgia/chrome/ipa")
Dir.each_child("/home/iwsyhgia/chrome/ipa") do |filename|
  old, new = filename, filename.gsub(/(.{1,2})\s.*(\..*)/, '\1\2')
  File.rename(old, new);
end

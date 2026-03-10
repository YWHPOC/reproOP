pid = fork do
  path = "/tmp/poc.txt"
  content = "poc: created by pid=#{Process.pid} at #{Time.now}\n"

  File.open(path, "w") do |f|
    f.write(content)
  end
end

Process.detach(pid)

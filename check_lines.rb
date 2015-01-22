MAX_LINE_LENGTH = 80

ARGV.each do |path|
  begin
    lines = File::readlines(path)
  rescue
    puts "Error: \"#{path}\" does not exist."
    exit 1
  end
  lines.each do |line|
    if line.length > MAX_LINE_LENGTH
      puts "Line length: #{line.length}"
    end
  end
end

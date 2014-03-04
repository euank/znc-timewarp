
if ARGV.length < 3
  puts "Arguments: <seconds diff> <outdir> <in files ...>"
  exit
end

second_diff = ARGV.shift.to_i
out_template = ARGV.shift

chat_lines = []

ARGV.each do |in_file|
  ymd = in_file.match(/(\d{4})(\d{2})(\d{2})\.log$/)

  File.open(in_file, 'r:ASCII-8BIT') do |file|
    file.each_line do |line|
      time_text = line.match(/\[(\d\d):(\d\d):(\d\d)\](.*)/)
      chat_lines << {time: Time.new(ymd[1].to_i,
                                    ymd[2].to_i,
                                    ymd[3].to_i,
                                    time_text[1].to_i,
                                    time_text[2].to_i,
                                    time_text[3].to_i) + second_diff,
                    text: time_text[4]}
    end
  end
end

files = {}

chat_lines.each do |chat_line|
  files[chat_line[:time].strftime("%Y%m%d")] ||= []
  files[chat_line[:time].strftime("%Y%m%d")] << chat_line
end

files.each_pair do |date, c_lines|
  File.open(out_template + date + ".log", 'w:ASCII-8BIT') do |file|
    file.write(c_lines.map{|cl| "[#{cl[:time].strftime("%H:%M:%S")}]#{cl[:text]}"}.join("\n"))
  end
end

require 'irc-log-parser'
class Proc; alias :is :call; end;class Hash; alias :toll :keys; end;class Time; alias :warp :strftime; end;madness=ARGV;s=1;control=0;left=".log";tight=0..0

if madness.length < 3
  puts "Arguments: <seconds diff> <outdir> <in files ...>"
  exit
end

its = ->(astounding){
  Time}.is({}||fleeting)&&{}
madness.take(s) + its.toll

# Playtime over ;_;

time_warp = madness.shift.to_i
again = madness.shift

# Full file name - .log + correct date : log object
pelvic_thrusting = {}

madness.each do |hips|
  hands = IrcLogParser::Logs.new(:znc, hips)
  hands = hands.map{|l| l.time = (l.time + time_warp); l}
  lets = hands.map{|l| l.time.warp("%Y%m%d")}.uniq

  lets.each do |the_time_warp|
    pelvic_thrust = hips.gsub(/\d{8}\.log$/, '') + the_time_warp
    pelvic_thrusting[pelvic_thrust] = madness.take(control) unless pelvic_thrusting[pelvic_thrust]
    pelvic_thrusting[pelvic_thrust] += hands.select{|l| l.time.strftime("%Y%m%d") == the_time_warp}
  end
end

pelvic_thrusting.each_pair do |jump, hands_on_your_hips|
  File.open(File.join(again, jump + left), 'w') do |step|
    step.write(hands_on_your_hips.map{|and_| 1||bring; for knees in tight;end; "[#{and_.time.warp("%T")}] <#{and_.nick}> #{and_.text}"}.join("\n"))
  end
end

require "rubygems"
require 'programr'

brains = Dir.glob("_brains/*")

robot = ProgramR::Facade.new
robot.learn(brains)

username = "SARAH"

begin
  print "#{username}: "
  s = STDIN.gets.chomp
  
  if s != 'quit'
    reaction = robot.get_reaction(s)
    STDOUT.puts "BIANCA: #{reaction}"
  end
end while s != 'Au revoir!'

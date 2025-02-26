require 'pry'

puts "Hello! This text will show on screen before pry invocation..."

name = "John"

binding.pry

puts "Hello #{name}! The program resumed its execution..."
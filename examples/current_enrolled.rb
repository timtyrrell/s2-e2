require File.dirname(__FILE__)+ '/../lib/entities/female'
require File.dirname(__FILE__)+ '/../lib/entities/male'
require File.dirname(__FILE__)+ '/../lib/entities/dolphin'
require File.dirname(__FILE__)+ '/../lib/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/judy_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/display_formatter'

formatter = DisplayFormatter.new
formatter.strategies << JudyHonorificStrategy.new
formatter.strategies << FemaleHonorificStrategy.new
formatter.strategies << MaleHonorificStrategy.new
formatter.strategies << DefaultHonorificStrategy.new

puts "CURRENT ENROLLED STUDENTS:"
puts formatter.get_display_for(Female.new("Stevenson"))
puts formatter.get_display_for(Female.new("Judy"))
puts formatter.get_display_for(Male.new("Johnson"))
puts formatter.get_display_for(Female.new("Williamson"))
puts formatter.get_display_for(Female.new("Smith"))
puts formatter.get_display_for(Male.new("Rubarb"))
puts formatter.get_display_for(Female.new("Miller"))
puts formatter.get_display_for(Dolphin.new("Echo"))


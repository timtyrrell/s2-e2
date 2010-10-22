require File.dirname(__FILE__)+ '/entities/female'
require File.dirname(__FILE__)+ '/entities/male'
require File.dirname(__FILE__)+ '/entities/dolphin'
require File.dirname(__FILE__)+ '/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/strategies/judy_honorific_strategy'
require './display_formatter'

display_formatter = DisplayFormatter.new
display_formatter.strategies = [JudyHonorificStrategy.new,
                                FemaleHonorificStrategy.new,
                                MaleHonorificStrategy.new,
                                DefaultHonorificStrategy.new
                               ]

puts "CURRENT ENROLLED STUDENTS:"
puts display_formatter.get_display_for(Female.new("Stevenson"))
puts display_formatter.get_display_for(Female.new("Judy"))
puts display_formatter.get_display_for(Male.new("Johnson"))
puts display_formatter.get_display_for(Female.new("Williamson"))
puts display_formatter.get_display_for(Female.new("Smith"))
puts display_formatter.get_display_for(Male.new("Rubarb"))
puts display_formatter.get_display_for(Female.new("Miller"))
puts display_formatter.get_display_for(Dolphin.new("Echo"))


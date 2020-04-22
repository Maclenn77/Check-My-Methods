#!/usr/bin/ruby
load 'My_Methods.rb'
require 'My_Methods'

bar = "\n=====================\n"

arr = (2..6)
#arr = [true, true, nil]
empty = []

print bar + "All? - No arguments" + bar + "\n"

puts "My method: " + arr.my_all?.to_s
puts "Ruby's method: " + arr.all?.to_s

print bar + "All? - Block given" + bar + "\n"

puts "My method: " + (arr.my_all? { |n| n.is_a? Integer }).to_s
puts "Ruby's method: " + (arr.all? { |n| n.is_a? Integer }).to_s

print bar + "All? - Parameter given" + bar + "\n"

puts "My method: " + (arr.my_all?(String)).to_s
puts "Ruby's method: " + (arr.all?(String)).to_s

# Test any?

print bar + "Any? - No arguments" + bar + "\n"

puts "My method: " + arr.my_any?.to_s
puts "Ruby's method: " + arr.any?.to_s

print bar + "Any? - Block given" + bar + "\n"

puts "My method: " + (arr.my_any? { |n| n.is_a? Integer }).to_s
puts "Ruby's method: " + (arr.any? { |n| n.is_a? Integer }).to_s

print bar + "Any? - Parameter given" + bar + "\n"

puts "My method: " + (arr.my_any?(String)).to_s
puts "Ruby's method: " + (arr.any?(String)).to_s

print bar + "Any? - Empty Array" + bar + "\n"

puts "My method: " + empty.my_any?.to_s
puts "Ruby's method: " + empty.any?.to_s

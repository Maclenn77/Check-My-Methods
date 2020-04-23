#!/usr/bin/ruby
require_relative 'My_Methods'

# Your methods should acept Range class
range = (3..8)

# Test empty arrays
empty = []

# Test array with true, false and until
boolean_array = [nil, false, true]

# Test strings
str = 'strings'

# Proc with one variable

block_1 = proc { |n| print n.to_s + " " }

#Block with two variables
block_2 = proc { |n, m| n * m }

# Test my_each

def my_title(title)
  bar = "\n=====================\n"
  print bar + title + bar + "\n"
end

def check_each(range)
  my_title('Each - No arguments')

  puts 'My method: ' + range.my_each.to_s
  puts "Ruby's method: " + range.each.to_s

  my_title('Each - Proc')

  puts 'My method: ' + range.my_each(&block_1).to_s
  puts "Ruby's method: " + range.my_each(&block_1).to_s

  my_title('Each - Block Given')

  puts 'My method: ' + (range.my_each { |n| print n.to_s + ' ' }).to_s
  puts "Ruby's method: " + (range.each { |n| print n.to_s + ' ' }).to_s
end

# Test my_each with each_with_index

def check_each_with_index
  print bar + 'Each with index - No arguments' + bar + "\n"

  puts 'My method: ' + range.my_each_with_index.to_s
  puts "Ruby's method: " + range.each_with_index.to_s

  print bar + 'Each with index - Proc' + bar + "\n"

  puts 'My method: ' + range.my_each_with_index(&block_2).to_s
  puts "Ruby's method: " + range.each_with_index(&block_2).to_s
end

# Test my_all

def check_my_all
  print bar + 'All? - No arguments' + bar + "\n"

  puts 'My method: ' + range.my_all?.to_s
  puts "Ruby's method: " + range.all?.to_s

  print bar + 'All? - Block given' + bar + "\n"

  puts 'My method: ' + (range.my_all? { |n| n.is_a? Integer }).to_s
  puts "Ruby's method: " + (range.all? { |n| n.is_a? Integer }).to_s

  print bar + 'All? - Parameter given' + bar + "\n"

  puts 'My method: ' + range.my_all?(String).to_s
  puts "Ruby's method: " + range.all?(String).to_s
end

# Test any?

def check_my_any
  my_title('Any? - No arguments')

  puts 'My method: ' + range.my_any?.to_s
  puts "Ruby's method: " + range.any?.to_s

  my_title('Any? - Block given')

  puts 'My method: ' + (range.my_any? { |n| n.is_a? Integer }).to_s
  puts "Ruby's method: " + (range.any? { |n| n.is_a? Integer }).to_s

  my_title('Any? - Parameter given')

  puts 'My method: ' + range.my_any?(String).to_s
  puts "Ruby's method: " + range.any?(String).to_s

  my_title('Any? - Empty Array')

  puts "Ruby's method: " + empty.any?.to_s
  puts 'My method: ' + empty.my_any?.to_s
end

# Test Inject

def check_my_inject
  print bar + 'Inject - Range' + bar + "\n"

  puts 'My method: ' + range.my_inject(2, :*).to_s
  puts "Ruby's method: " + range.inject(2, :*).to_s

  print bar + 'Inject - Block given' + bar + "\n"

  puts 'My method: ' + (range.my_inject(4) { |n, m| n * m }).to_s
  puts "Ruby's method: " + (range.inject(4) { |n, m| n * m }).to_s
end

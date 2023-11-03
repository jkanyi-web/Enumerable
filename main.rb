require_relative 'my_list'
require_relative 'my_enumerable'

# Create our list
list = MyList.new(1, 2, 3, 4)
puts list.inspect

# Test for #all?
puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }

# Test fr #any?
puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }

# filter
filtered = list.filter(&:even?)
puts filtered.inspect

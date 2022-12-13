require 'amazing_print'
require 'set'

# =============
#     Set
# =============
# Set implements a collection of unordered values with no duplicates. This is a hybrid of Array's intuitive inter-operation facilities and Hash's fast lookup.

# Initialization
puts "=========="
  ap s1 = Set[1, 2]
  ap s2 = [1, 2].to_set

  ap "s1 = s2 ? #=> #{s1 == s2}"
puts "==========\n\n"


# Characteristics
puts "=========="
  # c1 = Set['a', 'b', 'c'] == Set['a', 'c', 'b']
  # c2 = Set['a', 'b', 'c'] == Set['a', 'c', 'b'].add('b')
  # ap [c1, c2]
puts "==========\n\n"

# method #===
item = :apple
is_veg_or_fruit = case item
                  when Set[:potato, :carrot]
                    "vegetable"
                  when Set[:apple, :banana]
                    "fruit"
                  end

puts "===== is_veg_or_fruit ====="
  # ap is_veg_or_fruit
puts "==========\n\n"

# operations on set
# union, intersection, subset, superset, subset?
s1.subset?(s2)
s2.subset?(s1)

require 'amazing_print'

# ==============
#     Array
# ==============
# Arrays are ordered, integer-indexed collections of any object.

# Initialization
puts "\n\n===== Initialization ====="
  ap ['1', '2', '3']

  ap %w[1 2 3]

  ap %i[a b c]

  ap %[x y z]  # WARNING

  ap Array.new(4) {|i| i * 2 }

  ap Array.new(3) {Array.new(3)}
puts "==========\n\n"

# Characteristic
a = %i[a b c]

puts "====== Characteristic ======="
  ap a[0]
puts "==========\n\n"

# ==============
#     Hash
# ==============
# A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

# Initialization
puts "\n\n===== Initialization ====="
  # grades  = { "Jane Doe" => 10, "Jim Doe" => 6 }
  # options = { font_size: 10, font_family: "Arial" }
  #
  # ap grades
  # ap options
  #
  # h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
  # h['d']
  # h['f'] = "Don't Go Fish: f"
  #
  # ap h
puts "==========\n\n"

# Characteristic
puts "====== Characteristic ======="
  # ap options[:font_size]
  #
  # grades["Dorothy Doe"] = 9
  #
  # ap grades
  #
  # bad_grades  = { "Jane Doe" => 10, "Jim Doe" => 6, "Jim Doe" => 8 }
  # ap bad_grades
puts "==========\n\n"

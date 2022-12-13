require 'amazing_print'
require "ostruct"

# ==============
#     Struct
# ==============
# A Struct is a convenient way to bundle a number of attributes together, using accessor methods, without having to write an explicit class

# Initialization
Homeless = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

dave = Homeless.new("Dave", "123 Park")
dave.members
# may  = Customer.new("May", "456 Main")

[["Dave", "123 Park"], ["Steve", "456 Park"]].each do |name, address|
  member = Homeless.new(name, address)

  puts "=========="
  ap member.name
  ap member[:name]
  ap member["name"]
  ap member.address
  ap member.greeting
  puts "==========\n\n"
end

# ==================
#     OpenStruct
# ==================
# An OpenStruct is a data structure, similar to a Hash, that allows the definition of arbitrary attributes with their accompanying values. This is accomplished by using Ruby's metaprogramming to define methods on the class itself.

steve = OpenStruct.new
steve.name = "Steve"
steve.address = "456 Park"

puts "=========="
  # ap steve.name
  # ap steve[:name]
  # ap steve["name"]
  # ap steve.address
  # ap steve.unknown_attr
puts "==========\n\n"

# Struct
ap dave.unknown_attr

# a little trick about Struct, monkey patching
class Struct
  def self.build(hash)
    new(*hash.keys).new(*hash.values)
  end
end

messi = Struct.build(name: 'Messi', address: '666 Argentina')

puts "=========="
  # ap messi.name
  # ap messi.address
puts "==========\n\n"

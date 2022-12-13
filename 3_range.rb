require 'amazing_print'
require 'date'

# =============
#     Range
# =============
# A Range represents an interval—a set of values with a beginning and an end

# Initialization
date_range = Range.new(Date.parse('2001-02-03'), Date.parse('2022-12-13'))
number_range = Range.new(0, 5)
string_range = Range.new('b', 'j')

puts "=========="
  puts date_range
  ap number_range
  ap string_range
  ap string_range.to_a
puts "==========\n\n"

# Shorthand
# Ranges constructed using .. run from the beginning to the end inclusively. Those created using ... exclude the end value.

puts "=========="
  # ap ('a'..'e').to_a
  # ap ('a'...'e').to_a
puts "==========\n\n"

# Characteristics
# method #===

def ruby_status(version)
  case version
  when ..."2.4" then "EOL"
  when "2.4"..."2.5" then "maintenance"
  when "2.5"..."2.7" then "stable"
  when "2.7".. then "upcoming"
  end
end

puts "===== ruby_status ====="
  # %w[2.6.5 2.7].each do |version|
  #   ap "the current status of Ruby #{version} is #{ruby_status(version)}"
  # end
puts "==========\n\n"

# operations on range
# cover?, begin, end, bsearch
  ap ("a".."z").cover?("c")

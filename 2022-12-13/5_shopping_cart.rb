require 'amazing_print'
require "ostruct"
require 'set'

# ===============
#      item
# ===============
# 1. item_name
# 2. item_type
# 3. quantity
# 4. amount

# 1. Array
a_item = ["Aged Brie", :type1, 1, 123.0]
a_item[1] = :type3
ap a_item

# 2. Hash
h_item = {item_name: "Aged Brie", item_type: :type1, quantity: 1, amount: 123.0}
h_item[:item_type] = :type3
# ap h_item

# 3. Struct
item = Struct.new(:item_name, :item_type, :quantity, :amount)
s_item = item.new("Aged Brie", :type1, 1, 123.0)
s_item.item_type = :type3
# ap s_item

# 4. OpenStruct
o_item = OpenStruct.new(h_item)
o_item.item_type = :type3
# ap o_item

# ===============
#      Cart
# ===============

a_cart = [
  {item_name: "Aged Brie",              item_type: :type1, quantity: 1,  amount: 123.0},
  {item_name: "Elixir of the Mongoose", item_type: :type2, quantity: 0,  amount: 345.0},
  {item_name: "Conjured Mana Cake",     item_type: :type3, quantity: 77, amount: 678.0}
]

h_cart = {
  a: {item_name: "Aged Brie",              item_type: :type1, quantity: 1,  amount: 123.0},
  b: {item_name: "Elixir of the Mongoose", item_type: :type2, quantity: 0,  amount: 345.0},
  c: {item_name: "Conjured Mana Cake",     item_type: :type3, quantity: 77, amount: 678.0}
}

ap a_cart
ap h_cart

# return names of all items
ap a_cart.map {|item| item[:item_name]}
ap h_cart.map {|k, v| v[:item_name]}

# ===============
# Item / Cart
# ===============
class Item # < ApplicationRecord
  attr_accessor :item_name, :item_type, :quantity, :amount

  def initialize(params)
    @item_name = params[:item_name]
    @item_type = params[:item_type]
    @quantity  = params[:quantity]
    @amount    = params[:amount]
  end

  def open_to_client?
    Set[:type1, :type2].include?(item_type)
  end
end

c_item = Item.new(h_item)
# ap c_item

class Cart < Array # ActiveRecord::Relation
  attr_accessor :items

  def initialize(items)
    @items = items
  end
end

c_cart = Cart.new(
  [
    Item.new({item_name: "Aged Brie",              item_type: :type1, quantity: 1,  amount: 123.0}),
    Item.new({item_name: "Elixir of the Mongoose", item_type: :type2, quantity: 0,  amount: 345.0}),
    Item.new({item_name: "Conjured Mana Cake",     item_type: :type3, quantity: 77, amount: 678.0})
  ]
)

# Enumerable
# Advanced Operations

# ref: https://ruby-doc.org/3.1.3/Enumerable.html
# Module Enumerable provides methods that are useful to a collection class for:
# - Querying: include?
# - Fetching
# - Searching
# - Sorting
# - Iterating

# ap c_cart.items
# ap c_cart.items.map(&:item_name)
# ap c_cart.items.select(&:open_to_client?).map(&:item_name)
# ap c_cart.items.any?(&:open_to_client?)
# ap c_cart.items.max_by(&:quantity).item_name
# ap c_cart.items.min_by(&:amount).item_name

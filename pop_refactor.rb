# Goal: not to use instance variables
# Goal2: methods that use puts (UI methods) should not be mixed up with the logic of the program


#
#  App Logic    - there should be no puts
#

# Returns the number of bottles a user can buy directly with an amount of money
def bottles_from_purchase(money)
  money / 2
end

# Returns the change I get from a bottles_from_purchase
def change_from_purchase(money)
  money % 2
end

def bottles_from_empties(empties)
  empties / 2
end

def remainder_from_empties(empties)
  empties % 2
end

def bottles_from_caps(num_caps)
  num_caps / 4 
end

def remainder_from_caps(num_caps)
  num_caps % 4
end

#
#  User Interaction
#

puts "Enter your cash"
total_cash = gets.chomp.to_i

puts "You purchased #{bottles_from_purchase(total_cash)} and you got #{change_from_purchase(total_cash)} in change."

# How many bottles can the person get in total

empties = bottles_from_purchase(total_cash)

puts "You get another #{bottles_from_empties(empties)} bottles from the empties. You have #{remainder_from_empties(empties)} bottles remaining."
bottles_from_empties(empties)  # should return 2

puts "You get another #{bottles_from_caps(empties)} bottles from the caps. You have #{remainder_from_caps(empties)} caps remaining."
bottles_from_caps(empties)
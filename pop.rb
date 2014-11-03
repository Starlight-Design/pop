require 'colorize'

## Collect investment from user ##
def receive_investment
  puts "How much money do you have?"
  @number_of_bottles = gets.chomp.to_i
end

## Initialize all methods involved, then prompt a user decision to continue and recycle ##
def start
  @invest = receive_investment
  pop_it(@invest)
  @continue = find_recycle
  puts decision(@continue)
end 

## Calculate the number of bottles and caps from input ## 
def pop_it(cash)
  if cash >= 2
    @bottle = (cash/2)
    puts "You purchased #{@bottle} bottles!".colorize(:magenta)
    @caps = @bottle
    puts "You received #{@caps} bottle caps!"
  else
    puts "Not enough funding, pop costs $2 a bottle!"
  end 
end

## Prompt user to take their purchased bottles and recycle for more bottles ##
def decision(choice)
  if choice == "Yes"
    do_recycle
  elsif choice == "No"
    puts "Please come again!"
  end
end

## Accept user input to recycle ##
def find_recycle
  puts "Recycle your bottles and caps for free pop? (Yes, No)"
    @continue = gets.chomp.capitalize
end

## Run algorithm to return number of earned bottles ## 
def do_recycle
  @new_bottles = 0
  @empty_bottles = @bottle
  @collect_caps = @caps
  while @empty_bottles >= 2
    if @empty_bottles >= 2
      @empty_bottles -= 2
      @new_bottles += 1
    end
  end
  while @collect_caps >= 4
    if  @collect_caps >= 4
      @collect_caps -= 4
      @new_bottles += 1
    end
  end
  puts "You earned #{@new_bottles} bottles!"
end

c = "yes"
## Buy more bottles ##
def decision2(choice)
  if choice == "Yes"

  elsif choice == "No"
    puts "See you later!"
  end
end
decision2(c)

c = "yes"
decision2(c) {

}
decision2(c)

## Check with player if they'd like to purchase more bottles ##
while true
  puts "Would you like to buy more bottles? (Yes, No)"
  choice2 = gets.chomp.capitalize
  if choice2 == "Yes"
    start
  else
    puts "You bought #{@bottle} and got #{@new_bottles} for free!"
    puts "You still have #{@collect_caps} caps and #{@empty_bottles} bottle(s) left over!"
    puts "Please recycle again!"
    break
  end
end
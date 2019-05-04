def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(current_total)
  # code #display_card_total here
  puts "Your cards add up to #{current_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(current_total)
  # code #end_game here
  puts "Sorry, you hit #{current_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  current_total = deal_card + deal_card
  display_card_total(current_total)
  current_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
    if user_input == "h"
      current_total += deal_card
    elsif user_input == "s"
      return current_total
    end
  display_card_total(current_total)
  current_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
  end
  if current_total > 21
    end_game(current_total)
  end
end

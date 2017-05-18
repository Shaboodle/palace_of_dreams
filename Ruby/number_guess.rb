#We'll guess a number between 1 and 10
hidden_val = rand(10) + 1

wants_to_play = nil

#Do you want to play?
while wants_to_play != "y" && wants_to_play != "n"
	puts 'I\'m thinking of a number between 1 and 10'
	puts 'Would you like to take a guess? y/n'
	wants_to_play = gets.chomp
end

#Dummy guess that is out of range
guess = -1

#Game loop while they want to play but haven't found the answer yet
if wants_to_play == 'y'
	while guess != hidden_val
		puts 'What is you guess? (1 - 10)'
		guess = gets.chomp.to_i
		if guess < hidden_val
			puts 'That\'s a little low'
		elsif guess > hidden_val
			puts 'That\'s a little high'
		else
			puts 'That\'s it!!!'
		end
	end
end

#Exit from the program with a goodbye
puts '
Press enter to exit'
gets 

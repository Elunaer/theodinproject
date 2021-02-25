puts "Welcome to virtual rock paper scissors, First to 5 Wins. Enter your selection"

computer_score = 0
player_score = 0

until computer_score == 5 || player_score == 5

    puts "Player select, rock, paper or scissors?"

    player = gets.chomp.downcase
    computer = ["rock", "paper", "scissors"].sample

    if (player == "rock" && computer == "scissors") ||
        (player == "scissors" && computer == "paper") ||
        (player == "paper" && computer == "rock")
            player_score += 1
            puts "Player wins woohoo!"

    elsif (computer == "rock" && player == "rock") ||
        (computer == "scissors" && player == "scissors") ||
        (computer == "paper" && player == "paper")
            puts "It's a draw"

    else 
        computer_score += 1
        puts "Computer wins, bad luck!"
    end

    puts "Player chose: #{player}, Computer chose: #{computer}"
    puts "Our current score is: #{player_score}, Computer score is #{computer_score}"
end

if computer_score == 5
    puts "Computer won and Player lost, not really a surprise."

else puts "You won, you have restored my faith in humanity.. a little!"
end



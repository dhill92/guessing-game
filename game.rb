require 'pry'
puts "Let's play a game! How difficult would you like it to be? Easy or hard?"
difficulty = gets.chomp.to_s
score = 1

if difficulty == "easy"
  puts "I am thinking of a number between 1 and 10. Try to guess what it is."
  number = rand(10)+1
  binding.pry
  guess = gets.chomp.to_i
  while guess != number
    puts "Wrong! Guess again!"
    score += 1
    guess = gets.chomp.to_i
    continue = true
    if guess == number
      puts "Good job!"
      puts "Your score was #{score}"
    end
  end
end

if difficulty == "hard"
  puts "I am thinking of a number between 1 and 20. Try to guess what it is."
  number = rand(20)+1
  guess = gets.chomp.to_i
  while guess != number
    puts "Wrong Wrong Wrong! Guess again!"
    score += 1
    guess = gets.chomp.to_i
    continue = true
    if guess == number
      puts "Good job!"
      puts "Your score was #{score}"
    end
  end
end

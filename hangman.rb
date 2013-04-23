
def prompt()
	print "> "
end

def guess_word()
	puts "Do you want to guess the word?"
	print prompt
	guess_word = gets.chomp()

	if wordList[n].to_s == guess_word.to_s
				puts "you win!"
	else
		puts man_drawing[i]
	end
end


def start()
	wordList = ["abracadabra", "experimental", "lynx", "bicycle"]
	n = rand(wordList.length)
	i = 0 # number of wrong guesses remaining
	puts "we're going to play a game of hangman"
	puts "The word has #{wordList[n].length} letters"

	man_drawing = ["\t\t 0", "\t\t\\", "\t\t\\ //","\t\t|","\t\t/","\t\t/ \\"]	
	next_move = []

	while i < 6	
		if next_move.length > 0
			puts wordList[n].gsub(/[^#{next_move.join()}]/, " _")
		else
			puts wordList[n].to_s.gsub(/[a-z]/, " _")
		end

		puts "Pick a letter"
		print prompt
		this_guess = gets.chomp()
			#guesses.push.next_move
		next_move << this_guess

		if wordList[n].include? next_move.last
			# do nothing
		elsif wordList[n].include? next_move.to_s.all
			puts "you win!"
		else
			i += 1
			i.times do |x|
			puts man_drawing[x]
				end		
		end
	end

	guess_word()
end

start()









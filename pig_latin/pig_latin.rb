# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word. Ex. egg -> eggay, inbox -> inboxay eight -> eightay
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
# Ex. happy -> appyhay, duck -> uckday, glove -> oveglay

class PigLatin

	def initialize(word)
		@word = word
		@vowel = %w{a e i o u}
	end

	def piggy
		if vowel_checker?
			vowel_transalator
		else
			consonant_transalator
		end
	end

	def vowel_checker?
		if @vowel.include?(@word[0])
			true
		else
			false
		end
	end

	def vowel_transalator
		@vowel_sound = @word + "ay"
	end

	def consonant_transalator
		@consonant_sound = @word[1..-1]+@word[0]+"ay"
	end

end


x = PigLatin.new("egg")
y = PigLatin.new("happy")
d = PigLatin.new("duck")
foo = PigLatin.new("apple")

puts x.piggy
puts y.piggy
puts d.piggy
puts foo.piggy

require './pig_latin.rb'

describe PigLatin do

	it 'for words that start with vowels, it adds an "ay" sound to the word. For example inbox -> inboxay' do	
	egg = PigLatin.new("egg")
	egg.piggy.should eq("eggay")
	end

	it 'for words that begin with consonant sound, move the consonant to the end of the word and add an "ay" sound to the end of the word.  For example duck -> uckday' do
	happy = PigLatin.new("happy")
	happy.piggy.should eq("appyhay")	
	end

end


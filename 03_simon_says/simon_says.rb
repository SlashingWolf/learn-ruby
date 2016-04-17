def echo(string)
	string
end
def shout(string)
	string.upcase
end
def repeat(string, num=2)
	string1 = string
	(num-1).times do 
		string = string + " " + string1
	end
	string
end
def start_of_word(string, index)
	string[0..index-1]
end
def first_word(string)
	string.split(" ")[0]
end
def titleize(string)
	string1 = string.split(" ")
	string1.each_with_index do |string, i|
		if(string[0] != 'o' && string[0] != 'a' && (string[0] != 't'|| i == 0))
		 string1[i] = string[0].upcase + string[1..string.length]
		else
			
		end
	end
	string1.join(" ")
end
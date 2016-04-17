def translate(string)
	string = string.downcase
	string = string.split(" ")
	string.each do |string|
		if string.start_with?('a','e','i','o','u')   
			string << "ay"
		else
			s = string.slice!(0)
			string << s
			if(s == "q" && string[0] == "u")
				s = string.slice!(0)
				string << s
			end
			while string[0].start_with?('a','e','i','o','u') == false
				s=string.slice!(0)
				string << s
				if(s == "q" && string[0] == "u")
					s = string.slice!(0)
					string << s
				end
			end
			string << "ay"
		end
	end
	string.join(" ")
end
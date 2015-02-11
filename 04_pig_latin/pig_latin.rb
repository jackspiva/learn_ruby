def translate(english)
    relevant_vowels = "a e i o"
    english = english.split(" ")
    pig_latin = english.map do |word|
        if relevant_vowels.include? word[0]
            word = word + "ay"
        else
            word = word.split("")
            until relevant_vowels.include? word[0]
                first = word.shift
                word.push(first)
            end
            word = word.join("") + "ay"
        end
    end
    pig_latin = pig_latin.join(" ")
    return pig_latin
end

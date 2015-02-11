def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, number = 2)
    result = ""
    i = 0
    loop do
        if (i < number)
            result += string
        end
        if (i < (number - 1))
            result += " "
        end
        i += 1
        break if i == number
    end
    return result
end

def start_of_word(word, num)
    result = ""
    word = word.split("")
    num.times do |i|
        result += word[i]
    end
    return result
end

def first_word(words)
    return (words.split(" "))[0]
end

def titleize(sentence)
    title = sentence.split
    title.each_index {|i| title[i] = title[i].capitalize unless "the and over".include? title[i] and i != 0}
    return title.join(" ")
end

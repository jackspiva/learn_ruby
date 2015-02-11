class Book
    attr_reader :title

    def title=(sentence)
        exceptions = "the a an and in of"
        title = sentence.split
        title.each_index {|i| title[i] = title[i].capitalize unless exceptions.include? title[i] and i != 0 and title[i] != "i"}
        @title = title.join(" ")
    end
end

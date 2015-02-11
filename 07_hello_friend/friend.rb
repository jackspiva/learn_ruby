class Friend
    def greeting(person = "")
        if person == ""
            return "Hello!"
        else
            return "Hello," + " " + person + "!"
        end
    end
end

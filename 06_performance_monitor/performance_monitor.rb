def measure(number = 1)
    total = 0
    number.times do
        start = Time.now
        yield
        finish = Time.now
        total += finish - start
    end
    return total / number
end

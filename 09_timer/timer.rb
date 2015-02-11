class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string
        hours = @seconds / (60 * 60)
        minutes = (@seconds - hours * 60 * 60) / 60
        seconds = @seconds - hours * 60 * 60 - minutes * 60
        return sprintf("%02d:%02d:%02d", hours, minutes, seconds)
    end
end

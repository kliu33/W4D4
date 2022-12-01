class Array
    def my_unique
        arr = []
        self.each do |i|
            arr << i if !arr.include?(i)
        end
        arr
    end

    def two_sum
        result_arr = []
        self.each_with_index do |num, idx|
            (idx+1...self.length).each do |jdx|
                if self[idx] + self[jdx] == 0
                    result_arr << [idx, jdx]
                end
            end
        end
        result_arr
    end
    
    def my_transpose
        resArray = Array.new(self.length) { Array.new(self.length) }
            self.each_with_index do |subarr, idx|
                subarr.each_with_index do |ele, jdx| 
                    resArray[jdx][idx] = ele
                end
            end
        return resArray
    end

    def stock_picker
        buy_day = 0
        sell_day = 0

        max_profit = 0

        (0...self.length).each do |idx|
            (idx+1...self.length).each do |jdx|
               if self[jdx] - self[idx] > max_profit
                buy_day = idx
                sell_day = jdx
                max_profit = self[jdx] - self[idx]
               end
            end
        end
        return [buy_day, sell_day]

    end

end

class Towers

    def initialize(size=4)
        @size = size
        @arr = [[],[],[]]
    end

    def start_game
        @size.downto(1).each do |ele|
            @arr[0] << ele
        end
    end

    def print 
        @arr.each do |subarr|
            p subarr
        end
    end

    def get_move
        begin
        puts "Move from here?"

        start = gets.chomp.to_i

        puts "Move to here?"

        fin = gets.chomp.to_i
        if !@arr[fin].empty?
            if @arr[start][-1] > @arr[fin][-1]
                raise "Invalid Move"
            end
        end
            rescue 
            retry
        end

        @arr[fin].push(@arr[start].pop)
    end


    def game_over?
        @arr[2].length == @size
    end

end
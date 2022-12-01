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
end
require "test"
require "rspec"


describe Array do
    describe "#my_unique" do
        subject (:array) { [1,2,3,4,5,5] }
        context "it takes in an array" do
            it "returns a new array" do
                expect(array.my_unique).to eq([1,2,3,4,5])
            end
        end
    end

    describe "#two_sum" do
        subject (:array) {[-1, 0, 2, -2, 1]}
        context "it takes in an array" do
            it "returns a nested array" do
                expect(array.two_sum).to eq([[0,4], [2,3]])
            end
        end
    end

    describe "#my_transpose" do
        subject (:matrix) { [[0,3,6], [1,4,7], [2,5,8]] }
        context "it takes in a matrix" do 
            it "returns the matrix transposed" do 
                expect(matrix.my_transpose).to eq([[0,1,2], [3,4,5], [6,7,8]] )
            end
        end
    end

    describe "stock_picker" do 
        subject (:array) { [1,4,5,2,4,7,9,3] }
            context "it takes in a array" do
                it "returns the pair of days to be most profitable" do
                expect(array.stock_picker).to eq([0,6])
            end
        end
    end

    describe "towers_of_kanoi" do 
        subject (:matrix) { [[4,3,2,1],[],[]] }
        context "should move elements one by one" do 
            context "should move all elements to the last tower in order" do

            end

                it "should not move large discs on top of smaller discs" do
                    expect{[[4,3],[2,1],[]]}.move(1, 2).to raise_error("Invalid Move")
            end
        end
    end
end


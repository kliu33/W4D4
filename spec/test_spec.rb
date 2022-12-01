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

end
require "TDD"

describe "uniq" do 
    it "should accept array as arg" do
        expect{uniq([1,2,1,3,3])}.to_not raise_error
    end
    it "should remove dupliate elements and return new array" do
        expect(uniq([1,2,1,3,3])).to eql([1,2,3])
    end
end

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]

describe "two_sum" do
    it "raise error when arg is string" do
        expect{two_sum("cat")}.to raise_error(RuntimeError)
    end
    it "should return 2D array with each subarray containing the indices of the element of the array in which two elements sum to zero and sorted dictionary-wise " do
        expect(two_sum([-1, 0, 2, -2, 1])).to eql([[0,4],[2,3]])
    end

end

describe "my_transpose" do
    it "accepts a 2D array as an argument" do
        expect{my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])}
    end
    it "should return a 2D array converted between the row and column of the original array" do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eql([[0, 3, 6],[1, 4, 7], [2, 5, 8]])
    end
    it "should raise an error if the argument passed in is not a 2D array" do
        expect{my_transpose([1,2,3]) }.to raise_error 
    end
end

describe "stock_picker" do 
    it "accepts an arrany as an argumet" do 
        expect{stock_picker([5, 1, 3, 6, 10, 0, 0])}.to_not raise_error
    end
    it "returns the indicies in an array corresponding to the most profitable day to buy and sell the stock" do 
        expect(stock_picker([5, 1, 3, 6, 10, 0, 0])).to eql([1,4])
    end
end
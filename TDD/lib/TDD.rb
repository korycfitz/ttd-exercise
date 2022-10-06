def uniq(arr)
    new_hash= {}

    arr.each do |ele|
        new_hash[ele]=true
    end
    new_hash.keys
end

# p uniq([1,1,2,3])

def two_sum(arr)
    new_array=[]
    raise RuntimeError if !arr.is_a? Array
    (0...arr.length).each do |idx1|
        (idx1+1...arr.length).each do |idx2|
            new_array<<[idx1, idx2] if arr[idx1]+ arr[idx2]==0
        end
    end
    new_array
end

# p two_sum("cat")

def my_transpose(arr)
    new_arr = []
    raise "asefjasjgag" if arr.is_a? Array && !arr[0].is_a? Array
    (0...arr.length).each do |row|
        subarray=[]
        (0...arr.length).each do |col|
             subarray<<arr[col][row]
        end
        new_arr<< subarray
    end
    new_arr
end

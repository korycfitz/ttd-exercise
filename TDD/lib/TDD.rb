require 'byebug'
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
    if arr.is_a? Array
        if !arr[0].instance_of? Array
            raise "Error"
        end
    end

    (0...arr.length).each do |row|
        subarray=[]
        (0...arr.length).each do |col|
             subarray<<arr[col][row]
        end
        new_arr<< subarray
    end
    new_arr
end

def stock_picker(arr)
    new_arr = []
    (0...arr.length).each do |start_idx|
        (start_idx+1...arr.length).each do |end_idx|
            if arr[start_idx] < arr[end_idx]
                debugger
                buy_day = [arr[start_idx], start_idx]
                end_day = [arr[end_idx], end_idx]
                new_arr << buy_day + end_day
            end
        end
    end
    new_arr.max
    
end
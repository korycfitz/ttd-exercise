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
    # combos = arr.combination.to_a
    # combos.select(|combo| combo.sum==0)
# p two_sum("cat")
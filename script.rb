#fibonacci
def fibs(num)
    arr = [0,1]
    if num == 0
        arr = [0]
    elsif num == 1
        arr = [0,1]
    else
        for i in 2..num
            arr[i] = arr[i-1] + arr[i-2]
        end
    end
    arr
end

def fibs_rec(num)
    if num == 0
       0
    elsif num == 1
        1
    else
        fibs_rec(num - 1) + fibs_rec(num - 2)
    end
end
#merge sort
def merge_sort(array)
    return array if array.length < 2

    middle = array.length/2
    
    left_half = merge_sort(array[(0..middle-1)])
    right_half = merge_sort(array[(middle..-1)])

    merge(left_half,right_half)
end

def merge(left_half, right_half)
    if left_half.empty?
        right_half
    elsif right_half.empty?
        left_half
    elsif left_half.first < right_half.first
        [left_half.first] + merge(left_half[1..left_half.length], right_half)
    else
        [right_half.first] + merge(left_half,right_half[1..right_half.length])
    end
end

p fibs(8) # [0,1,1,2,3,5,8,13,21]
p fibs_rec(8) # 21
p merge_sort([0,1,8,3,11,5,2]) # [0,1,2,3,5,8,11]

def bubble_sort(array)
    unsorted = true;
    
    while unsorted do
        i = 0
        unsorted = false
        (array.length-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i], array[i+1]
                unsorted = true
            end 
        end
        i += 1
    end
    print array
end

bubble_sort([4,3,78,2,0,2])

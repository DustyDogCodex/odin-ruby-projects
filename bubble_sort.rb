def bubble_sort(array)
    bubbled = true
    while bubbled do
        i = 0
        bubbled = false
        while i < (array.length - 1)
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i], array[i+1]
                bubbled = true
            end 
            i += 1
            puts bubbled
        end
    end
    print array
end

bubble_sort([4,3,78,2,0,2])

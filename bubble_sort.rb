def bubble_sort(init_array)

    sorted_array = []
  
    init_array.length.times do
        #do a comparison one less time than the length of the array, which will change every iteration
        for i in 1..(init_array.length - 1)
            #set comparing array positions to variables
            first_compare = init_array[i-1]
            second_compare = init_array[i]
            #compare first_compare with second_compare
            if first_compare > second_compare
                #swap if first compare is greater than second_compare
                #first_compare = init_array[i]
                #second_compare = init_array[i-1]
                init_array[i-1] = second_compare
                init_array[i] = first_compare
            end
        end
    #after every bubble sort iteration, pop last element into new Array
    sorted_array.unshift(init_array.pop)
    end
    return sorted_array
  end
  
  print bubble_sort([4,3,78,2,0,2])
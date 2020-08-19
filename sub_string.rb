def dictionary(string, dict)
    #create empty hash
    dict_hash = {}
    #split string by words
    string_array = string.split(' ')
    #compare string to each dict item by enumerating
    #if any part of string shows up in dict list, add that dict word to a hash
    dict.each do |entry|
      #iterate through each element in string_array
      string_array.each do |str_piece|
      #if string piece includes entry
        
        if str_piece.include?(entry)
          #if key hasn't yet been created, create and set value to one
          if dict_hash[entry] == nil
            dict_hash[entry] = 1
          #if it has, add one to key
          else
            dict_hash[entry] += 1
          end
        end
      end
    end
    return dict_hash
  end
  
  
  
  dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  dictionary("Howdy partner, sit down! How's it going?", dict)

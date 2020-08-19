def caesar(string, shift)
    ascii_array = string.codepoints
    new_array = ascii_array.map { |c| c + shift}
    checked_array = new_array.map do |c|
      if shift > 0
        if c > 90 && c < 97
          c = c - 26
        elsif c > 122
          c = c - 26
        end
      end
      if shift < 0
        if c < 65
          c = c + 26
        elsif c > 90 && c < 97
          c = c + 26
        end
      end
      c
    end
    return checked_array
end

print caesar("z", 1)
def palindrome?(string)
  test = string.downcase
  test = test.gsub(/\W/i,'')
  return test == test.reverse
end

def count_words(string)
#store words along with count in h
h = Hash.new()
#count words in string
string.downcase.gsub(/\w+/).each do |w|
    if h.has_key?(w)
      c = h[w]
      h[w] = c += 1
    else
      h[w] = 1
    end
  end
return h
end


phoneNumberTest = "0151-222-4618"
phoneNumber = /^\d{3,4}-\d{3}-\d{4}/

word1 = "A man, a plan, a canal -- Panama"
word2 = "Madam, I`m Adam!"
word3 = "dog god"
word4 = "doo bee doo bee doo"



def count_words(string)
#store words along with count in h
h = Hash.new()
#print string + "\n"
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


count_words(word4)

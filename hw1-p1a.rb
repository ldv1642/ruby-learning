def palindrome?(string)
  test = string.downcase
  test = test.gsub(/\W/,'')
  #print test == test.reverse
  return test == test.reverse
end



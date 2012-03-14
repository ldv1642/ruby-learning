phoneNumberTest = "0151-222-4618"
phoneNumber = /^\d{3,4}-\d{3}-\d{4}/

word1 = "A man, a plan, a canal -- Panama"
word2 = "Madam, I`m Adam!"
word3 = "dog god"
word4 = "doo bee doo bee doo"

string = "the time is 8:34am, you can come over then or 11:34pm. Your choice."
pattern = /(\d\d?):(\d\d)\s*([ap])m/

print string.to_enum(:scan, pattern).map { Regexp.last_match }


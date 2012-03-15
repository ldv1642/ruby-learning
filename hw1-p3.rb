words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 
'scream', ''] 

store = []
counter = 0
found = 1

words.select do |w|
  w #only work with words, "" will be set for already matched words
end.each do |d|
  print "added #{d}\n"
  store.insert(counter,[d])
  print "looking for matches for #{d}\n"
  words.each do |ww|#look for any matches
    if !(store.include? ww)#check for duplicates
      if d.chars.sort.join == ww.chars.sort.join#check for match, add if found
        print "found match in #{ww}\n"
        store[counter].insert(found,ww)
        found += 1
      else
      end
    else
    end
  end
  counter += 1
end

print store

def combine_anagrams(words)
  sortedGroups =[]
  counter = 0
  found = 1
  
  words.each do |w|
    if w != ""
      sortedGroups.insert(counter,[w])
      puts "added new word #{w}"
      print "#{sortedGroups}\n" 
      
      words.each do |ww|
        print "comparing #{w} and #{ww}\n"
        if w.include? ww
          
        elsif w.chars.sort.join == ww.chars.sort.join
          print "inserting #{ww}\n"
          sortedGroups[counter].insert(found,ww)
          found += 1
          words.index w = ""
        end
      end
      puts "getting next word"
      counter +=1
    end
  end
end
#combine_anagrams(words)




words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 
'scream'] 

def combine_anagrams(words)
  sortedGroups =[]
  counter = 0
  
  words.each do |w|
    sortedGroups.insert(counter,[w])
    print "#{sortedGroups}\n" 
    words.each do |ww|
      print "comparing #{w} and #{ww}\n"
      if w == ww;
        words.delete(w)
        
      elsif w.chars.sort.join == ww.chars.sort.join
        print "#{sortedGroups}\n"
        sortedGroups[counter].insert(sortedGroups.length,ww)
        words.delete(w)

      end
    end
    counter +=1
  end
print sortedGroups
/#
  words.select do |w|
     w
  end.map do |w|
    w = w.chars.sort.join
    words.select do |ww|
      if ww.chars.sort.join == w
        puts w
      end
    end
  end
  #/
              
  #print sorted
end

combine_anagrams(words)


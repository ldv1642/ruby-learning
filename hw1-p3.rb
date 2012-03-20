words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 
'scream',] 

def combine_anagrams(words)
  h = Hash.new([])
  words.each do |elt|
    h[elt.chars.sort.join] += [elt]
  end
  return h.values
end
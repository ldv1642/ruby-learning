contents = IO.read("README").split(/\W+/).
            select do |w|#returns a new collection where evaluation of block
              #evals to true
              w =~ /^[aeiou]/i
            end.map do |w|#returns a new collections by applying block
              #to each element w
              w.upcase
            end.uniq.sort #remove duplicates and sort
puts contents


#print contents
#IO.write("README",contents)

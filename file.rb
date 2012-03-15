contents = IO.read("README").split(/\W+/).
            select do |w|
              w =~ /^[aeiou]/i
            end.map do |w|
              w.upcase
            end.sort
puts contents


#print contents
#IO.write("README",contents)

class Fixnum
  def method_missing(method_id,*args)
    name = method_id.to_s #convert meth_id from a symbol
    if name =~ /^(second|minute|hour|day|year)$/ #regex for either of these 3
      self.send(name+'s') #send to receiver, self with names + s
    else
      super #pass up to superclass original method call to look
      #for a valid reciever
    end
    
  end
  def seconds; self; end
  def minutes; seconds * 60; end
  def hours; minutes * 60; end
  def days; hours * 24; end
  def years; days * 365; end
  
  def ago
    Time.now - self
  end
  def to_go
    Time.now + self
  end
end

puts 23.year.to_go

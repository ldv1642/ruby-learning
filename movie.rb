class Movie
  #class variable
  @@include_movie = false
  #class method
  def self.include_year=(new_value)
    @@include_movie = new_value
  end

  def full_title
    if @@include_movie
      #use self instead of @title to create another layer of
      #encapsulation. allow us to change the getter/setter later if needed
      "#{self.title} #{self.year}"
    else
      self.title
    end
    
  end
  #default constructor
  def initialize(title,year)
    @title = title
    @year = year
  end
  
  
  def change_title(new_title)
    @title = new_title
  end
  
  #use attr_accessor instead of manually making year & =year if 
  #simple getter/setter is required.
  #attr_reader = getter
  #attr_writer = setter
  #this is a form of metaprogramming, creating code at runtime
  attr_accessor :title
  attr_accessor :year
  
 /# 
  def year
    @year
  end
  
  def year=(new_year)
    @year = new_year
  end
  #/
  
end
Movie.include_year=true
b = [23,4,6]
m = Movie.new("Cool movie", "1987")
puts m.full_title
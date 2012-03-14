class Movie
  #class variable
  @@include_movie = false
  #class method
  def Movie.include_year=(new_value)
    @@include_movie = new_value
  end
  
  def full_title
    if @@include_movie
      "#{self.title} #{self.year}"
    else
      self.title
    end
    
  end
  
  def initialize(title,year)
    @title = title
    @year = year
  end
  
  def title
    @title
  end
  
  def title=(new_title)
    @title = new_title
  end
  
  def year
    @year
  end
  
  def year=(new_year)
    @year = new_year
  end
  
end

m = Movie.new("Cool movie", "1987")
Movie.include_year=true
puts m.full_title

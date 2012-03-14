def calcProtein(food,p,weight,price)#p = protein/100g, weight = product as g, price as pounds eg. calcProtein(17.8,520,2)
  c = price/((weight/100.0) * p) #total protein
  puts "#{food} is #{format("%.3f",c)}p per g of protein"
end

calcProtein("white fish", 17.8,520,2)
calcProtein("whey protein", 78.4,2500,25.99)
calcProtein("chicken", 19,1000,3.99)
calcProtein("porridge", 11,1000,0.75)

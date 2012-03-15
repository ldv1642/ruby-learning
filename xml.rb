require 'builder' #ran gem install builder to install

b = Builder::XmlMarkup.new({:indent => 2})
b.person(:sex => "manager") do
  b.name "Daniel Pedder"
  b.contact do
    b.phone "01512221346"
    b.contact "dan@dan.com"
  end
end

print b
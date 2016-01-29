Customer = Struct.new( "Customer", :name, :address, :zip )  
joe = Customer.new( "Joe Smith", "123 Maple, Anytown NC", "12345" )  
puts joe.name  #» "Joe Smith"  
puts joe.zip  #» 12345  

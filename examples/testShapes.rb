require_relative 'rectangle'
require_relative 'square'
require_relative 'circle'

r1 = Rectangle.new(3, 4)
r2 = Rectangle.new(5, 7)
p r3 = r1 + r2

s1 = Square.new(6)
s1.doubleSize()
r4 = r1 + s1;
c1 = Circle.new(7)


out = <<"OUT"
Rectangle 1's area is: #{r1.area()}
Rectangle 1's circumference is: #{r1.circumference()}
Rectangle 2's area is: #{r2.area()}
Rectangle 2's circumference is: #{r2.circumference()}
Creating Rectangle 3 from rectangles 1 and 2
Rectangle 3's area is: #{r1.area() + r2.area()}
Rectangle 3's circumference is: " + r3.circumference()
Doubling the size of rectangle 1
Rectangle 1's area is now: #{r1.doubleSize()}
Rectangle 1's circumference is now: #{r1.circumference()}
Square 1's area is: " + s1.area()
Square 1's circumference is: " + s1.circumference()
Doubling the size of square 1
Square 1's area is now: " + s1.area()
Square 1's circumference is now: " + s1.circumference()
Creating Rectangle 4 from rectangle 1 and square 1
Rectangle 4's area is: " + r4.area()
Rectangle 4's circumference is: " + r4.circumference()
Circle 1's area is: " + c1.area()
Cirlce 1's circumference is: " + c1.circumference()
Circle 1 bigger than Rectangle 3?(c1 > r3)
Circle 1 bigger than Square 1 + Rectangle 3? (c1 > (s1 + r3))
OUT
puts out
#~ print("Rectangle 1's area is: " + r1.area().to_s + "\n");
#~ print("Rectangle 1's circumference is: " + r1.circumference().to_s + "\n\n");
#~ print("Rectangle 2's area is: " + r2.area().to_s + "\n");
#~ print("Rectangle 2's circumference is: " + r2.circumference().to_s + "\n\n");
#~ print("Creating Rectangle 3 from rectangles 1 and 2\n");
#~ print("Rectangle 3's area is: " + r3.area().to_s + "\n");
#~ print("Rectangle 3's circumference is: " + r3.circumference().to_s + "\n\n");
#~ print("Doubling the size of rectangle 1\n");
#~ print("Rectangle 1's area is now: " + r1.area().to_s + "\n");
#~ print("Rectangle 1's circumference is now: " + r1.circumference().to_s + "\n\n");
#~ print("Square 1's area is: " + s1.area().to_s + "\n");
#~ print("Square 1's circumference is: " + s1.circumference().to_s + "\n\n");
#~ print("Doubling the size of square 1\n");
#~ print("Square 1's area is now: " + s1.area().to_s + "\n");
#~ print("Square 1's circumference is now: " + s1.circumference().to_s + "\n\n");
#~ print("Creating Rectangle 4 from rectangle 1 and square 1\n");
#~ print("Rectangle 4's area is: " + r4.area().to_s + "\n");
#~ print("Rectangle 4's circumference is: " + r4.circumference().to_s + "\n\n");
#~ print("Circle 1's area is: " + c1.area().to_s + "\n");
#~ print("Cirlce 1's circumference is: " + c1.circumference().to_s + "\n\n");
#~ print("Circle 1 bigger than Rectangle 3?\n");
#~ print(c1 > r3);
#~ print("\nCircle 1 bigger than Square 1 + Rectangle 3?\n");
#~ print(c1 > (s1 + r3));
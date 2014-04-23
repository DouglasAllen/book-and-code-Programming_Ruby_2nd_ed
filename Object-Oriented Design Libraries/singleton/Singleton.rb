require 'singleton'
class MyClass
  include Singleton
end
p a = MyClass.instance	#=»	#<MyClass:0x401b4ca8>
p b = MyClass.instance	#=»	#<MyClass:0x401b4ca8>
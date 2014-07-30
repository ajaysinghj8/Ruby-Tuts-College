module Mod
  class Array
    def show
      puts "hello"
    end
  end
end


x= Mod::Array.new

puts x.class
x.show
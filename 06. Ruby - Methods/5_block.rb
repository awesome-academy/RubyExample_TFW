puts "1. Example with upto method"
1.upto(10){|x| puts " #{x}"}

puts "2. Example with hello method"

def hello(&block)
  yield
end
  

hello do 
  puts " Implicit block"
end

#Result
=begin
1. Example with upto method
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
2. Example with hello method
 Implicit block
=end
puts "1. Excute square"
square = Proc.new do |n|
  n ** 2
end
puts " 2**2 = #{square.call (2)}"

puts "2. A block is just a Proc!"
def what_am_i(&block)
  block.class
end
puts what_am_i {}

#Result
=begin
1. Excute square
 2**2 = 4
2. A block is just a Proc!
Proc
=end
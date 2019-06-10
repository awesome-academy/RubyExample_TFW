class School
  @@no_off_students = 650
end

class V < School
  @@no_off_students = 75
end

class VI < School
  @@no_off_students = 80
end

puts School.class_eval("@@no_off_students")
puts V.class_eval("@@no_off_students")
puts VI.class_eval("@@no_off_students"

#Result
=begin
80
80
80
=end

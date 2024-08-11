#------------------------------------------------------------------------------------------------------------------------
puts "ARRAYS\n\n"

nums=[1,2,3]
names = ["ashu", "jaiswal", "joe", "biden"]

puts names
puts "#{nums}"
print names

arr2 = Array.new([4,5,6])
puts arr2
puts "#{names}"

temp = Array.new(5, "hello")
puts temp
puts "#{temp}"

tmp = Array.new(10, 55)
puts "#{tmp}"

teemp = Array(20 .. 30)
puts "#{teemp}"

a = Array.new([10,12,14,15,90])
puts a.length
puts a.size
puts a.first, a.last, a.min, a.max, a[a.length/2]

puts a.to_s #to convert into string

a.push(60)
a.push(234)
puts "#{a}"
a.pop
puts "#{a}"

#------------------------------------------------------------------------------------------------------------------------
#EACH_WITH_INDEX

a.each_with_index { |val, indx| puts "The value at index #{indx} is #{val}"}


#DELETE_AT

puts "#{a}"
a.delete_at(2)
puts "#{a}"
a.delete(90)
puts "#{a}"

puts "\n\nSTRINGS & HASHES\n\n"
a = "hello ruby"
puts a

b=String.new("hello again ruby")
puts b

puts a==b  #compares length and returns value

puts a.length
puts b.size

c=[1,2,3,4,5]
puts c.include?(2)
puts c.include?(22)

puts a.include?("f")
puts b.include?("agi"), b.include?("y")

puts b[b.length-2], b[-1], a[-1]
print a[-1],a[-2],a[-3]


puts a.upcase
d=String.new("Ok, I learn't something something today on 11-Aug-2024")
puts d.downcase

puts a.upcase
puts a
puts b.upcase!  #exclamation mark is inbuilt operation which convverts and stores in it
puts b

d = d.upcase
puts d



#------------------------------------------------------------------------------------------------------------------------
print "\n\n HASH MAPS \n\n"

grades = Hash.new

grades[10]= "A+"
grades[9]= "A"
grades[8]= "B"

puts grades, grades[9]
puts grades[5]  #grades[5] is not defined so no output obtained

grades.default = "Improve"  #Now all other undefined values are set to ==> "Improve"
puts grades[2], grades[4]

aa = Hash.new
bb = Hash.new
aa[0] = 'A'
bb[0] = 'A'

puts aa
puts bb
puts aa==bb

aa[1] = 'B'
bb[1] = 'C'
puts aa
puts bb
puts aa==bb

puts grades.length
puts grades.size

x=grades.to_a
y=grades.to_s
puts "#{x}"
puts "#{y}"

puts grades.has_value?('A')   #Checks if the hash map has "A" as a value
puts grades.has_key?(10)   #Checks if the hash map has 10 as a key


s = "Hello World"
ss = Array.new(["creating an array"])

freq = Hash.new
freq.default = 0
s.each_char do |val|
    freq[val] += 1
end
puts freq
puts s, s[-3]
puts ss
puts "#{ss[2]}"   #not working why???



#------------------------------------------------------------------------------------------------------------------------
puts "\n\nDATE & TIME\n"

require 'date'          #IMPORTS DATE 

datee = Date.parse('10 December 2011')

puts datee          # gives output in YYYY/MM/DD
puts datee.year     # gives year
puts datee.mon      # gives month as output
puts datee.mday     # mday means month's day i.e., 10th
puts datee.wday     # wday means week's day i.e., 6th
puts datee.yday     # wday means year's day i.e., 6th

neewdate = datee + 5        # adds 5 days ahead
puts neewdate.strftime('%a %d %b %y')       # output is Thu 15 Dec 11 because of "lower case" used for notation
puts neewdate.strftime('%A %d %B %Y')       # output is Thursday 15 December 2011 because of "upper case" used for notation

neewdate = neewdate - 15        # goes 15 days behind
puts neewdate.strftime('%A %d %B %Y')

#------------------------------------------------------------------------------------------------------------------------
puts "\n\n TIME \n"

time_var = Time.new(2024,10,12,6,5,10, '+10:12:22')
puts time_var
puts time_var.hour
puts time_var.min
puts time_var.sec

puts Time.now

puts "#-----------------------------------------------------------------------------------------------------------------------"

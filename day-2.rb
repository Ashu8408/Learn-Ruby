puts "Conditions and Operators"

c= true && false
a=9
puts c
puts 3 & 3
puts "#{c}+9,...#{(5>2 && 9<11)}"



#IF ELSE STATEMENT

grade=88
if grade >=90
    puts "A+"
elsif grade>=80 && grade<90
    puts "A"
else
    puts "B"
end


#WHILE LOOP

i=0
while i <= 10
    puts i
    print "#{i}" 
    i+=1
end


#FOR LOOP

puts (1 .. 10).to_a 
# two dots means include the last value
#to_a means it will convert the range to array

puts (11 ... 20).to_a 
# three dots means exclude the last value

for i in (1 .. 6).to_a
    puts i
end
for i in (1 ... 6).to_a
    puts i
end


# CASE STATEMNT

grade = 101

case grade
when 90..100
    puts "A+"
when 80...90
    puts "A"
when 70...80
    puts "B"
else
    puts "improve"
end

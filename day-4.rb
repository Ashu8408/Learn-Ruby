#------------------------------------------------------------------------------------------------------------------------
puts "CLASSES & OBJECTS\n"


class Human
    def evolve
        puts "evolution successful"
    end

end


class Person < Human
    @@persons = 0       # these belongs to class
    def initialize(id,name,age)
        @id = id
        @name = name
        @age = age
        @@persons+=1
    end

    def intro
        puts "My name is #{@name} and i'm #{@age} years old"
    end

    def self.getPersonCount
        return @@persons
    end

    def evolve      # here the Person class has it's own evolve constructor so the inherited evolve will not be called
        puts "Persons evolution here"
    end

end

p1 = Person.new(1001, "Evofox-Red", 22)
p1.evolve
#p2 = Person.new(1002, "Evofox-Green", 23)
#p2 = Person.new(1003, "Evofox-Blue", 24)
#p1.intro
#p2.intro
puts Person.getPersonCount


class Box
    def initialize(h, w)
        @height =h
        @width = w
    end
    
    def getHeight       
        return @height
    end

    def getWidth        # setter
        return @width
    end

    def setHeight(h)        # getter
        @height = h
    end

    def setWidth(w)
        @width = w
    end

    def getArea
        return @height * @width
    end

    #private :getHeight, :getWidth, :setHeight, :setWidth
    public :getArea

end

b1 = Box.new(2,4)
puts b1.getArea

b1.setHeight(20)
b1.setWidth(15)
puts b1.getArea

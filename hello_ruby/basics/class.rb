class Cat 
    attr_accessor :name
end
kitty = Cat.new
kitty.name = "Nancy"
puts kitty.name

class Dog
    def initialize(name, gender)
        @name = name
        @gender = gender
    end

    def eat(food)
        puts "#{food} 好好吃，汪！"
    end

    def say
        puts "我的名字是 #{@name}, 我的性別是 #{@gender}"
    end

    def name
        @name
    end

    # 另外撰寫方法來改變實體變數
    def name=(new_name)
        @name = new_name
    end

    def gender 
        @gender
    end
end

boen = Dog.new("伯恩山的第一隻狗", "male")
boen.eat("骨頭")
boen.say
shib = Dog.new("柴柴", "female")
shib.eat("狗食")
shib.say
print shib.name, shib.gender

shib.name = "我是改名的柴柴！"
puts shib.name

class Sheep
    attr_accessor :name
    attr_accessor :gender

    def initialize(name, gender)
        @name = name
        @gender = gender
    end

    def say
        puts "我的名字是 #{@name}, 我是一隻羊！ 我的性別是 #{@gender}"
    end
end

fat = Sheep.new("fat fat", "male")
fat.say
fat.name = "slim fat"
fat.gender = "female"
fat.say




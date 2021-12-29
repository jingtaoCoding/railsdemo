module Demo 
    Version = "1.0"

    # A module function example  
    def test_mod
        put "test module fuction "
        "this is a module function" 
    end 
    module_function :test_mod # 指定 module function

    def hello
        puts "hello" 
        "hello"
    end 
    module_function :hello # 指定 module function


    # A class example 
    class Dog
        attr_accessor :age, :name  

        def initialize(name: "default", age: 2)
            @name = name
            @age = age # default 
        end 

        def bark 
            puts "barking"
        end 
    end 

    # Class 
    class Deck
        # 9♣ 9♠ 9♦ 9♥ 
        #RD,RS,BD, BS 
        attr_reader :cards

        def initialize
            #'♣', '♠', '♦', '♥',
            @cards = [ 
                'A♣', 'A♠', 'A♦', 'A♥',
                'K♣', 'K♠', 'K♦', 'K♥',
                'Q♣', 'Q♠', 'Q♦', 'Q♥',
                '7♣', '7♠', '7♦', '7♥',    
                '8♣', '8♠', '8♦', '8♥',
                '9♣', '9♠', '9♦', '9♥'].uniq 
            
            shuffle()
        end 

        def shuffle
           n = @cards.size 
           100.times do
            x = rand(0..n-1)
            y = rand(0..n-1)
             @cards = swap(@cards, x, y)
           end
           @cards   
        end 

        private

        def swap(array, x, y)
            array[x], array[y] =  array[y], array[x] 
            array
        end 

    end 

end 
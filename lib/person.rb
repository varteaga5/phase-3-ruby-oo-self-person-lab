# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness -= 2)
            person.happiness=(person.happiness - 2)
            return 'blah blah partisan blah lobbyist' 
        
        elsif topic == "weather"
            self.happiness=(@happiness += 1)
            person.happiness=(person.happiness + 1)
            return 'blah blah sun blah rain' 

        else 
            return 'blah blah blah blah blah' 
        end
        
    end

    def call_friend(person) 
        # passing in the @variable to self.happiness because we want to update that variable by the given integer for example 3 but we also want to maintain the upper and lower limits of happiness levels
        self.happiness=(@happiness += 3)
        person.happiness=(person.happiness + 3)

        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return '♪ another one bites the dust ♫'

    end

    def take_bath
         self.hygiene=(@hygiene += 4)
         return '♪ Rub-a-dub just relaxing in the tub ♫'
        
    end

    def get_paid(pmt)
        @bank_account += pmt
        return "all about the benjamins"
    end

    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end

    def happy?
        if @happiness > 7
            return true
        end
        return false
    end

    def hygiene=(hy_level)
        if hy_level < 0
            return @hygiene = 0
        end
        if hy_level > 10
            return @hygiene = 10
        end
         @hygiene = hy_level

    end

    def happiness
        @happiness
    end
    def happiness=(happy_level)
        # when using multiples if statements and no if else's you must use the return statement in the body. to get your desired result.
        if happy_level < 0
            return @happiness = 0
        end
        if happy_level > 10
            return @happiness = 10
        end
         @happiness = happy_level

    end

end
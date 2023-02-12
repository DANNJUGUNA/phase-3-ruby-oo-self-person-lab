# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account,:happiness,:hygiene
    def initialize (name,bank_account=25,happiness=8,hygiene=8)
        @name=name
        @bank_account=bank_account
        self.happiness=happiness
        self.hygiene=hygiene
    end
    def happiness=(number)
        @happiness=[[number,0].max,10].min
    end
    def hygiene=(number)
      @hygiene=  if (number>10)
                   10
      elsif (number<0)
        0
      else
         number
        end 
    end
     def happy?
        @happiness>7
     end
     def clean?
        @hygiene>7
     end
     def get_paid(amount)
       @bank_account+=amount
       return "all about the benjamins"
     end
     def take_bath 
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end
     def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
     end
     def call_friend(person)
        self.happiness+=3
        person.happiness+=3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
     end
     def start_conversation(person,topic)
        if (topic=="politics")
            person.happiness-=2
            self.happiness-=2
            return 'blah blah partisan blah lobbyist'
        elsif(topic=="weather")
            person.happiness+=1
            self.happiness+=1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah' 
        end
     end
end

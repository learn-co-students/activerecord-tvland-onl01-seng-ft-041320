class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor 
  
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
      end
    
      def build_show(attr)
        self.tap do |s|
          s.show = Show.new(attr)
          s.show.characters << self
        end
      end
      
    
      def build_network(args)
        self.tap do |s|
          s.show.network = Network.new(args)
        end
      end

end
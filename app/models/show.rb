class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #binding.pry
        self.actors.map do |actor|
            "#{actor.first_name} #{actor.last_name}"
            #binding.pry
        end
    end
end
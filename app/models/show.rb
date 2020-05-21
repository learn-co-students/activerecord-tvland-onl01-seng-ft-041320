class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        show_actors = []
        self.actors.each {|actor| show_actors << actor.full_name}

        show_actors
    end

    
end
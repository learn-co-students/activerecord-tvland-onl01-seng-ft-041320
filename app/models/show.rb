class Show < ActiveRecord::Base

    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.map do |character|
            Actor.find(character.actor_id).full_name
        end
    end
  
end
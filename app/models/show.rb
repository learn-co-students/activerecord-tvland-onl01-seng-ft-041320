class Show < ActiveRecord::Base
    belongs_to :actor
    belongs_to :network
    has_many :characters

    def actors_list
        self.characters.map do |c|
            "#{c.actor.full_name}"
        end
    end
end
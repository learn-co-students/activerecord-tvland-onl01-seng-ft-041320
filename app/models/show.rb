class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.characters.collect do |character|
      Actor.find(character.actor_id).full_name
    end
  end

end

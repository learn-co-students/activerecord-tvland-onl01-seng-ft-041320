class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    arry_characters = self.characters.collect {|character| character.name}
    arry_shows = self.shows.collect {|show| show.name}
    role = arry_characters.concat arry_shows
    roles << role.join(" - ")
    roles
  end
end
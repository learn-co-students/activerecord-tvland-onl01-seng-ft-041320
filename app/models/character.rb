class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show_name)
    self.show = Show.find_or_create_by(show_name)
    # binding.pry
  end
  
  def build_network(network_name)
    self.show.network = Network.find_or_create_by(network_name)
  end
end
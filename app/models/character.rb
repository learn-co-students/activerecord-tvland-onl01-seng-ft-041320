class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attr)
    #show = Show.new(attr)
    #show.characters << self
    #self
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
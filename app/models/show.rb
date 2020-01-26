class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.collect |actor|
      "#{x.first_name} #{x.last_name}"
    end
  end

end

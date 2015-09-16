class Waffle < ActiveRecord::Base

  # validates_presence_of :name
  validates :name, presence: true
  validates :photo, presence: true
  validates :toppings, presence: true

  #validates :name, :photo, :active, :toppings, presence: true

end

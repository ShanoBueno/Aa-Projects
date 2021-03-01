require 'action_view'

class Character < ApplicationRecord
  include ActionView::Helpers::DateHelper

  GENDER = ["M", "F", "NB"]
  ALIGNMENT = ["Lawful Good", "Chaotic Good", "Neutral", "Chaotic Evil", "Lawful Evil"]

  validates :name, :birthdate, :alignment, presence: true
  validates :sex, inclusion: GENDER
  validates :alignment, inclusion: ALIGNMENT

  has_many :weapons,
  foreign_key: :weapons_id,
  class_name: :Weapon

  def age 
    time_ago_in_words(date)
  end






  

end

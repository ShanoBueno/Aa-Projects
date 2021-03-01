require action_view

class Dog < ApplicationRecord
  ActionView::Helpers::DateHelper

  BREEDS = ["Wolf","Fox","Dog"]
  SEX = ["M","F"]

  validates :name, presence: true
  validates :breed, inclusion BREEEDS
  validates :sex, inclusion SEX

  def age
    time_ago_in_words(birthdate) 
  end
    
  



end

require action_view
class Cat < ApplicationRecord
  ActionView::Helpers::DateHelper

  COLORS = ["blue","yellow","purple","green"]
  SEX = ["m","f"]

  validates :name, :birth_date, presence:true
  validates :color, inclusion COLORS
  validates :sex, inclusion SEX

  def age
    time_ago_in_words(birth_date)
  end

  




end
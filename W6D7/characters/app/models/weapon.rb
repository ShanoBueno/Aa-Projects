class Weapon < ApplicationRecord
  WEAPON_TYPE = ["Pistol","Machine-Gun","Flame-thrower","Shotgun","Katana","Crossbow"]
  validates :type, :character_id, presence: true

  belongs_to :character,
  foreign_key: :character_id,
  class_name: :Character 




end

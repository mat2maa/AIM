class Order < ActiveRecord::Base

  belongs_to :airline
  belongs_to :aeroplane
  belongs_to :safety_card
  belongs_to :seat_layout

  has_many :seats, dependent: :destroy
  has_and_belongs_to_many :life_jackets

  attr_accessible :aeroplane_id, :airline_id, :name, :safety_card_id, :seat_layout_id, :console, :bin, :lavatory,
                  :open_exit_door, :closed_exit_door, :carpet_texture, :seats_attributes, :life_jacket_ids

  accepts_nested_attributes_for :seats

  has_attached_file :console
  has_attached_file :bin
  has_attached_file :lavatory
  has_attached_file :open_exit_door
  has_attached_file :closed_exit_door
  has_attached_file :carpet_texture

end

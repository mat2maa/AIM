class Order < ActiveRecord::Base

  belongs_to :airline
  belongs_to :aeroplane
  belongs_to :seat_layout

  has_one :safety_card, dependent: :destroy

  has_many :seats, dependent: :destroy
  has_many :consoles, dependent: :destroy
  has_many :bins, dependent: :destroy
  has_many :lavatories, dependent: :destroy
  has_many :open_exit_doors, dependent: :destroy
  has_many :closed_exit_doors, dependent: :destroy
  has_many :carpet_textures, dependent: :destroy
  has_many :liveries, dependent: :destroy
  has_many :brandings, dependent: :destroy

  has_and_belongs_to_many :life_jackets

  attr_accessible :aeroplane_id, :airline_id, :name, :seat_layout_id, :console, :bin, :lavatory,
                  :open_exit_door, :closed_exit_door, :carpet_texture, :livery, :branding,
                  :seats_attributes, :safety_card_attributes, :life_jacket_ids, :consoles_attributes,
                  :bins_attributes, :lavatories_attributes, :open_exit_doors_attributes,
                  :closed_exit_doors_attributes, :carpet_textures_attributes, :liveries_attributes,
                  :brandings_attributes

  accepts_nested_attributes_for :seats,
                                allow_destroy: true
  accepts_nested_attributes_for :safety_card
  accepts_nested_attributes_for :consoles,
                                allow_destroy: true
  accepts_nested_attributes_for :bins,
                                allow_destroy: true
  accepts_nested_attributes_for :lavatories,
                                allow_destroy: true
  accepts_nested_attributes_for :open_exit_doors,
                                allow_destroy: true
  accepts_nested_attributes_for :closed_exit_doors,
                                allow_destroy: true
  accepts_nested_attributes_for :carpet_textures,
                                allow_destroy: true
  accepts_nested_attributes_for :liveries,
                                allow_destroy: true
  accepts_nested_attributes_for :brandings,
                                allow_destroy: true

end

class Inventory < ApplicationRecord
  belongs_to :product
  InventoryTypes =  {add:0, remove: 1}
  validates : quantity, presence: true, numericality: true
end

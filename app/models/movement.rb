class Movement < ApplicationRecord
  belongs_to :product
  MovementTypes = {add: 0, remove: 1}
  validates :quantity, presence: true, numericality:true

  def self.get_movement_types
    {
      'Adicionar' => MovementTypes[:add],
      'Remover' => MovementTypes[:remove]
    }
  end

  def movement_type_name
    return "Adicionar" if movement_type == MovementTypes[:add]
    return "Remover" if movement_type == Movementtypes[:remove]
  end


end

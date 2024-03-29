class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, :horario, presence: true
  validate :validar_data
  validates_associated :Medico
  validates_associated :Paciente

  def validar_data
    if data.present? && data < Date.today
      errors.add(:data, "A data deve ser de hoje ou futura")
    end
  end
end

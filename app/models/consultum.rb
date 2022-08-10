class Consultum < ApplicationRecord
  belongs_to :Paciente
  belongs_to :Medico
end

class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true
  has_many :consultums, :dependent => :delete_all
  has_many :medicos, through: :consultums

  validates :cpf, presence: {message: 'CPF obrigatório'},
            length: {is: 11, message: 'Precisa ter 11 dígitos'},
            format: {with: /\A\d+\z/, message: 'Deve ter apenas números'}
  validates :nomeCompleto, presence: {message: 'Nome é obrigatório'},
            length: {maximum: 100, message:'Máximo 100 caracteres'}
  validates :email, format: {with: URI:: MailTo::EMAIL_REGEXP}
end

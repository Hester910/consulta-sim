class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
<<<<<<< HEAD
      t.references :paciente, index: { unique: true }, foreign_key: true
=======
      t.references :paciente, null: false, foreign_key: true
>>>>>>> testes-model
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :complemento

      t.timestamps
    end
  end
end

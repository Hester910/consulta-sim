require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'salvar paciente com dados validos' do
   paciente = Paciente.new nomeCompleto: 'Maria do Carmo', dataDeNascimento: DateTime.now,
                           cpf: '12332145665', email: 'mariacarmo@gmail.com'
   assert paciente.save
  end

  test 'salvar paciente vazio' do
   paciente = Paciente.new
   assert_not paciente.save
  end
end

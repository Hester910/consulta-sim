require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'salvar medico com crm vazio' do
    medico = Medico.new nomeCompleto: 'Sérgio Lopes', cpf: '11223344556', email: 'sergio@gmail.com',
                        especialidade: 'dentista'
    assert_not medico.save
  end

  test 'salvar medico com dados validos' do
    medico = Medico.new nomeCompleto: 'Carlos Alberto', cpf: '01020304050', email: 'carlos@gmail.com',
                        especialidade: 'cardiologista', crm: '963000'
    assert medico.save
  end
end

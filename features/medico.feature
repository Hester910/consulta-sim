Feature:
  As a medico
  I want to remover um medico
  So that a lista de medicos fique sempre atualizada

  Scenario: remover um medico existente
    Given estou na pagina de remover medico
    And o medico com nomeCompleto 'Mariana Paiva' cpf '99887456600' email 'mariana@gmail.com' especialidade 'cardiologista' crm '333000' existe
    When eu clico em remover o medico com crm '333000'
    Then eu vejo uma mensagem que o medico com crm '333000' foi apagado com sucesso

  Scenario: cadastrar um medico
    Given estou na pagina de cadastrar medico
    When eu preencho os dados nomeCompleto 'Emanoel Ribeiro' cpf '99966633300' email 'emanoel@gmail.com' especialidade 'pediatra' crm '123321' e clico cadastrar
    Then eu vejo que o meu cadastro '123321' foi realizado
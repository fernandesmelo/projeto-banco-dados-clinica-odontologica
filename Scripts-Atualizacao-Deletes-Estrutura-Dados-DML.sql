-- 01. Atualizar o nome do paciente com ID 1
UPDATE clinicaodontologica.Paciente
SET `nome` = 'Maria da Silva'
WHERE idPaciente = 1;

-- 02. Atualizar o estado do paciente no agendamento com ID 3
UPDATE clinicaodontologica.Agendamentos
SET estado_paciente = 'Estável'
WHERE idAgendamentos = 3;

-- 03. Deletar o pagamento com ID 5
DELETE FROM clinicaodontologica.Pagamentos
WHERE idPagamentos = 5;

-- 04. Atualizar o salário do funcionário com ID 2
UPDATE clinicaodontologica.EquipeClinica
SET salario = 5200.00
WHERE idEquipeClinica = 2;

-- 05. Deletar o agendamento com ID 7
DELETE FROM clinicaodontologica.Agendamentos
WHERE idAgendamentos = 7;

-- 06. Atualizar o valor de um procedimento
UPDATE clinicaodontologica.Procedimentos
SET valor = 350.00
WHERE idProcedimento = 2;

-- 07. Atualizar a especialização de um membro da equipe clínica
UPDATE clinicaodontologica.EquipeClinica
SET especializacao = 'Ortodontia'
WHERE idEquipeClinica = 5;

-- 08. Atualizar o e-mail de um fornecedor
UPDATE clinicaodontologica.Fornecedor
SET email = 'novoemail@fornecedor.com'
WHERE idFornecedor = 3;

-- 09. Deletar o registro de endereço do paciente com ID 4
DELETE FROM clinicaodontologica.endereco_paciente
WHERE Paciente_idPaciente = 4;

-- 10. Atualizar o telefone de um paciente
UPDATE clinicaodontologica.telefone_paciente
SET telefone = '11987654321'
WHERE Paciente_idPaciente = 5;

-- 11. Atualizar a data de nascimento de um paciente
UPDATE clinicaodontologica.Paciente
SET data_nasc = '1990-01-01'
WHERE idPaciente = 6;

-- 12. Atualizar o número do CNPJ de um laboratório externo
UPDATE clinicaodontologica.Lab_Externo
SET Cnpj = '98765432000101'
WHERE idLab = 2;

-- 13. Atualizar o valor de uma compra
UPDATE clinicaodontologica.compras
SET valor = 2100.00
WHERE idcompras = 2;

-- 14. Deletar uma despesa associada à compra com ID 3
DELETE FROM clinicaodontologica.Despesa
WHERE compras_idcompras = 3;

-- 15. Atualizar o tratamento prescrito em um registro clínico
UPDATE clinicaodontologica.Registro_Clinico
SET tratamento = 'Cirurgia periodontal'
WHERE Paciente_idPaciente = 8;

-- 16. Deletar um registro clínico de um paciente específico
DELETE FROM clinicaodontologica.procedimento_utilizado
WHERE Registro_Clinico_Paciente_idPaciente = 3;

-- 17. Atualizar a data de validade de um produto
UPDATE clinicaodontologica.Produto
SET data_validade = '2026-12-31'
WHERE idProduto = 5;

-- 18. Atualizar a cobertura de um seguro
UPDATE clinicaodontologica.Seguros
SET cobertura = 'Completa'
WHERE idSeguro = 7;

-- 19. Deletar um telefone de funcionário
DELETE FROM clinicaodontologica.telefone
WHERE idTelefone = 3;

-- 20. Atualizar o método de pagamento em uma transação
UPDATE clinicaodontologica.Pagamentos
SET metodo_pagamento = 'Pix'
WHERE idPagamentos = 6;

INSERT INTO `clinicaodontologica`.`Paciente` (`historico_bucal`, `data_nasc`, `cpf`, `nome`) VALUES
('Nenhum', '1990-05-15', '123.456.789-00', 'Maria Silva'),
('Tratamento ortodontia', '1985-03-22', '987.654.321-00', 'João Santos'),
('Cárie em tratamento', '1992-11-30', '111.222.333-44', 'Ana Paula'),
('Nenhum', '1978-01-10', '444.555.666-77', 'Carlos Almeida'),
('Limpeza realizada', '2000-07-05', '222.333.444-55', 'Fernanda Oliveira'),
('Tratamento de canal', '1980-09-18', '888.999.000-11', 'Ricardo Ferreira'),
('Nenhum', '1995-12-01', '555.666.777-22', 'Juliana Costa'),
('Prótese dentária', '1988-06-25', '333.444.555-66', 'Bruno Martins'),
('Extração de dente', '1993-04-20', '666.777.888-33', 'Patrícia Lima'),
('Acompanhamento ortodontia', '1986-02-14', '123.321.123-12', 'Felipe Rocha'),
('Cárie em tratamento', '1994-10-30', '777.888.999-00', 'Cláudia Mendes'),
('Nenhum', '2001-08-09', '444.111.222-33', 'Lucas Pereira'),
('Tratamento periodontal', '1989-05-12', '999.000.111-22', 'Tatiane Santos'),
('Limpeza realizada', '1991-03-15', '555.888.777-11', 'Eduardo Almeida'),
('Nenhum', '1997-12-27', '222.111.444-99', 'Sofia Martins');

INSERT INTO `clinicaodontologica`.`endereco_paciente` (`uf`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `complemento`, `Paciente_idPaciente`) VALUES
('PE', 'Recife', 'Boa Viagem', 'Avenida Dom João VI', '123', '51020-200', 'Apto 101', 1),
('PE', 'Olinda', 'Carmo', 'Rua da Praia', '456', '53020-300', NULL, 2),
('PE', 'Jaboatão', 'Praia de Piedade', 'Avenida Governador Agamenon Magalhães', '789', '54400-000', 'Casa 5', 3),
('PE', 'Recife', 'São José', 'Rua do Observatório', '321', '50020-400', NULL, 4),
('PE', 'Olinda', 'Algodoais', 'Rua do Sol', '654', '53020-500', 'Fundos', 5),
('PE', 'Jaboatão', 'Candeias', 'Avenida Mal. Floriano Peixoto', '987', '54400-100', 'Próximo à praia', 6),
('PE', 'Recife', 'Madalena', 'Rua da Esperança', '135', '50050-200', NULL, 7),
('PE', 'Olinda', 'Bairro Novo', 'Avenida Liberdade', '246', '53020-600', 'Casa 3', 8),
('PE', 'Jaboatão', 'Praia de Piedade', 'Rua Joaquim Nabuco', '369', '54400-200', NULL, 9),
('PE', 'Recife', 'Jardim São Paulo', 'Rua da Paz', '258', '50770-300', 'Apto 204', 10),
('PE', 'Olinda', 'Cohab', 'Rua do Coração', '147', '53020-700', NULL, 11),
('PE', 'Jaboatão', 'Centro', 'Rua da Independência', '753', '54400-300', 'Ao lado do banco', 12),
('PE', 'Recife', 'Bairro de Santo Antônio', 'Rua da Alegria', '852', '50020-600', NULL, 13),
('PE', 'Olinda', 'Rio Doce', 'Avenida da Amizade', '951', '53020-800', NULL, 14),
('PE', 'Jaboatão', 'Praia de Piedade', 'Rua da Liberdade', '852', '54400-400', 'Próximo ao shopping', 15);

INSERT INTO `clinicaodontologica`.`EquipeClinica` (`nome`, `salario`, `registro_profissional`, `especializacao`, `dataAdmi`, `dataDemi`) VALUES
('Dr. Ana Sousa', 5000.00, 'CRM12345', 'Odontologia', '2020-03-10', NULL),
('Dra. Carla Lima', 4800.00, 'CRM54321', 'Ortopedia', '2019-02-15', NULL),
('Dr. João Oliveira', 4700.00, 'CRM98765', 'Pediatria', '2021-05-20', NULL),
('Dra. Fernanda Alves', 4500.00, 'CRM13579', 'Dermatologia', '2018-11-12', NULL),
('Dr. Paulo Santos', 4900.00, 'CRM24680', 'Cirurgia Geral', '2022-07-05', NULL),
('Dra. Mariana Costa', 4200.00, 'CRM11223', 'Ginecologia', '2019-06-30', NULL),
('Dr. Felipe Rocha', 4600.00, 'CRM33445', 'Cardiologia', '2020-09-15', NULL),
('Dra. Tatiane Martins', 4400.00, 'CRM55667', 'Psiquiatria', '2017-04-01', NULL),
('Dr. Lucas Pereira', 3900.00, 'CRM77889', 'Fisioterapia', '2023-01-20', NULL),
('Dra. Beatriz Lima', 5000.00, 'CRM99001', 'Nutrição', '2021-03-18', NULL),
('Dr. Ricardo Almeida', 4100.00, 'CRM22334', 'Oftalmologia', '2020-02-25', NULL),
('Dra. Juliana Mendes', 4300.00, 'CRM44556', 'Anestesiologia', '2018-12-05', NULL),
('Dr. Eduardo Costa', 4800.00, 'CRM66778', 'Geriatria', '2019-08-22', NULL),
('Dra. Raquel Ferreira', 4500.00, 'CRM88990', 'Endocrinologia', '2020-10-30', NULL),
('Dr. Bruno Nascimento', 3800.00, 'CRM11112', 'Oncologia', '2021-07-15', NULL);

INSERT INTO `clinicaodontologica`.`Agendamentos` (`data_horario`, `estado_paciente`, `Paciente_idPaciente`, `EquipeClinica_idEquipeClinica`) VALUES
('2024-10-18 09:00:00', 'Estável', 1, 1),
('2024-10-18 10:00:00', 'Urgente', 2, 2),
('2024-10-19 11:30:00', 'Crítico', 3, 3),
('2024-10-19 14:00:00', 'Estável', 4, 4),
('2024-10-20 09:30:00', 'Urgente', 5, 5),
('2024-10-20 15:00:00', 'Crítico', 6, 6),
('2024-10-21 16:00:00', 'Estável', 7, 7),
('2024-10-21 13:30:00', 'Urgente', 8, 8),
('2024-10-22 10:30:00', 'Estável', 9, 9),
('2024-10-22 12:00:00', 'Crítico', 10, 10),
('2024-10-23 11:00:00', 'Urgente', 11, 11),
('2024-10-23 14:30:00', 'Estável', 12, 12),
('2024-10-24 09:15:00', 'Crítico', 13, 13),
('2024-10-24 10:45:00', 'Estável', 14, 14),
('2024-10-25 15:30:00', 'Urgente', 15, 15);

INSERT INTO `clinicaodontologica`.`Procedimentos` (`nome`, `valor`) VALUES
('Limpeza Dental', 150.00),
('Restauração', 250.00),
('Canal', 500.00),
('Extração Simples', 200.00),
('Extração Complexa', 350.00),
('Clareamento Dental', 500.00),
('Aplicação de Flúor', 50.00),
('Prótese Dentária', 900.00),
('Radiografia Dental', 100.00),
('Ortodontia', 400.00),
('Cirurgia Oral', 950.00),
('Tratamento Gengival', 250.00),
('Implante Dentário', 990.00),
('Periodontia', 300.00),
('Consulta Odontológica', 120.00);

INSERT INTO `clinicaodontologica`.`Seguros` (`cobertura`, `nome`, `numero_apolice`, `inicio_vigencia`, `final_vigencia`, `Paciente_idPaciente`) VALUES
('Odontológico', 'Seguro Dental Premium', 'AP123456789', '2024-01-01', '2025-01-01', 1),
('Odontológico', 'Seguro Dental Básico', 'AP987654321', '2024-02-15', '2025-02-15', 2),
('Odontológico', 'Seguro Completo', 'AP456123789', '2024-03-10', '2025-03-10', 3),
('Odontológico', 'Plano Familiar', 'AP321654987', '2024-04-05', '2025-04-05', 4),
('Odontológico', 'Seguro Dental A', 'AP159753456', '2024-05-20', '2025-05-20', 5),
('Odontológico', 'Seguro Dental B', 'AP753159852', '2024-06-25', '2025-06-25', 6),
('Odontológico', 'Seguro Dental C', 'AP258456789', '2024-07-30', '2025-07-30', 7),
('Odontológico', 'Seguro Odonto Max', 'AP369258147', '2024-08-15', '2025-08-15', 8),
('Odontológico', 'Plano de Saúde Dental', 'AP741852963', '2024-09-01', '2025-09-01', 9),
('Odontológico', 'Seguro Dental D', 'AP852963741', '2024-10-10', '2025-10-10', 10),
('Odontológico', 'Seguro Dental E', 'AP147258369', '2024-11-05', '2025-11-05', 11),
('Odontológico', 'Seguro Dental F', 'AP963852741', '2024-12-15', '2025-12-15', 12),
('Odontológico', 'Seguro Dental G', 'AP258147369', '2024-10-20', '2025-10-20', 13),
('Odontológico', 'Seguro Dental H', 'AP159357486', '2024-01-15', '2025-01-15', 14),
('Odontológico', 'Seguro Dental I', 'AP753486159', '2024-05-25', '2025-05-25', 15);

INSERT INTO `clinicaodontologica`.`Pagamentos` (`metodo_pagamento`, `valor`, `Seguros_idSeguro`, `Paciente_idPaciente`) VALUES
('Cartão de Crédito', 150.00, 1, 1),
('Cartão de Débito', 250.00, 2, 15),
('Dinheiro', 500.00, 3, 2),
('Cheque', 200.00, 4, 3),
('Cartão de Crédito', 300.00, 5, 4),
('Transferência Bancária', 350.00, 6, 5),
('Pix', 50.00, 7, 6),
('Cartão de Débito', 100.00, 8, 7),
('Dinheiro', 200.00, 9, 8),
('Cheque', 800.00, 10, 9),
('Transferência Bancária', 300.00, 11, 10),
('Pix', 250.00, 12, 11),
('Cartão de Crédito', 150.00, 13, 12),
('Cartão de Débito', 400.00, 14, 13),
('Dinheiro', 120.00, 15, 14);

INSERT INTO `clinicaodontologica`.`Registro_Clinico` 
( `diagnostico`, `tratamento`, `prescricao`, `recomendação`, `Paciente_idPaciente`, `EquipeClinica_idEquipeClinica`) VALUES
( 'Cárie Dentária', 'Restauração Dental', 'Fluoreto', 'Higiene Oral', 1, 1),
( 'Gengivite', 'Limpeza Dental', 'Antibióticos', 'Uso de fio dental', 2, 2),
( 'Fratura Dental', 'Tratamento de Canal', 'Analgésicos', 'Evitar alimentos duros', 3, 3 ),
( 'Periodontite', 'Tratamento Periodontal', 'Antissépticos', 'Visitas regulares ao dentista', 4, 4),
('Sensibilidade Dental', 'Tratamento Desensibilizante', 'Fluoreto', 'Uso de creme dental especial', 5, 5),
( 'Abscesso Dental', 'Drenagem e Antibioticoterapia', 'Antibióticos', 'Consulta de seguimento', 6, 6),
( 'Tártaro', 'Limpeza Profunda', 'Nenhum', 'Uso diário de fio dental', 7, 7),
( 'Apinhamento Dentário', 'Ortodontia', 'Aparelho Ortodôntico', 'Uso de contenção após tratamento', 8, 8),
( 'Dente Impactado', 'Extração', 'Analgésicos', 'Evitar alimentos quentes', 9, 9),
( 'Halitose', 'Limpeza Dental e Orientações', 'Enxaguante Bucal', 'Hidratação regular', 10, 10),
( 'Câncer Oral', 'Tratamento Oncológico', 'Medicamentos Antineoplásicos', 'Acompanhamento médico', 11, 11),
( 'Desgaste Dental', 'Restaurador', 'Fluoreto', 'Evitar alimentos ácidos', 12, 12),
( 'Estomatite', 'Antifúngico', 'Antibióticos', 'Manter higiene bucal', 13, 13),
( 'Quisto Dentário', 'Cirurgia', 'Analgésicos', 'Reavaliação após cirurgia', 14, 14),
( 'Dente de Leite Retido', 'Extração', 'Nenhum', 'Acompanhar erupção dos dentes permanentes', 15, 15);
INSERT INTO `clinicaodontologica`.`procedimento_utilizado` 
(`Registro_Clinico_EquipeClinica_idEquipeClinica`, `Registro_Clinico_Paciente_idPaciente`, `Procedimentos_idProcedimento`) 
VALUES
(1, 1, 1),
(2, 2, 12),
(3, 3, 2),
(4, 4, 14),
(5, 5, 12),
(6, 6, 5),
(7, 7, 15),
(7, 7, 1),
(8, 8, 9),
(8, 8, 10),
(9, 9, 5),
(10, 10, 1),
(10, 10, 15),
(11, 11, 11),
(11, 11, 12),
(12, 12, 7),
(13, 13, 1),
(13, 13, 6),
(14, 14, 11),
(15, 15, 4);

INSERT INTO `clinicaodontologica`.`Fornecedor` (`cnpj`, `nome`, `email`) VALUES
('12345678000190', 'Fornecedor A', 'contato@fornecedora.com'),
('23456789000101', 'Fornecedor B', 'atendimento@fornecedorB.com.br'),
('34567890000112', 'Fornecedor C', 'suporte@fornecedorC.com'),
('45678901000123', 'Fornecedor D', 'vendas@fornecedorD.com'),
('56789012000134', 'Fornecedor E', 'contato@fornecedorE.com.br'),
('67890123000145', 'Fornecedor F', 'info@fornecedorF.com'),
('78901234000156', 'Fornecedor G', 'comercial@fornecedorG.com.br'),
('89012345000167', 'Fornecedor H', 'relacionamento@fornecedorH.com'),
('9123456000178', 'Fornecedor I', 'suporte@fornecedorI.com.br'),
('01234567000189', 'Fornecedor J', 'contato@fornecedorJ.com'),
('12345678000190', 'Fornecedor K', 'atendimento@fornecedorK.com.br'),
('23456789000101', 'Fornecedor L', 'suporte@fornecedorL.com'),
('34567890000112', 'Fornecedor M', 'vendas@fornecedorM.com'),
('45678901000123', 'Fornecedor N', 'info@fornecedorN.com.br'),
('56789012000134', 'Fornecedor O', 'comercial@fornecedorO.com');

INSERT INTO `clinicaodontologica`.`compras` (`cupom_fiscal`, `desconto`, `data_entrega`, `data_compra`, `valor`, `Fornecedor_idFornecedor`) VALUES
('CF123456', 10.00, '2024-10-20', '2024-10-15', 1500.00, 1),
('CF123457', 5.50, '2024-10-22', '2024-10-16', 2000.00, 2),
('CF123458', 20.00, '2024-10-25', '2024-10-17', 3000.00, 3),
('CF123459', 15.00, '2024-10-30', '2024-10-18', 1800.00, 4),
('CF123460', 8.50, '2024-10-21', '2024-10-19', 2200.00, 5),
('CF123461', 12.00, '2024-10-24', '2024-10-20', 1750.00, 6),
('CF123462', 0.00, '2024-10-29', '2024-10-21', 1600.00, 7),
('CF123463', 7.50, '2024-10-23', '2024-10-22', 2100.00, 8),
('CF123464', 25.00, '2024-10-26', '2024-10-23', 3300.00, 9),
('CF123465', 10.50, '2024-10-28', '2024-10-24', 1450.00, 10),
('CF123466', 5.00, '2024-10-27', '2024-10-25', 1900.00, 11),
('CF123467', 18.00, '2024-10-31', '2024-10-26', 2500.00, 12),
('CF123468', 22.00, '2024-11-02', '2024-10-27', 3500.00, 13),
('CF123469', 3.50, '2024-11-05', '2024-10-28', 800.00, 14),
('CF123470', 0.00, '2024-11-01', '2024-10-29', 900.00, 15);

INSERT INTO `clinicaodontologica`.`Lab_Externo` (`Cnpj`, `nome`) VALUES
('12345678000190', 'Laboratório Externo A'),
('98765432000101', 'Laboratório Externo B'),
('23456789000112', 'Laboratório Externo C'),
('34567890000123', 'Laboratório Externo D'),
('45678901000134', 'Laboratório Externo E'),
('56789012000145', 'Laboratório Externo F'),
('67890123000156', 'Laboratório Externo G'),
('78901234000167', 'Laboratório Externo H'),
('89012345000178', 'Laboratório Externo I'),
('90123456000189', 'Laboratório Externo J'),
('12345670000190', 'Laboratório Externo K'),
('11345678000101', 'Laboratório Externo L'),
('21456789000112', 'Laboratório Externo M'),
('31567890000123', 'Laboratório Externo N'),
('41678901000134', 'Laboratório Externo O');

INSERT INTO `clinicaodontologica`.`Servico_externo` (`nome_servico`, `valor`, `data`, `protocolo`, `Procedimentos_idProcedimento`, `Lab_Externo_idLab`) VALUES
('Exame de Sangue', 120.00, '2024-10-10', 'PROTOCOLO001', 11, 2),
('Análise de placa bacteriana', 80.00, '2024-10-11', 'PROTOCOLO002', 1, 1),
('Tomografia computadorizada', 480.00, '2024-10-12', 'PROTOCOLO003', 5, 3),
('Moldagem em laboratório', 500.00, '2024-10-19', 'PROTOCOLO004', 8, 4),
('Moldagem digital em laboratório', 190.00, '2024-10-20', 'PROTOCOLO005', 8, 4),
('Eletrocardiograma', 100.00, '2024-10-21', 'PROTOCOLO06', 8, 12);

INSERT INTO `clinicaodontologica`.`Despesa` 
(`nome`, `valor`, `dataPag`, `dataVenci`, `compras_idcompras`, `EquipeClinica_idEquipeClinica`, `Servico_externo_idServico_externo`) 
VALUES 
('Salário Dr. Ana Sousa', 5000.00, '2024-10-31', NULL, NULL,  1, NULL),
('Salário Dra. Carla Lima', 4800.00, '2024-10-31', NULL, NULL, 2, NULL),
('Salário Dr. João Oliveira', 4700.00, '2024-10-31', NULL, NULL, 3, NULL),
('Salário Dra. Fernanda Alves', 4500.00, '2024-10-31', NULL, NULL,4, NULL),
('Salário Dr. Paulo Santos', 4900.00, '2024-10-31', NULL, NULL, 5, NULL),
('Salário Dra. Mariana Costa', 4200.00, '2024-10-31', NULL, NULL, 6, NULL),
('Salário Dr. Felipe Rocha', 4600.00, '2024-10-31', NULL, NULL,7, NULL),
('Salário Dra. Tatiane Martins', 4400.00, '2024-10-31', NULL, NULL,8, NULL),
('Salário Dr. Lucas Pereira', 3900.00, '2024-10-31', NULL, NULL,9, NULL),
('Salário Dra. Beatriz Lima', 5000.00, '2024-10-31', NULL, NULL,10, NULL),
('Salário Dr. Ricardo Almeida', 4100.00, '2024-10-31', NULL, NULL,11, NULL),
('Salário Dra. Juliana Mendes', 4300.00, '2024-10-31', NULL, NULL,12, NULL),
('Salário Dr. Eduardo Costa', 4800.00, '2024-10-31', NULL, NULL,13, NULL),
('Salário Dra. Raquel Ferreira', 4500.00, '2024-10-31', NULL, NULL,14, NULL),
('Salário Dr. Bruno Nascimento', 3800.00, '2024-10-31', NULL, NULL,15, NULL),
('Exame de Sangue', 120.00, '2024-10-10', null, NULL, NULL, 1),
('Análise de placa bacteriana', 80.00, '2024-10-11', null, NULL, null, 2),
('Tomografia computadorizada', 480.00, '2024-10-12', null, null, null, 3),
('Moldagem em laboratório', 500.00, '2024-10-19', null, null, null, 4),
('Moldagem digital em laboratório', 190.00, '2024-10-20', null, null, null, 5),
('Eletrocardiograma', 100.00, '2024-10-21', null, null, null, 6),
('Compra CF123456', 1500.00, '2024-10-20', '2024-10-15', 1, NULL, NULL),
('Compra CF123457', 2000.00, '2024-10-22', '2024-10-16', 2, NULL, NULL),
('Compra CF123458', 3000.00, '2024-10-25', '2024-10-17', 3, NULL, NULL),
('Compra CF123459', 1800.00, '2024-10-30', '2024-10-18', 4, NULL, NULL),
('Compra CF123460', 2200.00, '2024-10-21', '2024-10-19', 5, NULL, NULL),
('Compra CF123461', 1750.00, '2024-10-24', '2024-10-20', 6, NULL, NULL),
('Compra CF123462', 1600.00, '2024-10-29', '2024-10-21', 7, NULL, NULL),
('Compra CF123463', 2100.00, '2024-10-23', '2024-10-22', 8, NULL, NULL),
('Compra CF123464', 3300.00, '2024-10-26', '2024-10-23', 9, NULL, NULL),
('Compra CF123465', 1450.00, '2024-10-28', '2024-10-24', 10, NULL, NULL),
('Compra CF123466', 1900.00, '2024-10-27', '2024-10-25', 11, NULL, NULL),
('Compra CF123467', 2500.00, '2024-10-31', '2024-10-26', 12, NULL, NULL),
('Compra CF123468', 3500.00, '2024-11-02', '2024-10-27', 13, NULL, NULL),
('Compra CF123469', 800.00, '2024-11-05', '2024-10-28', 14, NULL, NULL),
('Compra CF123470', 900.00, '2024-11-01', '2024-10-29', 15, NULL, NULL);


INSERT INTO `clinicaodontologica`.`Produto` (`nome`, `lote`, `data_validade`, `compras_idcompras`) VALUES
('Produto A', 'Lote001', '2025-01-15', 1),
('Produto B', 'Lote002', '2025-02-20', 2),
('Produto C', 'Lote003', '2025-03-10', 3),
('Produto D', 'Lote004', '2025-04-25', 4),
('Produto E', 'Lote005', '2025-05-30', 5),
('Produto F', 'Lote006', '2025-06-12', 6),
('Produto G', 'Lote007', '2025-07-18', 7),
('Produto H', 'Lote008', '2025-08-22', 8),
('Produto I', 'Lote009', '2025-09-15', 9),
('Produto J', 'Lote010', '2025-10-05', 10),
('Produto K', 'Lote011', '2025-11-20', 11),
('Produto L', 'Lote012', '2025-12-30', 12),
('Produto M', 'Lote013', '2026-01-10', 13),
('Produto N', 'Lote014', '2026-02-15', 14),
('Produto O', 'Lote015', '2026-03-01', 15);

INSERT INTO `clinicaodontologica`.`Utiliza` (`Produto_idProduto`, `Procedimentos_idProcedimento`) VALUES
( 1, 1),   -- Produto A para Procedimento 1
( 2, 2),   -- Produto B para Procedimento 2
( 3, 3),  -- Produto C para Procedimento 3
( 4, 4),   -- Produto D para Procedimento 4
( 5, 5),   -- Produto E para Procedimento 5
( 6, 6),   -- Produto F para Procedimento 6
( 7, 7),   -- Produto G para Procedimento 7
( 8, 8),   -- Produto H para Procedimento 8
( 9, 9),   -- Produto I para Procedimento 9
( 10, 10), -- Produto J para Procedimento 10
( 11, 11), -- Produto K para Procedimento 11
( 12, 12), -- Produto L para Procedimento 12
( 13, 13), -- Produto M para Procedimento 13
( 14, 14), -- Produto N para Procedimento 14
( 15, 15); -- Produto O para Procedimento 15

INSERT INTO `clinicaodontologica`.`telefone_paciente` (`telefone`, `Paciente_idPaciente`) VALUES
('11987654321', 1),  -- Telefone para Paciente 1
('11876543210', 2),  -- Telefone para Paciente 2
('11765432109', 3),  -- Telefone para Paciente 3
('11654321098', 4),  -- Telefone para Paciente 4
('11543210987', 5),  -- Telefone para Paciente 5
('11432109876', 6),  -- Telefone para Paciente 6
('11321098765', 7),  -- Telefone para Paciente 7
('11210987654', 8),  -- Telefone para Paciente 8
('11109876543', 9),  -- Telefone para Paciente 9
('11098765432', 10), -- Telefone para Paciente 10
('10987654321', 11), -- Telefone para Paciente 11
('10876543210', 12), -- Telefone para Paciente 12
('10765432109', 13), -- Telefone para Paciente 13
('10654321098', 14), -- Telefone para Paciente 14
('10543210987', 15); -- Telefone para Paciente 15

INSERT INTO `clinicaodontologica`.`telefone` (`numero`, `EquipeClinica_idEquipeClinica`, `Fornecedor_idFornecedor`, `Lab_Externo_idLab`) VALUES
('11987654321', 1, NULL, NULL),  -- Telefone para Funcionário 1
('11876543210', 2, NULL, NULL),  -- Telefone para Funcionário 2
('11765432109', 3, NULL, NULL),  -- Telefone para Funcionário 3
('11654321098', NULL, 1, NULL),  -- Telefone para Fornecedor 1
('11543210987', NULL, 2, NULL),  -- Telefone para Fornecedor 2
('11432109876', NULL, 3, NULL),  -- Telefone para Fornecedor 3
('11321098765', NULL, NULL, 1),  -- Telefone para Lab Externo 1
('11210987654', NULL, NULL, 2),  -- Telefone para Lab Externo 2
('11109876543', NULL, NULL, 3),  -- Telefone para Lab Externo 3
('11098765432', 4, NULL, NULL),  -- Telefone para Funcionário 4
('10987654321', 5, NULL, NULL),  -- Telefone para Funcionário 5
('10876543210', 6, NULL, NULL),  -- Telefone para Funcionário 6
('10765432109', NULL, 4, NULL),  -- Telefone para Fornecedor 4
('10654321098', NULL, NULL, 4),  -- Telefone para Lab Externo 4
('10543210987', 7, NULL, NULL),  -- Telefone para Funcionário 7
('10432109876', NULL, 5, NULL);  -- Telefone para Fornecedor 5

INSERT INTO `clinicaodontologica`.`endereco` (`uf`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `complemento`, `EquipeClinica_idEquipeClinica`, `Lab_Externo_idLab`, `Fornecedor_idFornecedor`) VALUES
('PE', 'Recife', 'Boa Viagem', 'Avenida Domingos Ferreira', '1000', '51020-000', 'Apto 101', 1, NULL, NULL),  -- Endereço para Funcionário 1
('PE', 'Olinda', 'Bairro Novo', 'Rua 27 de Janeiro', '200', '53020-000', NULL, 2, NULL, NULL),  -- Endereço para Funcionário 2
('PE', 'Jaboatão dos Guararapes', 'Praia de Piedade', 'Avenida Bernardo Vieira de Melo', '300', '54000-000', 'Casa 3', 3, NULL, NULL),  -- Endereço para Funcionário 3
('PE', 'Recife', 'Cordeiro', 'Rua dos Três Irmãos', '400', '52050-000', NULL, NULL, 1, NULL),  -- Endereço para Lab Externo 1
('PE', 'Olinda', 'Casa Caiada', 'Avenida Olinda', '500', '53130-000', NULL, NULL, NULL, 1),  -- Endereço para Fornecedor 1
('PE', 'Jaboatão dos Guararapes', 'Praia do Pina', 'Rua da Moeda', '600', '54200-000', 'Sala 12', 4, NULL, NULL),  -- Endereço para Funcionário 4
('PE', 'Recife', 'Graças', 'Rua do Futuro', '700', '52060-000', NULL, NULL, 2, NULL),  -- Endereço para Fornecedor 2
('PE', 'Olinda', 'Carmo', 'Rua do Alto da Sé', '800', '53120-000', NULL, NULL, NULL, 2),  -- Endereço para Lab Externo 2
('PE', 'Jaboatão dos Guararapes', 'Centro', 'Avenida João de Barros', '900', '54015-000', 'Apto 4', 5, NULL, NULL),  -- Endereço para Funcionário 5
('PE', 'Recife', 'Santo Amaro', 'Rua da Imperatriz', '1000', '50060-000', NULL, NULL, NULL, 3),  -- Endereço para Lab Externo 3
('PE', 'Olinda', 'Varadouro', 'Rua do Comércio', '1100', '53100-000', 'Casa 2', 6, NULL, NULL),  -- Endereço para Funcionário 6
('PE', 'Recife', 'Cincinato Ferreira', 'Rua da Alegria', '1200', '52030-000', NULL, NULL, NULL, 4),  -- Endereço para Fornecedor 3
('PE', 'Jaboatão dos Guararapes', 'Piedade', 'Rua José de Alencar', '1300', '54050-000', 'Apto 7', 7, NULL, NULL),  -- Endereço para Funcionário 7
('PE', 'Recife', 'Tamarineira', 'Avenida Recife', '1400', '52040-000', NULL, NULL, NULL, 5),  -- Endereço para Lab Externo 4
('PE', 'Olinda', 'Forte de Copacabana', 'Avenida das Américas', '1500', '53150-000', 'Andar 2', NULL, NULL, 6);  -- Endereço para Fornecedor 4

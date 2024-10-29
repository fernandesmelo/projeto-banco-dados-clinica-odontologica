-- 01. Listar todos os pacientes.
create view todos_pacientes as
SELECT idPaciente "ID paciente", nome "Nome Paciente", cpf "CPF do paciente"
FROM paciente;

-- 02. Obtém um agendamento de um paciente específico.
create view agendamento_paciente_especifico as
select pac.nome "Paciente", date_format(agd.data_horario, "%d/%m/%Y %H:%i") "Data e horário do agendamento", pac.cpf "CPF do paciente" 
	from paciente pac
inner join agendamentos agd on pac.idPaciente = agd.Paciente_idPaciente
where pac.nome = "João Santos";

-- 03. Obtém todos os pagamentos feitos por um cliente, informando valor e método utilizado.
create view todos_pagamentos_por_cliente_valor_metodo as
SELECT pac.nome "Nome paciente" ,  concat("R$ ", format(pg.valor, 2, 'de_DE') ) "Valor pago", pg.metodo_pagamento "Metodo de pagamento"
FROM pagamentos pg
inner JOIN paciente pac ON pg.idPagamentos = pac.idPaciente
WHERE pac.nome = "Ricardo Ferreira";

-- 04. Mostrar todos os procedimentos com e sem necessidade de laboratório externo.
create view todos_procedimentos_com_sem_laboratorio_externo as
select proc.nome "Nome do procedimento", coalesce( srve.nome_servico, "Sem necessidade") "Serviço Externo"
	from procedimentos proc
    left join servico_externo srve on proc.idProcedimento = srve.Procedimentos_idProcedimento;

-- 05. Listar os procedimentos realizados por cada um da equipe clínica em seus pacientes.
create view procedimentos_realizado_cada_equipe_clinica as
select ec.nome "Nome da Equipe Clínica",
    proc.nome "Nome do Procedimento",
    pac.nome "Nome do Paciente"
from equipeclinica ec
inner join registro_clinico rc 
    on ec.idEquipeClinica = rc.EquipeClinica_idEquipeClinica
inner join paciente pac 
    on pac.idPaciente = rc.Paciente_idPaciente
inner join procedimento_utilizado pu 
    on pu.Registro_Clinico_EquipeClinica_idEquipeClinica = rc.EquipeClinica_idEquipeClinica
    and pu.Registro_Clinico_Paciente_idPaciente = rc.Paciente_idPaciente
inner join procedimentos proc 
    on proc.idProcedimento = pu.Procedimentos_idProcedimento
order by ec.nome, pac.nome;


-- 06. Mostrar todos os fornecedores cadastrados com ou sem telefone.
create view todos_fornecedores_cadastrados_com_sem_telefone as
SELECT frn.nome "Nome Fornecedor", coalesce(tel.numero, "Sem numero") "Numero do Fornecedor"
FROM fornecedor frn
left JOIN telefone tel ON frn.idFornecedor = tel.Fornecedor_idFornecedor
	order by frn.nome;

-- 07. Listar todos os seguros utilizados em cada pagamento ordenados pelo nome do seguro.
create view todos_seguros_utilizados_cada_pagamento as
SELECT pg.idPagamentos "Pagamentos", seg.nome "Seguro utilizado"
	from pagamentos pg
    inner join seguros seg on seg.idSeguro = pg.Seguros_idSeguro
    order by seg.nome;

-- 08. Produtos que são utilizados em procedimentos.
create view produtos_utilizados_procedimentos as
SELECT prd.nome "Nome do produto", proc.nome "Procedimento"
	FROM procedimentos proc
		inner join utiliza utz on utz.Procedimentos_idProcedimento = proc.idProcedimento
		inner JOIN produto prd ON prd.idProduto = utz.Produto_idProduto
	order by prd.nome;

-- 09. Listar todos os produtos com validade entre janeiro e março de 2025.
create view compras_fornecedor_especifico as
select pdt.nome "Nome do Produto",  pdt.lote "Lote do produto",date_format(pdt.data_validade, "%d/%m/%Y")  "Data de validade"
	from produto pdt
    where pdt.data_validade between '2025-01-01' and '2025-03-31';

-- 10. Listar todos os agendamentos apenas com a data entre os dias 18 e 20 de outubro de 2024.
create view todos_agendamentos_data_entre_18_20_de_10_2024 as
SELECT pac.nome "Paciente", date_format(agd.data_horario, "%d/%m/%Y")  "Data do agendamento"
	from agendamentos agd
    inner join paciente pac on agd.Paciente_idPaciente = pac.idPaciente
WHERE agd.data_horario BETWEEN '2024-10-18' AND '2024-10-20';

-- 11. Listar todos da equipe clínica cadastrados com ou sem seus telefones.
create view todos_equipe_clinica_com_sem_telefone as
select cli.nome "Nome", coalesce(tel.numero, "Sem numero") "Telefone"
from equipeclinica cli
left join telefone tel on cli.idEquipeclinica = tel.EquipeClinica_idEquipeClinica
	order by cli.nome;
    
-- 12. Listar todos os pacientes que moram em Olinda.
create view pacientes_moram_olinda as
select 
    pac.nome "Nome do Paciente", ender.cidade 'Cidade', ender.rua "Rua", ender.numero "Número", ender.bairro "Bairro"
from paciente pac
inner join endereco_paciente ender 
    on pac.idPaciente = ender.Paciente_idPaciente
where ender.cidade = 'Olinda';

-- 13. Listar a folha salarial com data de pagamento para cada funcionário por ordem decrescente.
create view folha_salarial_cada_funcionario as
select 
    cli.nome  "Nome", 
    concat("R$ ", format(desp.valor, 2, 'de_DE') ) "Valor", 
    date_format(desp.dataPag, '%d/%m/%Y') "Data de Pagamento"
from despesa desp
inner join equipeclinica cli 
    on desp.EquipeClinica_idEquipeClinica = cli.idEquipeClinica
order by desp.valor desc;

-- 14. Associar os pacientes aos seus respectivos telefones.
create view pacientes_telefones as
select pac.nome "Nome", coalesce(tel.telefone, "Sem numero") "Telefone"
from paciente pac
left join telefone_paciente tel on pac.idPaciente = tel.Paciente_idPaciente
	order by pac.nome;
    
-- 15. Listar todos da equipe clínica que moram em Jaboatão dos Guararapes.
create view equipe_clinica_jaboatao as
select 
    cli.nome "Nome do Paciente", ender.cidade 'Cidade', ender.rua "Rua", ender.numero "Número", ender.bairro "Bairro"
from equipeclinica cli
inner join endereco ender 
    on cli.idEquipeClinica = ender.EquipeClinica_idEquipeClinica
where ender.cidade = 'Jaboatão dos Guararapes';

-- 16. Listar todos os laboratórios externos com e sem seus telefones.
create view laboratorios_externos_com_sem_telefone as
select lab.nome "Nome", coalesce(tel.numero, "Sem numero") "Telefone"
from lab_externo lab
left join telefone tel on lab.idLab = tel.Lab_Externo_idLab
	order by lab.nome;
    
-- 17. Listar todos laboratórios externos que são de Recife.
create view laboratorios_externos_recife as
select 
    lab.nome "Nome do Paciente", ender.cidade 'Cidade', ender.rua "Rua", ender.numero "Número", ender.bairro "Bairro"
from lab_externo lab
inner join endereco ender 
    on lab.idLab = ender.Lab_Externo_idLab
where ender.cidade = 'Recife';

-- 18. Listar todas as compras realizadas com um respectivo fornecedor.
create view compras_respectivo_fornecedor as
select 
    comp.idcompras "ID da Compra",concat("R$ ", format(comp.valor, 2, 'de_DE') ) "Valor da Compra",date_format(comp.data_compra, "%d/%m/%Y") "Data da Compra",
    frn.nome "Nome do Fornecedor"
from compras comp
inner join fornecedor frn
on comp.Fornecedor_idFornecedor = frn.idFornecedor
where frn.nome = "Fornecedor C";

-- 19. Listar endereços dos pacientes.
create view endereços_pacientes as
select 
	pac.nome "Nome do Paciente",
    epac.uf "Estado",
    epac.cidade "Cidade",
    epac.bairro "Bairro",
    epac.rua "Rua",
    epac.numero "Número"
FROM Paciente pac 
join endereco_paciente epac
	ON pac.idPaciente = epac.Paciente_idPaciente
order by epac.cidade asc;

-- 20. Listar o valor pago nas compras entre os dias 15 e 19.
create view valor_pago_dias_15_19 as
select 
    concat('R$ ', format(sum(comp.valor) - sum(comp.desconto), 2, 'de_DE')) "Valor Total das Compras"
from compras comp
where comp.data_compra between '2024-10-15' and '2024-10-19';

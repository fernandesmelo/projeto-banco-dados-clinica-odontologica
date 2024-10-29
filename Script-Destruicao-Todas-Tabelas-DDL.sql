DROP TABLE IF EXISTS
	procedimento_utilizado,
	endereco,
	telefone,
	telefone_paciente,
	Utiliza,
	Produto,
	Despesa,
	Servico_externo,
	Lab_Externo,
	compras,
	Fornecedor,
	Registro_Clinico,
	Procedimentos,
	Pagamentos,
	Seguros,
	Agendamentos,
	EquipeClinica,
	endereco_paciente,
	Paciente;
    
-- Remover todas as views
DROP VIEW IF EXISTS
	agendamento_paciente_especifico,
    compras_fornecedor_especifico,
    compras_respectivo_fornecedor,
    endereços_pacientes,
    equipe_clinica_jaboatao,
    folha_salarial_cada_funcionario,
    laboratorios_externos_com_sem_telefone,
    laboratorios_externos_recife,
    pacientes_moram_olinda,
    pacientes_telefones,
    procedimentos_realizado_cada_equipe_clinica,
    produtos_utilizados_procedimentos,
    todos_agendamentos_data_entre_18_20_de_10_2024,
    todos_equipe_clinica_com_sem_telefone,
    todos_fornecedores_cadastrados_com_sem_telefone,
    todos_pacientes,
    todos_pagamentos_por_cliente_valor_metodo,
    todos_procedimentos_com_sem_laboratorio_externo,
    todos_seguros_utilizados_cada_pagamento,
    valor_pago_dias_15_19;

-- Remover todo Banco de Dados
DROP DATABASE IF EXISTS clinicaodontologica;

-- 01. Adicionar uma nova coluna à tabela Paciente.
ALTER TABLE Paciente 
ADD telefone VARCHAR(15) NULL;

-- 02. Modificar o tipo de dados da coluna nome na tabela EquipeClinica.
ALTER TABLE EquipeClinica 
MODIFY COLUMN especializacao VARCHAR(150) NOT NULL;

-- 03. Renomear a coluna dataAdmi para dataAdmissao na tabela EquipeClinica.
ALTER TABLE EquipeClinica 
CHANGE COLUMN dataAdmi dataAdmissao DATE NOT NULL;

-- 04. Adicionar uma restrição UNIQUE na coluna cpf da tabela Paciente.
ALTER TABLE Paciente 
ADD CONSTRAINT unique_cpf UNIQUE (cpf);

-- 05. Remover a coluna complemento da tabela endereco_paciente.
ALTER TABLE endereco_paciente 
DROP COLUMN complemento;

-- 06. Adicionar uma nova chave estrangeira na tabela Pagamentos.
ALTER TABLE Pagamentos 
ADD CONSTRAINT fk_Pagamentos_Procedimentos 
FOREIGN KEY (Seguros_idSeguro) REFERENCES Procedimentos(idProcedimento);

-- 07. Altera a posição de uma coluna, colocando-a no início da tabela.
ALTER TABLE compras
MODIFY valor INT AFTER cupom_fiscal;

-- 08. Modificar a precisão da coluna valor na tabela procedimentos.
ALTER TABLE procedimentos
MODIFY COLUMN valor DECIMAL(10, 2) NOT NULL;

-- 09. Adicionar uma nova coluna status à tabela Agendamentos.
ALTER TABLE Agendamentos 
ADD status VARCHAR(50) DEFAULT 'Pendente';

-- 10. Remover a chave estrangeira da tabela Seguros.
ALTER TABLE Seguros 
DROP FOREIGN KEY fk_Seguros_Paciente1;

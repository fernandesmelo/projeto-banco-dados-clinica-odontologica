-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Paciente` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `historico_bucal` VARCHAR(100) NULL,
  `data_nasc` DATE NOT NULL,
  `cpf` CHAR(14) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idPaciente`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`endereco_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`endereco_paciente` (
  `uf` CHAR(2) NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `bairro` VARCHAR(100) NOT NULL,
  `rua` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(5) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `complemento` VARCHAR(100) NULL,
  `Paciente_idPaciente` INT NOT NULL,
  PRIMARY KEY (`Paciente_idPaciente`),
  INDEX `fk_endereco_paciente_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  CONSTRAINT `fk_endereco_paciente_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`EquipeClinica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`EquipeClinica` (
  `idEquipeClinica` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `salario` DECIMAL(7,2) NOT NULL,
  `registro_profissional` VARCHAR(8) NOT NULL,
  `especializacao` VARCHAR(255) NULL,
  `dataAdmi` DATE NOT NULL,
  `dataDemi` VARCHAR(45) NULL,
  PRIMARY KEY (`idEquipeClinica`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Agendamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Agendamentos` (
  `idAgendamentos` INT NOT NULL AUTO_INCREMENT,
  `data_horario` DATETIME NOT NULL,
  `estado_paciente` VARCHAR(100) NULL,
  `Paciente_idPaciente` INT NOT NULL,
  `EquipeClinica_idEquipeClinica` INT NOT NULL,
  PRIMARY KEY (`idAgendamentos`),
  INDEX `fk_Agendamentos_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  INDEX `fk_Agendamentos_EquipeClinica1_idx` (`EquipeClinica_idEquipeClinica` ASC) VISIBLE,
  CONSTRAINT `fk_Agendamentos_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Agendamentos_EquipeClinica1`
    FOREIGN KEY (`EquipeClinica_idEquipeClinica`)
    REFERENCES `clinicaodontologica`.`EquipeClinica` (`idEquipeClinica`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Seguros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Seguros` (
  `idSeguro` INT NOT NULL AUTO_INCREMENT,
  `cobertura` VARCHAR(100) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `numero_apolice` VARCHAR(45) NOT NULL,
  `inicio_vigencia` DATE NOT NULL,
  `final_vigencia` DATE NULL,
  `Paciente_idPaciente` INT NOT NULL,
  PRIMARY KEY (`idSeguro`),
  INDEX `fk_Seguros_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  CONSTRAINT `fk_Seguros_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Pagamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Pagamentos` (
  `idPagamentos` INT NOT NULL AUTO_INCREMENT,
  `metodo_pagamento` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(7,2) NOT NULL,
  `Seguros_idSeguro` INT NOT NULL,
  `Paciente_idPaciente` INT NOT NULL,
  PRIMARY KEY (`idPagamentos`),
  INDEX `fk_Pagamentos_Seguros1_idx` (`Seguros_idSeguro` ASC) VISIBLE,
  INDEX `fk_Pagamentos_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamentos_Seguros1`
    FOREIGN KEY (`Seguros_idSeguro`)
    REFERENCES `clinicaodontologica`.`Seguros` (`idSeguro`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pagamentos_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Procedimentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Procedimentos` (
  `idProcedimento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`idProcedimento`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Registro_Clinico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Registro_Clinico` (
  `diagnostico` VARCHAR(255) NOT NULL,
  `tratamento` VARCHAR(255) NOT NULL,
  `prescricao` VARCHAR(255) NOT NULL,
  `recomendação` VARCHAR(255) NOT NULL,
  `Paciente_idPaciente` INT NOT NULL,
  `EquipeClinica_idEquipeClinica` INT NOT NULL,
  INDEX `fk_Registro_Clinico_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  INDEX `fk_Registro_Clinico_EquipeClinica1_idx` (`EquipeClinica_idEquipeClinica` ASC) VISIBLE,
  PRIMARY KEY (`EquipeClinica_idEquipeClinica`, `Paciente_idPaciente`),
  CONSTRAINT `fk_Registro_Clinico_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Registro_Clinico_EquipeClinica1`
    FOREIGN KEY (`EquipeClinica_idEquipeClinica`)
    REFERENCES `clinicaodontologica`.`EquipeClinica` (`idEquipeClinica`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(15) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`idFornecedor`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`compras` (
  `idcompras` INT NOT NULL AUTO_INCREMENT,
  `cupom_fiscal` VARCHAR(45) NOT NULL,
  `desconto` DECIMAL(5,2) NULL,
  `data_entrega` DATE NOT NULL,
  `data_compra` DATE NOT NULL,
  `valor` DECIMAL(7,2) NOT NULL,
  `Fornecedor_idFornecedor` INT NOT NULL,
  PRIMARY KEY (`idcompras`),
  INDEX `fk_compras_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_compras_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `clinicaodontologica`.`Fornecedor` (`idFornecedor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Lab_Externo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Lab_Externo` (
  `idLab` INT NOT NULL AUTO_INCREMENT COMMENT '12345678912',
  `Cnpj` VARCHAR(15) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idLab`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Servico_externo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Servico_externo` (
  `idServico_Externo` INT NOT NULL AUTO_INCREMENT,
  `nome_servico` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  `data` DATE NOT NULL,
  `protocolo` VARCHAR(45) NOT NULL,
  `Procedimentos_idProcedimento` INT NULL,
  `Lab_Externo_idLab` INT NULL,
  INDEX `fk_Servico_externo_Procedimentos1_idx` (`Procedimentos_idProcedimento` ASC) VISIBLE,
  UNIQUE INDEX `protocolo_UNIQUE` (`protocolo` ASC) VISIBLE,
  PRIMARY KEY (`idServico_Externo`),
  INDEX `fk_Servico_externo_Lab_Externo1_idx` (`Lab_Externo_idLab` ASC) VISIBLE,
  CONSTRAINT `fk_Servico_externo_Procedimentos1`
    FOREIGN KEY (`Procedimentos_idProcedimento`)
    REFERENCES `clinicaodontologica`.`Procedimentos` (`idProcedimento`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Servico_externo_Lab_Externo1`
    FOREIGN KEY (`Lab_Externo_idLab`)
    REFERENCES `clinicaodontologica`.`Lab_Externo` (`idLab`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Despesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Despesa` (
  `idDespesa` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `valor` DECIMAL(7,2) NOT NULL,
  `dataVenci` DATE NULL,
  `dataPag` DATE NOT NULL,
  `compras_idcompras` INT NULL,
  `EquipeClinica_idEquipeClinica` INT NULL,
  `Servico_externo_idServico_Externo` INT NULL,
  PRIMARY KEY (`idDespesa`),
  INDEX `fk_Despesa_compras1_idx` (`compras_idcompras` ASC) VISIBLE,
  INDEX `fk_Despesa_EquipeClinica1_idx` (`EquipeClinica_idEquipeClinica` ASC) VISIBLE,
  INDEX `fk_Despesa_Servico_externo1_idx` (`Servico_externo_idServico_Externo` ASC) VISIBLE,
  CONSTRAINT `fk_Despesa_compras1`
    FOREIGN KEY (`compras_idcompras`)
    REFERENCES `clinicaodontologica`.`compras` (`idcompras`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Despesa_EquipeClinica1`
    FOREIGN KEY (`EquipeClinica_idEquipeClinica`)
    REFERENCES `clinicaodontologica`.`EquipeClinica` (`idEquipeClinica`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Despesa_Servico_externo1`
    FOREIGN KEY (`Servico_externo_idServico_Externo`)
    REFERENCES `clinicaodontologica`.`Servico_externo` (`idServico_Externo`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `lote` VARCHAR(45) NOT NULL,
  `data_validade` DATE NOT NULL,
  `compras_idcompras` INT NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_Produto_compras1_idx` (`compras_idcompras` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_compras1`
    FOREIGN KEY (`compras_idcompras`)
    REFERENCES `clinicaodontologica`.`compras` (`idcompras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`Utiliza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`Utiliza` (
  `Produto_idProduto` INT NOT NULL,
  `Procedimentos_idProcedimento` INT NOT NULL,
  INDEX `fk_Utiliza_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Utiliza_Procedimentos1_idx` (`Procedimentos_idProcedimento` ASC) VISIBLE,
  PRIMARY KEY (`Procedimentos_idProcedimento`, `Produto_idProduto`),
  CONSTRAINT `fk_Utiliza_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `clinicaodontologica`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Utiliza_Procedimentos1`
    FOREIGN KEY (`Procedimentos_idProcedimento`)
    REFERENCES `clinicaodontologica`.`Procedimentos` (`idProcedimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`telefone_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`telefone_paciente` (
  `telefone` VARCHAR(11) NOT NULL,
  `Paciente_idPaciente` INT NOT NULL,
  INDEX `fk_telefone_paciente_Paciente1_idx` (`Paciente_idPaciente` ASC) VISIBLE,
  PRIMARY KEY (`Paciente_idPaciente`),
  CONSTRAINT `fk_telefone_paciente_Paciente1`
    FOREIGN KEY (`Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Paciente` (`idPaciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(11) NOT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Lab_Externo_idLab` INT NULL,
  `EquipeClinica_idEquipeClinica` INT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_telefone_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC) VISIBLE,
  INDEX `fk_telefone_Lab_Externo1_idx` (`Lab_Externo_idLab` ASC) VISIBLE,
  INDEX `fk_telefone_EquipeClinica1_idx` (`EquipeClinica_idEquipeClinica` ASC) VISIBLE,
  CONSTRAINT `fk_telefone_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `clinicaodontologica`.`Fornecedor` (`idFornecedor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_telefone_Lab_Externo1`
    FOREIGN KEY (`Lab_Externo_idLab`)
    REFERENCES `clinicaodontologica`.`Lab_Externo` (`idLab`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_telefone_EquipeClinica1`
    FOREIGN KEY (`EquipeClinica_idEquipeClinica`)
    REFERENCES `clinicaodontologica`.`EquipeClinica` (`idEquipeClinica`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`endereco` (
  `idEndereco` INT NOT NULL AUTO_INCREMENT,
  `uf` CHAR(2) NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `bairro` VARCHAR(100) NOT NULL,
  `rua` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(5) NULL,
  `cep` VARCHAR(9) NULL,
  `complemento` VARCHAR(100) NULL,
  `Lab_Externo_idLab` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `EquipeClinica_idEquipeClinica` INT NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_endereco_Lab_Externo1_idx` (`Lab_Externo_idLab` ASC) VISIBLE,
  INDEX `fk_endereco_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC) VISIBLE,
  INDEX `fk_endereco_EquipeClinica1_idx` (`EquipeClinica_idEquipeClinica` ASC) VISIBLE,
  CONSTRAINT `fk_endereco_Lab_Externo1`
    FOREIGN KEY (`Lab_Externo_idLab`)
    REFERENCES `clinicaodontologica`.`Lab_Externo` (`idLab`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_endereco_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `clinicaodontologica`.`Fornecedor` (`idFornecedor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_endereco_EquipeClinica1`
    FOREIGN KEY (`EquipeClinica_idEquipeClinica`)
    REFERENCES `clinicaodontologica`.`EquipeClinica` (`idEquipeClinica`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `clinicaodontologica`.`procedimento_utilizado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicaodontologica`.`procedimento_utilizado` (
  `Registro_Clinico_EquipeClinica_idEquipeClinica` INT NOT NULL,
  `Registro_Clinico_Paciente_idPaciente` INT NOT NULL,
  `Procedimentos_idProcedimento` INT NOT NULL,
  PRIMARY KEY (`Registro_Clinico_EquipeClinica_idEquipeClinica`, `Registro_Clinico_Paciente_idPaciente`, `Procedimentos_idProcedimento`),
  INDEX `fk_table1_Procedimentos1_idx` (`Procedimentos_idProcedimento` ASC) VISIBLE,
  CONSTRAINT `fk_table1_Registro_Clinico1`
    FOREIGN KEY (`Registro_Clinico_EquipeClinica_idEquipeClinica` , `Registro_Clinico_Paciente_idPaciente`)
    REFERENCES `clinicaodontologica`.`Registro_Clinico` (`EquipeClinica_idEquipeClinica` , `Paciente_idPaciente`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_table1_Procedimentos1`
    FOREIGN KEY (`Procedimentos_idProcedimento`)
    REFERENCES `clinicaodontologica`.`Procedimentos` (`idProcedimento`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

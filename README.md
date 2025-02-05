# Banco de Dados para uma Clínica Odontológica
Contruímos esse banco de dados através de um trabalho da [Faculdade Senac Pernambuco](https://faculdadesenacpe.edu.br/#) da disciplina Banco de Dados - DQL e DTL ministrada pelo [Prof. Danilo Soares](https://www.linkedin.com/in/dansoaresfarias/).

O sistema de gerenciamento de dados da Clínica Odontológica visa
automatizar e ao mesmo tempo otimizar os processos de atendimento e a gestão
administrativa quanto ao modelo de negócio. Esse sistema é responsável por
organizar os dados de pacientes, equipe clínica, fornecedores e agendamentos.


As principais funcionalidades do sistema envolvem:
* **Pacientes:** o sistema cadastra informações como nome, CPF, histórico de
saúde bucal e endereço dos pacientes. Cada paciente pode ter múltiplos
registros de agendamento de consultas e tratamentos.
* **Equipe Clínica:** a equipe clínica é composta por dentistas e outros
profissionais da área de saúde. Esses profissionais possuem um registro no
sistema que inclui informações sobre nome, registro profissional,
especialização, salário e histórico de admissão/demissão.
* **Agendamentos:** os pacientes realizam agendamentos com a equipe clínica
e esses agendamentos estão associados ao estado do paciente, ao horário
marcado e ao funcionário responsável pelo atendimento.
* **Procedimentos:** o sistema registra todos os procedimentos odontológicos
realizados, detalhando o nome do procedimento, descrição e valor.
* **Pagamentos:** os pagamentos dos procedimentos são registrados no
sistema, vinculando o paciente, o procedimento realizado e a forma de
pagamento, como seguro ou pagamento direto por exemplo.
* **Fornecedores e Compras:** o sistema gerencia os fornecedores da clínica e
as compras realizadas para manutenção e operação dos serviços
odontológicos, incluindo produtos e equipamentos utilizados nos
procedimentos.

## 📂 Outros Arquivos 

[Documentação Banco de Dados - Clínica Odontológica.pdf](https://github.com/user-attachments/files/18664821/Documentacao.Banco.de.Dados.-.Clinica.Odontologica.pdf)

## 🛠️ Construído com

<div style="display: inline-block"><br/>
  <img align="center" alt="html5" src="https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white" />
</div><br/>

## 👨🏽‍💻 Versão das Tecnologias

* MySQL 3.11.3

## ✅ Tomadas de Decisões
**Modelagem do Negócio:** Foi definido que o sistema deveria gerenciar pacientes, equipe clínica, fornecedores, agendamentos, procedimentos e pagamentos , garantindo um fluxo eficiente de informações.

**Modelo Conceitual (MER):** Foram criadas entidades como Paciente, Equipe Clínica, Fornecedor, Agendamento, Procedimento, Pagamento, Seguro, Registro Clínico, Compras, Laboratório Externo e suas relações.

**Modelo Relacional (MR):** As entidades foram convertidas em tabelas no MySQL Workbench , garantindo a normalização dos dados e a integridade referencial.

**Definição de Chaves Primárias e Estrangeiras:** Cada tabela recebeu um identificador único (PK) e foram estabelecidas relações através de chaves estrangeiras (FK) para garantir a integridade dos dados.

**Criação de Restrições de Integridade:** Foram aplicadas regras como não permitir valores nulos em campos críticos , garantir unicidade em registros como CPF e CNPJ, além de definir ações para CASCADE, NO ACTION e SET NULL em relações de dependência.

**Otimização para Consultas e Relatórios:** Foram criadas visualizações e scripts para facilitar consultas, relatórios gerenciais e análise de dados.

**Scripts para Gerenciamento de Dados:** Foram desenvolvidos scripts DDL (criação e alteração da estrutura) e DML (inserção, atualização e remoção de dados) para automação do banco.

## ✒️ Autores

| <img src="https://github.com/fernandesmelo/carona-solidaria/assets/113717317/1d3daac1-3d6a-40d6-b755-09d583ce392f" width="100" height="100" /> | <img src="https://github.com/user-attachments/assets/fa917b45-5cf7-4198-a42d-35340e41dacb" width="100" height="100" /> | <img src="https://github.com/user-attachments/assets/70bdb832-58ed-46c0-a454-a811f5024342" height="100" /> | <img src="https://github.com/user-attachments/assets/db9cc241-da0f-4df7-8f17-5a6baebdccab" width="100" height="100" /> |
|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|:-------------------------------------------------------:|
| [Laércio Fernandes](https://www.linkedin.com/in/laercio-fernandes/) | [Natália Santos](https://www.linkedin.com/in/natalia-bento-364b2b235/) | [Michel Cavassano](https://www.linkedin.com/in/michel-cavassano-127123189/) | [Matheus Bezerra](https://www.linkedin.com/in/matheus-bzrr/) | 

--Populando o Banco

-- Inserindo dados na tabela Cargos
INSERT INTO Cargos (nome) VALUES 
('Gerente de Vendas'),
('Analista de Marketing'),
('Desenvolvedor Web'),
('Assistente Administrativo'),
('Analista de Recursos Humanos');

-- Inserindo dados na tabela Funcionarios
INSERT INTO Funcionarios (nome, sobrenome, data_nascimento, endereco, email, telefone, data_contratacao, id_cargo, id_departamento, id_gerente) VALUES 
('Pedro', 'Almeida', '1980-03-15', 'Rua A, 123', 'pedro.almeida@email.com', '123456789', '2010-01-01', 4, 4, NULL), -- Assistente Administrativo, sem gerente
('Carlos', 'Ferreira', '1990-05-20', 'Av. B, 456', 'carlos.ferreira@email.com', '987654321', '2015-03-15', 3, 3, NULL), -- Desenvolvedor Web, sem gerente
('Lucas', 'Oliveira', '1985-08-10', 'Rua C, 789', 'lucas.oliveira@email.com', '555666777', '2012-06-10', 2, 2, 1), -- Analista de Marketing, gerente Maria Santos
('Mariana', 'Silva', '1978-04-25', 'Av. D, 1011', 'mariana.silva@email.com', '321654987', '2005-09-20', 5, 5, 3), -- Analista de Recursos Humanos, gerente Ana Souza
('Rafael', 'Gomes', '1970-12-03', 'Rua E, 1213', 'rafael.gomes@email.com', '999888777', '2000-02-28', 1, 1, 2); -- Gerente de Vendas, sem gerente

-- Inserindo dados na tabela Departamentos
INSERT INTO Departamentos (nome, id_gerente) VALUES 
('Vendas', 1), -- Supondo que o ID do gerente de Vendas seja 1
('Marketing', 2), -- Supondo que o ID do gerente de Marketing seja 2
('TI', NULL), -- Departamento sem gerente
('Administração', 4), -- Supondo que o ID do gerente de Administração seja 4
('RH', 5); -- Supondo que o ID do gerente de RH seja 5

-- Inserindo dados na tabela Gerentes
INSERT INTO Gerentes (nome, sobrenome, id_cargo, id_departamento) VALUES 
('João', 'Silva', 1, 1), -- Gerente de Vendas
('Maria', 'Santos', 2, 2), -- Gerente de Marketing
('Ana', 'Souza', 5, 5); -- Gerente de RH

-- Inserindo dados na tabela Historicos
INSERT INTO Historicos (id_funcionario, id_cargo, data_inicio, motivo_saida) VALUES 
(1, 4, '2010-01-01', NULL), -- Pedro Almeida, Assistente Administrativo
(2, 3, '2015-03-15', NULL), -- Carlos Ferreira, Desenvolvedor Web
(3, 2, '2012-06-10', NULL), -- Lucas Oliveira, Analista de Marketing
(4, 5, '2005-09-20', NULL), -- Mariana Silva, Analista de Recursos Humanos
(5, 1, '2000-02-28', NULL); -- Rafael Gomes, Gerente de Vendas

-- Inserindo dados na tabela Beneficios
INSERT INTO Beneficios (nome, tipo, custo, id_funcionario) VALUES 
('Plano de Saúde', 'Saúde', 200.00, 1), -- Pedro Almeida
('Vale Refeição', 'Alimentação', 150.00, 2), -- Carlos Ferreira
('Vale Transporte', 'Transporte', 100.00, 3), -- Lucas Oliveira
('Plano Odontológico', 'Saúde', 120.00, 4), -- Mariana Silva
('Seguro de Vida', 'Seguro', 50.00, 5); -- Rafael Gomes

-- Inserindo dados na tabela Salários
INSERT INTO Salarios (id_funcionario, salario, data_inicio) VALUES 
(1, 2500.00, '2010-01-01'), -- Pedro Almeida
(2, 3000.00, '2015-03-15'), -- Carlos Ferreira
(3, 3500.00, '2012-06-10'), -- Lucas Oliveira
(4, 4000.00, '2005-09-20'), -- Mariana Silva
(5, 5000.00, '2000-02-28'); -- Rafael Gomes
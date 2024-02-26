-- Criação do Banco de Dados
CREATE DATABASE RH_bd;

USE RH_bd;
GO

-- Criação das Tabelas

-- Tabela Cargos
CREATE TABLE Cargos (
    id_cargo INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL
);

-- Tabela Funcionários
CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone INT NOT NULL,
    data_contratacao DATE NOT NULL,
    id_cargo INT FOREIGN KEY REFERENCES Cargos(id_cargo),
    id_departamento INT NOT NULL,
    id_gerente INT NULL, -- Permitindo valores nulos para funcionários sem gerente
    FOREIGN KEY (id_gerente) REFERENCES Funcionarios(id_funcionario) -- Chave estrangeira para referenciar o ID do gerente
);

-- Tabela Departamentos
CREATE TABLE Departamentos (
    id_departamento INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    id_gerente INT NULL, -- Permitindo valores nulos para departamentos sem gerente
    FOREIGN KEY (id_gerente) REFERENCES Funcionarios(id_funcionario) -- Chave estrangeira para referenciar o ID do gerente
);

-- Tabela Gerentes
CREATE TABLE Gerentes (
    id_gerente INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    id_cargo INT FOREIGN KEY REFERENCES Cargos(id_cargo),
    id_departamento INT FOREIGN KEY REFERENCES Departamentos(id_departamento)
);

-- Tabela Histórico de Empregos
CREATE TABLE Historicos (
    id_historico INT PRIMARY KEY IDENTITY(1,1),
    id_funcionario INT FOREIGN KEY REFERENCES Funcionarios(id_funcionario),
    id_cargo INT FOREIGN KEY REFERENCES Cargos(id_cargo),
    data_inicio DATE NOT NULL,
    data_termino DATE,
    motivo_saida VARCHAR(100)
);

-- Tabela Benefícios
CREATE TABLE Beneficios (
    id_beneficio INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    id_funcionario INT FOREIGN KEY REFERENCES Funcionarios(id_funcionario) -- Chave estrangeira para referenciar o ID do funcionário
);

-- Tabela Salários
CREATE TABLE Salarios (
    id_salario INT PRIMARY KEY IDENTITY(1,1),
    id_funcionario INT FOREIGN KEY REFERENCES Funcionarios(id_funcionario), -- Chave estrangeira para referenciar o ID do funcionário
    salario DECIMAL(10,2) NOT NULL,
    data_inicio DATE NOT NULL,
    data_termino DATE
);
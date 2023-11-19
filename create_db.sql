-- Crie o banco de dados

CREATE DATABASE clinica_medica;

-- Conecte-se ao banco de dados

USE clinica_medica;

-- Crie a tabela setor

CREATE TABLE
    setor (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
    );

-- Crie a tabela pessoa

CREATE TABLE
    pessoa (
        id INT AUTO_INCREMENT PRIMARY KEY,
        sexo CHAR(1) NOT NULL,
        cpf CHAR(11) NOT NULL,
        nome VARCHAR(255) NOT NULL,
        data_nascimento DATE NOT NULL,
        idade INT NOT NULL,
        telefone VARCHAR(20) NOT NULL,
        endereço VARCHAR(255) NOT NULL,
        tipo ENUM(
            'Acompanhante',
            'Paciente',
            'Médico',
            'Administrativo'
        ) NOT NULL
    );

-- Crie a tabela paciente

CREATE TABLE
    paciente (
        id INT,
        historico TEXT NOT NULL,
        registro INT NOT NULL,
        FOREIGN KEY (id) REFERENCES pessoa (id)
    );

-- Crie a tabela acompanhante

CREATE TABLE
    acompanhante (
        id INT,
        grau_relacionamento VARCHAR(255) NOT NULL,
        id_paciente INT NOT NULL,
        FOREIGN KEY (id) REFERENCES pessoa (id),
        FOREIGN KEY (id_paciente) REFERENCES paciente (id)
    );

-- Crie a tabela médico

CREATE TABLE
    medico (
        id INT,
        id_setor INT NOT NULL,
        salário DECIMAL(10, 2) NOT NULL,
        crm CHAR(10) NOT NULL,
        especialização VARCHAR(255) NOT NULL,
        certificações VARCHAR(255) NOT NULL,
        FOREIGN KEY (id) REFERENCES pessoa (id),
        FOREIGN KEY (id_setor) REFERENCES setor (id)
    );

-- Crie a tabela administrativo

CREATE TABLE
    administrativo (
        id INT,
        id_setor INT NOT NULL,
        salário DECIMAL(10, 2) NOT NULL,
        cargo VARCHAR(255) NOT NULL,
        FOREIGN KEY (id) REFERENCES pessoa (id),
        FOREIGN KEY (id_setor) REFERENCES setor (id)
    );

CREATE TABLE
    Consulta (
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_paciente INT NOT NULL,
        id_medico INT NOT NULL,
        data DATE NOT NULL,
        FOREIGN KEY (id_paciente) REFERENCES paciente (id),
        FOREIGN KEY (id_medico) REFERENCES medico (id)
    );

CREATE TABLE
    Diagnóstico (
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_consulta INT NOT NULL,
        CID VARCHAR(255) NOT NULL,
        atestado VARCHAR(255) NOT NULL,
        medicamento VARCHAR(255) NOT NULL,
        recomendação VARCHAR(255) NOT NULL,
        FOREIGN KEY (id_consulta) REFERENCES consulta (id)
    );

CREATE TABLE
    Equipamento (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(255) NOT NULL,
        data_manutenção DATE NOT NULL
    );

CREATE TABLE
    Exame (
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_consulta INT NOT NULL,
        id_equipamento INT NOT NULL,
        nome VARCHAR(255) NOT NULL,
        data DATE NOT NULL,
        resultado VARCHAR(255) NOT NULL,
        FOREIGN KEY (id_equipamento) REFERENCES equipamento (id),
        FOREIGN KEY (id_consulta) REFERENCES consulta (id)
    );

CREATE TABLE
    Convenio (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(255) NOT NULL,
        id_paciente INT NOT NULL,
        cobertura VARCHAR(255) NOT NULL,
        FOREIGN KEY (id_paciente) REFERENCES paciente (id)
    );
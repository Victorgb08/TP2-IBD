USE clinica_medica;

-- Inserir dados na tabela setor

INSERT INTO setor (nome)
VALUES ('Cardiologia'), ('Ortopedia'), ('Pediatria'), ('Neurologia'), ('Oftalmologia'), ('Dermatologia'), ('Ginecologia'), ('Oncologia'), ('Radiologia'), ('Psiquiatria'), ('Urologia'), ('Otorrinolaringologia'), ('Nefrologia'), ('Endocrinologia'), ('Pneumologia');

-- Inserir dados na tabela pessoa

INSERT INTO
    pessoa (
        sexo,
        cpf,
        nome,
        data_nascimento,
        idade,
        telefone,
        endereço,
        tipo
    )
VALUES (
        'M',
        '12345678901',
        'João Silva',
        '1990-05-15',
        32,
        '(11) 98765-4321',
        'Rua A, 123',
        'Paciente'
    ), (
        'F',
        '98765432101',
        'Maria Oliveira',
        '1985-09-20',
        37,
        '(11) 98765-6789',
        'Rua B, 456',
        'Acompanhante'
    ), (
        'M',
        '23456789012',
        'Dr. Carlos Santos',
        '1978-03-10',
        44,
        '(11) 98765-8765',
        'Rua C, 789',
        'Médico'
    ), (
        'F',
        '34567890123',
        'Ana Souza',
        '1995-12-02',
        27,
        '(11) 98765-2345',
        'Rua D, 1011',
        'Administrativo'
    ), (
        'F',
        '45678901234',
        'Laura Pereira',
        '1988-07-18',
        34,
        '(11) 98765-5432',
        'Rua E, 567',
        'Paciente'
    ), (
        'M',
        '56789012345',
        'José Oliveira',
        '1980-01-25',
        42,
        '(11) 98765-8765',
        'Rua F, 890',
        'Acompanhante'
    ), (
        'F',
        '67890123456',
        'Dra. Renata Costa',
        '1975-11-30',
        47,
        '(11) 98765-2345',
        'Rua G, 1112',
        'Médico'
    ), (
        'M',
        '78901234567',
        'Rafael Lima',
        '1992-04-05',
        29,
        '(11) 98765-7890',
        'Rua H, 1314',
        'Administrativo'
    ), (
        'F',
        '89012345678',
        'Camila Santos',
        '1993-08-22',
        28,
        '(11) 98765-4321',
        'Rua I, 1516',
        'Paciente'
    ), (
        'M',
        '90123456789',
        'Carlos Martins',
        '1983-05-12',
        39,
        '(11) 98765-6789',
        'Rua J, 1718',
        'Acompanhante'
    ), (
        'F',
        '01234567890',
        'Dra. Amanda Oliveira',
        '1970-12-08',
        52,
        '(11) 98765-8765',
        'Rua K, 1920',
        'Médico'
    ), (
        'M',
        '12345678901',
        'Lucas Pereira',
        '1997-02-18',
        25,
        '(11) 98765-2345',
        'Rua L, 2122',
        'Administrativo'
    ), (
        'F',
        '23456789012',
        'Patrícia Silva',
        '1986-10-15',
        36,
        '(11) 98765-9876',
        'Rua M, 2324',
        'Paciente'
    ), (
        'M',
        '34567890123',
        'Fernando Oliveira',
        '1973-07-03',
        49,
        '(11) 98765-5432',
        'Rua N, 2526',
        'Acompanhante'
    ), (
        'F',
        '45678901234',
        'Dra. Beatriz Lima',
        '1980-03-25',
        42,
        '(11) 98765-6543',
        'Rua O, 2728',
        'Médico'
    ), (
        'M',
        '56789012345',
        'Roberto Martins',
        '1991-06-12',
        30,
        '(11) 98765-7654',
        'Rua P, 2930',
        'Administrativo'
    ), (
        'F',
        '67890123456',
        'Lúcia Souza',
        '1976-12-01',
        45,
        '(11) 98765-8765',
        'Rua Q, 3132',
        'Paciente'
    ), (
        'M',
        '78901234567',
        'Alexandre Lima',
        '1988-04-08',
        33,
        '(11) 98765-9876',
        'Rua R, 3334',
        'Acompanhante'
    ), (
        'F',
        '89012345678',
        'Dra. Juliana Pereira',
        '1972-09-14',
        50,
        '(11) 98765-6543',
        'Rua S, 3536',
        'Médico'
    ), (
        'M',
        '90123456789',
        'Guilherme Oliveira',
        '1995-01-20',
        27,
        '(11) 98765-7654',
        'Rua T, 3738',
        'Administrativo'
    );

-- Inserir dados fictícios na tabela administrativo

INSERT INTO
    administrativo (id, id_setor, salário, cargo)
VALUES (
        4,
        3,
        7500.00,
        'Secretário Executivo'
    ), (
        8,
        1,
        8200.00,
        'Assistente de Recursos Humanos'
    ), (
        12,
        4,
        9000.00,
        'Analista Financeiro'
    ), (
        16,
        2,
        7800.00,
        'Coordenador de Atendimento'
    ), (
        20,
        5,
        8500.00,
        'Especialista em TI'
    );

-- Inserir dados fictícios na tabela medico

INSERT INTO
    medico (
        id,
        id_setor,
        salário,
        crm,
        especialização,
        certificações
    )
VALUES (
        3,
        1,
        9500.00,
        'CRM987654',
        'Ortopedia',
        'Especialização em Ortopedia'
    ), (
        7,
        3,
        11000.00,
        'CRM876543',
        'Pediatria',
        'Especialização em Pediatria'
    ), (
        11,
        2,
        10500.00,
        'CRM765432',
        'Neurologia',
        'Especialização em Neurologia'
    ), (
        15,
        4,
        9800.00,
        'CRM654321',
        'Oftalmologia',
        'Especialização em Oftalmologia'
    ), (
        19,
        5,
        10200.00,
        'CRM543210',
        'Dermatologia',
        'Especialização em Dermatologia'
    );

-- Inserir dados fictícios na tabela paciente

INSERT INTO
    paciente (id, historico, registro)
VALUES (
        1,
        'Histórico qualquer para o paciente 1',
        123456
    ), (
        5,
        'Histórico qualquer para o paciente 5',
        789012
    ), (
        9,
        'Histórico qualquer para o paciente 9',
        345678
    ), (
        13,
        'Histórico qualquer para o paciente 13',
        901234
    ), (
        17,
        'Histórico qualquer para o paciente 17',
        567890
    );

-- Inserir dados fictícios na tabela acompanhante

INSERT INTO
    acompanhante (
        id,
        grau_relacionamento,
        id_paciente
    )
VALUES (2, 'Cônjuge', 1), (6, 'Amigo', 5), (10, 'Familiar', 9), (14, 'Irmão/Irmã', 13), (18, 'Namorado/Namorada', 17);
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

-- Inserir dados fictícios na tabela convenio

-- Inserir convênios de exemplo em uma única execução de código

INSERT INTO
    Convenio (nome, id_paciente, cobertura)
VALUES (
        'Plano A',
        1,
        'Cobertura básica'
    ), (
        'Plano B',
        5,
        'Cobertura completa'
    ), (
        'Plano C',
        9,
        'Cobertura odontológica'
    ), (
        'Plano D',
        13,
        'Cobertura de emergência'
    ), (
        'Plano E',
        17,
        'Cobertura especializada'
    );

-- Inserindo dados de exemplo na tabela Consulta

INSERT INTO
    consulta (id_paciente, id_medico, data)
VALUES (1, 3, '2023-01-01'), (5, 7, '2023-02-15'), (9, 11, '2023-03-10'), (13, 15, '2023-04-05'), (17, 19, '2023-05-20');

-- Inserindo dados de exemplo na tabela Diagnóstico

INSERT INTO
    diagnóstico (
        id_consulta,
        CID,
        atestado,
        medicamento,
        recomendação
    )
VALUES (
        1,
        'A001',
        'Apto para o trabalho',
        'Paracetamol; Ibuprofeno',
        'Repouso e hidratação'
    ), (
        2,
        'B102',
        'Apto para o trabalho',
        'Ibuprofeno; Aspirina',
        'Evitar esforço físico'
    ), (
        3,
        'C203',
        'Inapto para o trabalho',
        'Amoxicilina; Dipirona',
        'Seguir prescrição médica'
    ), (
        4,
        'D304',
        'Inapto para o trabalho',
        'Dipirona; Naproxeno',
        'Repouso absoluto'
    ), (
        5,
        'E405',
        'Apto para o trabalho',
        'Ciprofloxacino; Paracetamol',
        'Manter acompanhamento médico regular'
    );

-- Inserindo dados de exemplo na tabela Equipamento com nomes reais de equipamentos médicos de exame

INSERT INTO
    equipamento (nome, data_manutenção)
VALUES (
        'Ressonância Magnética',
        '2023-01-05'
    ), (
        'Tomografia Computadorizada',
        '2023-02-10'
    ), (
        'Mamógrafo Digital',
        '2023-03-15'
    ), (
        'Ecocardiograma',
        '2023-04-20'
    ), (
        'Endoscópio Flexível',
        '2023-05-25'
    ), (
        'Holter Monitor',
        '2023-06-30'
    ), (
        'Espectrômetro de Massas',
        '2023-07-05'
    ), (
        'Eletrocardiograma (ECG)',
        '2023-08-10'
    ), (
        'Microscópio Eletrônico',
        '2023-09-15'
    ), (
        'Monitor de Pressão Arterial Ambulatorial',
        '2023-10-20'
    );

-- Inserindo dados de exemplo na tabela Exame

INSERT INTO
    exame (
        id_consulta,
        id_equipamento,
        nome,
        data,
        resultado
    )
VALUES (
        1,
        1,
        'Ressonância Craniana',
        '2023-01-10',
        'Normal'
    ), (
        2,
        3,
        'Tomografia Abdominal',
        '2023-02-15',
        'Inflamação detectada'
    ), (
        3,
        5,
        'Mamografia',
        '2023-03-20',
        'Sem anomalias'
    ), (
        4,
        7,
        'Ecocardiograma Doppler',
        '2023-04-25',
        'Função cardíaca normal'
    ), (
        5,
        9,
        'Endoscopia Digestiva',
        '2023-05-30',
        'Úlcera identificada'
    );

-- Inserindo dados de exemplo adicionais na tabela Exame

INSERT INTO
    exame (
        id_consulta,
        id_equipamento,
        nome,
        data,
        resultado
    )
VALUES (
        1,
        2,
        'Exame de Sangue',
        '2023-01-12',
        'Níveis normais'
    ), (
        2,
        4,
        'Exame de Urina',
        '2023-02-17',
        'Sem infecções'
    ), (
        3,
        6,
        'Holter 24 horas',
        '2023-03-22',
        'Ritmo cardíaco estável'
    ), (
        4,
        8,
        'Eletroencefalograma (EEG)',
        '2023-04-27',
        'Padrões normais'
    ), (
        5,
        10,
        'Microscopia Eletrônica',
        '2023-06-01',
        'Células saudáveis'
    );

-- Inserindo dados adicionais de exemplo na tabela Consulta

INSERT INTO
    consulta (id_paciente, id_medico, data)
VALUES (5, 15, '2023-06-05'), (9, 3, '2023-07-10'), (13, 19, '2023-08-15'), (17, 7, '2023-09-20'), (1, 11, '2023-10-25');

-- Inserindo dados adicionais de exemplo na tabela Consulta

INSERT INTO
    consulta (id_paciente, id_medico, data)
VALUES (5, 11, '2023-11-05'), (9, 3, '2023-12-10'), (13, 15, '2024-01-15'), (17, 7, '2024-02-20'), (1, 19, '2024-03-25'), (5, 3, '2024-04-30'), (9, 15, '2024-05-05'), (13, 7, '2024-06-10'), (17, 11, '2024-07-15'), (1, 19, '2024-08-20');
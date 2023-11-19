import mysql.connector
from mysql.connector import errorcode

# Conectar ao banco de dados
try:
    conn = mysql.connector.connect(
        user='root',
        password='senha',  # Substituir pela senha do seu usuário
        host='localhost',
        database='clinica_medica'
    )

    cursor = conn.cursor()

    # Consulta 1: Selecionar todos os pacientes
    cursor.execute("SELECT * FROM pessoa WHERE tipo = 'Paciente'")
    pacientes = cursor.fetchall()
    print("\nConsulta 1: Todos os pacientes:")
    for paciente in pacientes:
        print(paciente)

    # Consulta 2: Selecionar todos os médicos
    cursor.execute("SELECT * FROM pessoa WHERE tipo = 'Médico'")
    medicos = cursor.fetchall()
    print("\nConsulta 2: Todos os médicos:")
    for medico in medicos:
        print(medico)

    # Consulta 3: Selecionar todas as consultas
    cursor.execute("SELECT * FROM consulta")
    consultas = cursor.fetchall()
    print("\nConsulta 3: Todas as consultas:")
    for consulta in consultas:
        print(consulta)

    # Atualização: Atualizar o salário de um médico
    cursor.execute("SELECT id, salário FROM medico LIMIT 1")
    medico_para_atualizar = cursor.fetchone()
    novo_salario = medico_para_atualizar[1] + 1000
    cursor.execute("UPDATE medico SET salário = %s WHERE id = %s",
                   (novo_salario, medico_para_atualizar[0]))
    conn.commit()
    print("\nAtualização: Salário do médico atualizado.")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Erro de acesso - Verifique usuário e senha.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Banco de dados não existe.")
    else:
        print("Erro:", err)

finally:
    if 'conn' in locals() and conn.is_connected():
        cursor.close()
        conn.close()
        print("\nConexão ao banco de dados fechada.")

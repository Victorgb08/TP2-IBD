import mysql.connector
from mysql.connector import errorcode
from dotenv import load_dotenv
import os
from tabulate import tabulate

# Carregar variáveis de ambiente do arquivo .env
load_dotenv()

# Obter informações do banco de dados do ambiente
db_user = os.getenv("DB_USER")
db_password = os.getenv("DB_PASSWORD")
db_host = os.getenv("DB_HOST")
db_database = os.getenv("DB_DATABASE")

# Conectar ao banco de dados
try:
    conn = mysql.connector.connect(
        user=db_user,
        password=db_password,
        host=db_host,
        database=db_database
    )

    cursor = conn.cursor()

    # Consulta 1: Selecionar todos os pacientes com atributos da tabela paciente
    cursor.execute(
        "SELECT pessoa.*, paciente.historico, paciente.registro FROM pessoa JOIN paciente ON pessoa.id = paciente.id WHERE tipo = 'Paciente'")
    pacientes = cursor.fetchall()
    print("\nConsulta 1: Todos os pacientes com atributos da tabela paciente:")
    print(tabulate(pacientes, headers=[
        "ID_pessoa", "Sexo", "CPF", "Nome", "Data de Nascimento", "Idade", "Telefone", "Endereço", "Tipo", "Histórico", "Registro"], tablefmt="psql"))

    # Consulta 2: Todos os médicos com atributos da tabela médico e nome do setor
    cursor.execute("SELECT pessoa.*, setor.nome AS nome_setor, medico.salário, medico.crm, medico.especialização, medico.certificações "
                   "FROM pessoa "
                   "JOIN medico ON pessoa.id = medico.id "
                   "JOIN setor ON medico.id_setor = setor.id "
                   "WHERE tipo = 'Médico'")
    medicos = cursor.fetchall()
    print("\nConsulta 2: Todos os médicos com atributos da tabela médico e nome do setor:")
    print(tabulate(medicos, headers=[
        "ID_pessoa", "Sexo", "CPF", "Nome", "Data de Nascimento", "Idade", "Telefone", "Endereço", "Tipo", "Nome_Setor", "Salário", "CRM", "Especialização", "Certificações"], tablefmt="psql"))

    # Consulta 3: Todas as consultas com nomes de médico e paciente
    cursor.execute("SELECT consulta.id, paciente_nome.nome AS paciente, medico_nome.nome AS medico, consulta.data FROM consulta "
                   "JOIN pessoa AS paciente_nome ON consulta.id_paciente = paciente_nome.id "
                   "JOIN pessoa AS medico_nome ON consulta.id_medico = medico_nome.id")
    consultas = cursor.fetchall()
    print("\nConsulta 3: Todas as consultas com nomes de médico e paciente:")
    print(tabulate(consultas, headers=[
        "ID", "Paciente", "Médico", "Data"], tablefmt="psql"))

    # Consulta 4: Tipo da pessoa relacionada a pacientes, médicos e acompanhantes
    cursor.execute("SELECT pessoa.id, pessoa.nome, 'Paciente' AS tipo FROM pessoa "
                   "JOIN paciente ON pessoa.id = paciente.id "
                   "UNION "
                   "SELECT pessoa.id, pessoa.nome, 'Médico' AS tipo FROM pessoa "
                   "JOIN medico ON pessoa.id = medico.id "
                   "UNION "
                   "SELECT pessoa.id, pessoa.nome, 'Acompanhante' AS tipo FROM pessoa "
                   "JOIN acompanhante ON pessoa.id = acompanhante.id")
    tipos_pessoas = cursor.fetchall()
    print("\nConsulta 4: Tipo da pessoa relacionada a pacientes, médicos e acompanhantes:")
    print(tabulate(tipos_pessoas, headers=[
        "ID", "Nome", "Tipo"], tablefmt="psql"))

    # Consulta 5: Pessoas na tabela acompanhante com tipo incompatível
    cursor.execute("SELECT pessoa.id, pessoa.nome, 'Acompanhante' AS tipo "
                   "FROM pessoa "
                   "JOIN acompanhante ON pessoa.id = acompanhante.id "
                   "WHERE pessoa.tipo != 'Acompanhante'")
    incompativeis_acompanhantes = cursor.fetchall()
    print("\nConsulta 5: Pessoas na tabela acompanhante com tipo incompatível:")
    print(tabulate(incompativeis_acompanhantes, headers=[
        "ID", "Nome", "Tipo"], tablefmt="psql"))

    # Operação de atualização para corrigir o tipo da pessoa incompatível na tabela acompanhante
    cursor.execute("UPDATE pessoa "
                   "JOIN acompanhante ON pessoa.id = acompanhante.id "
                   "SET pessoa.tipo = 'Acompanhante' "
                   "WHERE pessoa.tipo != 'Acompanhante'")
    conn.commit()
    print("\nOperação de atualização concluída: Tipos incompatíveis corrigidos.")

    # UPDATE: Atualizar o salário de um médico
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

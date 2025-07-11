REM Como o DynamoDB não possui JOIN como bancos relacionais (como MySQL ou PostgreSQL), para obter dados relacionados entre matriculas, alunos, disciplinas e professores, precisamos fazer múltiplas consultas separadas ou usar um design desnormalizado (Single Table Design).

REM select Matriculas
aws dynamodb get-item ^
  --table-name Matriculas ^
  --key "{\"id_matricula\": {\"S\": \"M001\"}}"

REM select Alunos
aws dynamodb get-item ^
  --table-name Alunos ^
  --key "{\"id_aluno\": {\"S\": \"A001\"}}"

REM select Disciplinas
aws dynamodb get-item ^
  --table-name Disciplinas ^
  --key "{\"id_disciplina\": {\"S\": \"D001\"}}"

REM select Professores
aws dynamodb get-item ^
  --table-name Professores ^
  --key "{\"id_professor\": {\"S\": \"P001\"}}"
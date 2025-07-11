REM Este projeto visa montar um banco nosql para um sistema escolar, abrangendo alunos, disciplinas, professores e matrículas. Em um ambiente windows

REM tabela Alunos
aws dynamodb create-table ^
  --table-name Alunos ^
  --attribute-definitions AttributeName=id_aluno,AttributeType=S ^
  --key-schema AttributeName=id_aluno,KeyType=HASH ^
  --billing-mode PAY_PER_REQUEST

REM tabela Professores
aws dynamodb create-table ^
  --table-name Professores ^
  --attribute-definitions AttributeName=id_professor,AttributeType=S ^
  --key-schema AttributeName=id_professor,KeyType=HASH ^
  --billing-mode PAY_PER_REQUEST

REM tabela Disciplinas
aws dynamodb create-table ^
  --table-name Disciplinas ^
  --attribute-definitions AttributeName=id_disciplina,AttributeType=S ^
  --key-schema AttributeName=id_disciplina,KeyType=HASH ^
  --billing-mode PAY_PER_REQUEST

REM tabela Matriculas
aws dynamodb create-table ^
  --table-name Matriculas ^
  --attribute-definitions AttributeName=id_matricula,AttributeType=S ^
  --key-schema AttributeName=id_matricula,KeyType=HASH ^
  --billing-mode PAY_PER_REQUEST
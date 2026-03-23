## Pastas Criada

/home/gomes/Documentos/lab_pratica/
├── backup/
├── log/
└── script/
    └── backup_postgres.sh

# Backup automático PostgreSQL com Cron

Projeto simples para automatizar backup de um banco PostgreSQL no Linux usando Bash e Cron.

## Estrutura

- `backup/`: armazena os arquivos `.sql` gerados pelo backup
- `log/`: armazena o arquivo de log das execuções
- `script/`: armazena o script `backup_postgres.sh`

## Banco de Dados

- Banco: `teste`
- Usuário do cron: `postgres`

## Como funciona

O script executa o `pg_dump` do banco `teste`, salva o arquivo na pasta `backup` com data e hora no nome e registra o resultado no arquivo `backup.log`.

## Permissões

Como o agendamento foi feito no usuário `postgres`, foi necessário dar permissão para ele acessar a pasta do projeto e escrever nos diretórios de backup e log.

## Teste manual

Antes de agendar no cron, o script foi testado manualmente no usuário `postgres` para validar se o backup estava sendo criado corretamente.

## Agendamento

O cron foi configurado para executar o script todos os dias às `20:05`.

## Verificação

Após a execução, é possível conferir:

- os arquivos criados na pasta `backup`
- as mensagens registradas em `log/backup.log`

## Restauração

Os arquivos `.sql` gerados podem ser usados depois para restaurar o banco com `psql`.

## Objetivo do laboratório

Praticar:

- automação de backup no PostgreSQL
- criação de script Bash
- uso de cron no Linux
- permissões com `chmod` e `chown`
- organização de rotina básica de DBA

# Trabalho2

# Documentação de Configuração e Deploy

## URLs da Aplicação

- **Aplicação de Produção (main)**:  
  [white-wave-0ad494b10.4.azurestaticapps.net](https://white-wave-0ad494b10.4.azurestaticapps.net)

- **Aplicação de Teste (develop)**:  
  [red-pond-0ddc0d810.4.azurestaticapps.net](https://red-pond-0ddc0d810.4.azurestaticapps.net)

## Web Static Apps para Cada Branch

Foram desenvolvidos dois **Web Static Apps** no Azure, cada um correspondendo a uma branch principal do repositório:

1. **Produção**: A branch `main` está vinculada à aplicação de produção.
2. **Teste**: A branch `develop` está vinculada à aplicação de teste.

Esses aplicativos são configurados para fornecer diferentes ambientes, permitindo testar alterações na branch de desenvolvimento antes de implementá-las na produção.

## Banco de Dados

Foram criados dois bancos de dados no Supabase, um para cada ambiente:

1. **Banco de Dados de Produção**: Associado à branch `main`.
2. **Banco de Dados de Teste**: Associado à branch `develop`.

Além disso, foram criadas pastas de **migrations** em cada repositório, contendo scripts de migração necessários para aplicar alterações no banco de dados sempre que houver mudanças no código. Esses scripts são usados automaticamente durante os processos de CI/CD para atualizar os bancos de dados.

## Atualizações da Aplicação de Teste

A aplicação de teste, vinculada à branch `develop`, é atualizada automaticamente a cada **push** para a branch `develop`. Isso garante que todas as alterações realizadas na branch de desenvolvimento sejam refletidas imediatamente na aplicação de teste.

## Atualizações da Aplicação de Produção

A aplicação de produção é atualizada **todos os dias às 21h**, independentemente de haver alterações ou não. Isso é feito para garantir que a aplicação de produção esteja sempre atualizada com o código mais recente da branch `main`. O processo de atualização é automatizado e ocorre através do pipeline de CI/CD configurado no GitHub Actions.


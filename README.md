# Colocando os códigos e práticas com Git e GitHub

- Dentro do git.sh estou colocando os códigos e algumas explicações.

## Entendendo o funcionamento do Git

### Sha1

Secure Hash Algorith (Algorítmo de hash seguro) - Algorítmo que faz o encriptamento de um arquivo, a encriptação gera um conjunto de 40 caracteres onde cada conjunto é único, e serve como identificação. Representa um arquivo de forma única.

Comando que gera um sha1 para o arquivo:

![](https://github.com/NandesLima/git-e-gitHub-codigos/blob/master/imagens/openssl-sha1.png)

### Objetos Internos do Git (Responsáveis pelo versionamento)

Objetos são constituídos por metadados.

#### Blobs (bolhas)

Blobs são a composição básica dos objetos.

Metadados:

- Tipo: blob
- Tamanho do arquivo
- \0
- Conteúdo do blob
- sha1 próprio

#### Trees (Árvores)

São objetos que armazenam blobs e outras trees.

Metadados:

- Tipo: tree
- \0
- Aponta para blobs e trees que possuem o seu sha1.
- Guarda os nomes dos arquivos.
- sha1 próprio

#### Commit

Junta os blobs e trees e criam um projeto. E permite a vizualização da linha do tempo de alteração.

Metadados:

- Tipo: commit
- Aponta para uma tree que aponta para outras trees e blobs
- Aponta para o commit anterior a ele
- Aponta para um Autor
- Aponta para uma Mensagem (Que deve descrever as alterações realizadas)
- Possui um timestamp (Carimbo de tempo)
- sha1 próprio

## Status dos arquivos no Git

### Untracked

Arquivo que o git ainda não tem ciencia.

### Tracked

Arquivos que o git tem ciencia da sua existência. Possuem três estados.

#### Unmodified

Arquivos que não sofreram modificação.

#### Modified

Arquivos que sofreram alguma modificação. 

#### Staged

Estado que os arquivo Modified e Untracked ficam, esperando ser comitados. 

## Ciclo de vida dos arquivos no git

| Untracked       |                          | Unmodifie        |                   | Modified      |              | Staged       |
| --------------- | ------------------------ | ---------------- | ----------------- | ------------- | ------------ | ------------ |
| o-------------- | ------------------------ | ---------------- | Adicionar arquivo | ------------- | ------------ | -----------> |
|                 |                          | o--------------  | Editar arquivo    | ------------> |              |              |
|                 |                          |                  |                   | o-----------  | "Staged"     | -----------> |
| <-------------- | Remover Arquivo          | --------------o  |                   |               |              |              |
|                 |                          | <--------------  | Commit            | ------------- | ------------ | -----------o |

1. Arquivos que estão como Untracked são adicionados ao status de Staged, quando se utiliza o comando git add.
2. Arquivos Unmodified quando sofrem qualquer alteração ficam com o Status de Modified.
3. Arquivos Modified são adicionados ao status Staged, quando utiliza-se o comando git add.
4. Arquivos Unmodified quando removidos, tornam-se Untracked.
5. Arquivos na camada de Staged, aguardam ser comitados, com o comando git commit eles são comitados e se tornam Unmodified.

## Ambiente de Desenvolvimento

Ambiente de desenvolvimento é formado por toda a parte que fica na máquina.

| Diretório de trabalho            |              | Staging Área         |                 | Repositório Local (Git)           |
| -------------------------------- | ------------ | -------------------- | --------------- | --------------------------------- |
| o------------------------------- | git add      | -------------------> |                 |                                   |
|                                  |              | o------------------  | git commit      | --------------------------------> |
| Untracked/Modified               | -----------> | Staged               | --------------> | Unmodified                        |

1. Arquivos criados e/ou modificados no Diretório de trabalho vão para a área de Staging.
2. Os arquivos na Staging Área possuem as mudificações que "esperam" para ser commitadas.
3. No repositório local ficam apenas os commits.

| Repositório Local (Git) | ------------ | git push | -----------> | Repositório Remoto (GitHub) |
| ----------------------- | ------------ | -------- | ------------ | --------------------------- |

## Chaves ssh

### SSH

Conexão segura entre duas máquinas com uma chave pública e chave privada.

Para gerar as chaves no terminal entre o acesso remoto e o local:

- ssh-keygen -t ed25519 -C "e-mail"
- eval $(ssh-agent -s)
- ssh-add arquivo-do-id

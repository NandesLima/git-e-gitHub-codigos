# Colocando os códigos e práticas com Git e GitHub

- Dentro do git.sh estou colocando os códigos e algumas explicações.

### Entendendo o funcionamento do Git

#### Sha1

Secure Hash Algorith (Algorítmo de hash seguro) - Algorítmo que faz o encriptamento de um arquivo, a encriptação gera um conjunto de 40 caracteres onde cada conjunto é único, e serve como identificação. Representa um arquivo de forma única.

Comando que gera um sha1 para o arquivo:

![](https://github.com/NandesLima/git-e-gitHub-codigos/blob/master/imagens/openssl-sha1.png)

#### Objetos Internos do Git (Responsáveis pelo versionamento)

Objetos são constituídos por metadados.

##### Blobs (bolhas)

Blobs são a composição básica dos objetos.

Metadados:

 - Tipo: blob
 - Tamanho do arquivo
 - \0
 - Conteúdo do blob
 - sha1 próprio

##### Trees (Árvores)

São objetos que armazenam blobs e outras trees.

Metadados:

 - Tipo: tree
 - \0
 - Aponta para blobs e trees que possuem o seu sha1.
 - Guarda os nomes dos arquivos.
 - sha1 próprio

##### Commit

Junta os blobs e trees e criam um projeto. E permite a vizualização da linha do tempo de alteração.

Metadados:

 - Tipo: commit
 - Aponta para uma tree que aponta para outras trees e blobs
 - Aponta para o commit anterior a ele
 - Aponta para um Autor
 - Aponta para uma Mensagem (Que deve descrever as alterações realizadas)
 - Possui um timestamp (Carimbo de tempo)
 - sha1 próprio
 

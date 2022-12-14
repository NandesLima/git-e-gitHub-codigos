#!/bin/bash

# Comando para o repositório local

openssl sha1 nome_do_arquivo # Guarda o versionamento e cria um código sha1

git init  # Inicia o repositório dentro de um diretório local
git add . # Adiciona todos os arquivos untracked ou modified para a área de staged
git add * # Adiciona todos os arquivos untracked ou modified para a área de staged
git add nome_do_arquivo # Adiciona um arquivo para a área de staged
git commit -m 'Mensagem do Commit' # Cria o commit com todos os arquivos na área de Staged deixando eles  com o status Unmodified
				   # Um commit deixa as alterações rastreáveis.
				   # O -m pede um comentário sobre as mudanças do commit.
git merge # Precisa juntar alterações de uma determinada branch com a master.
git status # Mostra as informações de status do repositório local, Untracked, Unmodified, Modified, Staged
git log # Mostra as alterações que o projeto vem sofrendo
	# Mostra o hash dos commits, mostra a branch, o autor, data e a mensagem do commit.
git branch nome_do_branch # Cria um novo ramo, o git init cria um branch master, o git branch cria ramificações.
			  # Os branchs servem para partes diferentes dentro do projeto.
			  # Visualiza todas as branchs
git config --global user.email 'e-mail' # Atualiza o e-mail do usuário no GIT
git config --global user.name username_do_repositorio_remoto # Atualiza o username do usuário no GIT
git config --list # Lista todas as configurações do Git
git config --global --unset user.email # Apaga configuraçãos de e-mail Git
git config --global --unset user.name # Apaga configurações de user do Git


# Comandos para gerar as chaves SSH - passo a passo

ssh-keygen -t ed25519 -C 'e-mail'
eval $(ssh-agent -s) # Cria um agente
ssh-add arquivo_do_id # Associa a chave privada


# Comandos do acesso remoto

git remote add origin link_do_repositório_remoto # Cria uma conexão entre o repositório local e o remoto
git remote - v # Mostra as conexões remotas que o repositório local tem
git remote --verbose # Mostra as conexões remotas que o repositório local tem
# Documentação: https://git-scm.com/docs
git push # Publica as alterações, os commits, do repositório local para o repos>
git push origin master # Publicação feita pela branch master
git pull # Atualiza o repositório local conforme o repositório remoto.
git pull oringin master # Atualizar o repositório a partir do branch master
git clone link.git # Clona um projeto do repositório remoto


#!/bin/bash

echo "Criando diretório"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Create user"

useradd jao -m -s /bin/bash -G GRP_VEN
useradd seuze -m -s /bin/bash -G GRP_VEN
useradd rodri -m -s /bin/bash -G GRP_VEN

useradd ceo -m -s /bin/bash -G GRP_ADM
useradd cto -m -s /bin/bash -G GRP_ADM

useradd cassio -m -s /bin/bash -G GRP_SEC

echo "Permissões de grupos, diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Feito"

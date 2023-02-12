#!/bin/bash


echo " "
echo "BAIXANDO AS ATUALIZAÇÕES"
echo " "

sleep 2

git reset --hard
git pull

echo " "
echo "ACESSANDO O BACKEND"
echo " "

sleep 2

cd backend

echo " "
echo "ATUALIZANDO OS ARQUIVOS DO BACKEND"
echo " "

sleep 2

rm -rf node_modules
npm install
rm -rf dist
npm run build

echo " "
echo "EXECUTANDO O MIGRATE E SEED"
echo " "

sleep 2

npx sequelize db:migrate
npx sequelize db:seed


echo " "
echo "PRESS TICKET ATUALIZADO COM SUCESSO!!!"
echo " "
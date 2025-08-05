#!/bin/bash
# Script de Deploy Rápido BRIG

echo "🚀 Deploy BRIG para farmaco.maxapex.net/brig/"
echo "==========================================="

# Configurações (ajuste conforme necessário)
USER="seu_usuario"
HOST="farmaco.maxapex.net"
REMOTE_PATH="/public_html/brig/"
LOCAL_PATH="output/"

# Opções de deploy
echo "Escolha o método de deploy:"
echo "1) Rsync completo (recomendado para atualizações)"
echo "2) Upload arquivo compactado"
echo "3) Apenas arquivos essenciais (HTML/CSS/JS)"
read -p "Opção (1-3): " opcao

case $opcao in
  1)
    echo "📤 Sincronizando com rsync..."
    rsync -avz --compress-level=9 --delete --progress \
      $LOCAL_PATH $USER@$HOST:$REMOTE_PATH
    ;;
  2)
    echo "📦 Criando arquivo compactado..."
    tar -czf brig-deploy.tar.gz -C output .
    echo "📤 Enviando arquivo..."
    scp brig-deploy.tar.gz $USER@$HOST:~/
    echo "📥 Extraindo no servidor..."
    ssh $USER@$HOST "cd $REMOTE_PATH && tar -xzf ~/brig-deploy.tar.gz && rm ~/brig-deploy.tar.gz"
    rm brig-deploy.tar.gz
    ;;
  3)
    echo "📤 Enviando apenas essenciais..."
    rsync -avz --compress-level=9 --progress \
      --include="*.html" --include="*.css" --include="*.js" \
      --include="*.png" --include="*.jpg" --include="assets/" \
      --include="*/" --exclude="*" \
      $LOCAL_PATH $USER@$HOST:$REMOTE_PATH
    ;;
esac

echo "✅ Deploy concluído!"
echo "🌐 Acesse: http://farmaco.maxapex.net/brig/"
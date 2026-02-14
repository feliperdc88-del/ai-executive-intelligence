#!/bin/bash

# 🚀 Quick Deploy Script
# Automatiza o processo de publicar no GitHub

echo "🚀 AI Executive Intelligence - Quick Deploy"
echo "=========================================="
echo ""

# Pedir username do GitHub
echo "Qual é o seu username do GitHub?"
read -p "Username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ Username não pode ser vazio!"
    exit 1
fi

# Confirmar
echo ""
echo "📝 Configuração:"
echo "   GitHub User: $GITHUB_USER"
echo "   Repository: ai-executive-intelligence"
echo "   URL: https://github.com/$GITHUB_USER/ai-executive-intelligence"
echo ""
read -p "Está correto? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Cancelado"
    exit 1
fi

# Adicionar remote
echo ""
echo "🔗 Adicionando remote do GitHub..."

# Remover remote se já existir
git remote remove origin 2>/dev/null

# Adicionar novo remote
git remote add origin "https://github.com/$GITHUB_USER/ai-executive-intelligence.git"

echo "✅ Remote adicionado"

# Push
echo ""
echo "📤 Enviando código para GitHub..."
echo "   (você pode precisar fazer login)"
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 SUCESSO! Código publicado no GitHub!"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📦 Repositório: https://github.com/$GITHUB_USER/ai-executive-intelligence"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "🚀 PRÓXIMO PASSO:"
    echo ""
    echo "1. Abra: https://github.com/$GITHUB_USER/ai-executive-intelligence"
    echo "2. Edite README.md e substitua SEU-USUARIO por: $GITHUB_USER"
    echo "3. Clique no botão 'Deploy to Vercel'"
    echo "4. Siga o guia DEPLOY-GITHUB-VERCEL.md"
    echo ""
    echo "✨ Ou use este link direto para deploy:"
    echo "   https://vercel.com/new/clone?repository-url=https://github.com/$GITHUB_USER/ai-executive-intelligence"
    echo ""
else
    echo ""
    echo "❌ Erro ao enviar código"
    echo ""
    echo "🔍 Possíveis causas:"
    echo "   1. Repositório ainda não foi criado no GitHub"
    echo "   2. Username incorreto"
    echo "   3. Sem permissão de acesso"
    echo ""
    echo "📝 Crie o repositório primeiro:"
    echo "   https://github.com/new"
    echo "   Nome: ai-executive-intelligence"
    echo "   Visibilidade: Public"
    echo ""
    echo "Depois rode este script novamente."
    echo ""
fi

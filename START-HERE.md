# ⚡ DEPLOY EM 3 PASSOS - 5 MINUTOS

## 🎯 O Que Fazer

1. Publicar no GitHub
2. Clicar no botão "Deploy to Vercel"
3. Pronto! Sistema no ar

**Tempo:** 5 minutos  
**Resultado:** URL funcionando

---

## 📍 PASSO 1: Publicar no GitHub (2 min)

### 1.1. Criar Repositório

**Acesse:** https://github.com/new

**Preencha:**
```
Repository name: ai-executive-intelligence
Description: Sistema de IA para análise de reuniões
Visibilidade: ● Public  ← IMPORTANTE!
```

**NÃO marque nada** (README, .gitignore, License)

**Clique:** Create repository

### 1.2. Enviar Código

**Na página que abrir, copie os comandos e execute:**

```bash
cd ai-executive-deploy-package

git remote add origin https://github.com/SEU-USUARIO/ai-executive-intelligence.git

git push -u origin main
```

**Substitua `SEU-USUARIO`** pelo seu username!

✅ **PRONTO! Código no GitHub**

---

## 📍 PASSO 2: Deploy Automático com Vercel (2 min)

### 2.1. Atualizar README no GitHub

1. No GitHub, clique em **`README.md`**
2. Clique no **lápis** (Edit)
3. **Linha 5**, troque `SEU-USUARIO` pelo seu username:
   ```markdown
   [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/joaosilva/ai-executive-intelligence)
   ```
4. **Commit changes**

### 2.2. Clicar no Botão Deploy

1. **No README**, clique no botão azul:
   
   **Deploy to Vercel** ←

2. **Vercel abre** e pede login (use GitHub)

3. **Clique "Create"** 

4. **Aguarde 30 segundos**

5. **✅ PRONTO! URL funcionando:**
   ```
   https://ai-executive-intelligence-xyz.vercel.app
   ```

**Copie essa URL!**

---

## 📍 PASSO 3: Configurar OAuth + Client ID (5 min)

### 3.1. Google Cloud OAuth

Siga: **`DEPLOY_NOW.md`** seção "Configurar Google OAuth"

**Resumo ultra-rápido:**

1. https://console.cloud.google.com → Novo Projeto
2. Ativar Drive API
3. Criar OAuth Client ID
4. **Redirect URIs:** Cole sua URL do Vercel
5. **Copie o Client ID**

### 3.2. Adicionar Client ID

**No GitHub:**

1. Abra `index.html`
2. Edite (lápis)
3. Linha 133, cole seu Client ID:
   ```javascript
   const GOOGLE_CLIENT_ID = '123456-abc.apps.googleusercontent.com';
   ```
4. Commit changes

**Vercel faz redeploy automático em 30 segundos!**

---

## ✅ USAR O SISTEMA

1. **Abra:** sua URL do Vercel
2. **Cole** Claude API Key
3. **Configure** pasta: `/Reuniões-AI/Transcrições/2026`
4. **Conecte** Google Drive
5. **Auto-sync ativa!** 🎉

---

## 🚀 ALTERNATIVAMENTE: Deploy Direto (Ainda Mais Rápido)

Se já tem o repo no GitHub, use este link direto:

```
https://vercel.com/new/clone?repository-url=https://github.com/SEU-USUARIO/ai-executive-intelligence
```

Substitua `SEU-USUARIO` e abra no navegador!

---

## 🔄 Auto-Deploy Configurado

De agora em diante:

```
Edita código no GitHub 
   → Commit 
   → Vercel redeploy automático 
   → Live em 30 seg
```

**Zero esforço!**

---

## 📞 Links Úteis

- **Criar repo GitHub:** https://github.com/new
- **Vercel Dashboard:** https://vercel.com/dashboard  
- **Google Cloud:** https://console.cloud.google.com
- **Claude API:** https://console.anthropic.com/settings/keys

---

## 🆘 Problemas?

**Não consegue fazer push:**
- Certifique que criou o repo no GitHub
- Verifique seu username

**Botão Vercel não funciona:**
- Repo precisa ser Public
- Verifique URL no README

**Mais ajuda:**
- Veja `DEPLOY-GITHUB-VERCEL.md` (guia completo)
- Veja `DEPLOY_NOW.md` (OAuth detalhado)

---

**É isso! 3 passos, 5 minutos, sistema no ar!** 🎉


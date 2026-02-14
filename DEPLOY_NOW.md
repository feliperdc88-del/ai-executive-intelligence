# 🚀 DEPLOY AGORA - 3 Comandos, 10 Minutos

## ✨ Pacote Pronto Para Deploy

Este pacote contém TUDO configurado e pronto para deploy.

**Conteúdo:**
- ✅ `index.html` - Sistema completo
- ✅ `vercel.json` - Configuração Vercel
- ✅ `package.json` - Metadados do projeto
- ✅ `.gitignore` - Arquivos a ignorar

---

## 🎯 OPÇÃO 1: Deploy Mais Rápido (Vercel Web) - 5 MINUTOS

### Passo 1: Acesse Vercel

Abra: https://vercel.com/new

### Passo 2: Upload do Projeto

1. Clique em **"Deploy"** ou **"Add New Project"**
2. Escolha **"Upload files"** ou arraste a pasta completa
3. **Nome do projeto:** `ai-executive-intelligence`
4. Clique **"Deploy"**

**Pronto!** Em 30 segundos você tem uma URL:
```
https://ai-executive-intelligence-SEU-USERNAME.vercel.app
```

### Passo 3: Copie a URL

Salve essa URL, você vai precisar!

---

## 🎯 OPÇÃO 2: Deploy Via CLI (Mais Controle) - 10 MINUTOS

### Pré-requisitos

Certifique-se que tem instalado:
- Node.js: https://nodejs.org/ (v18+)
- Git: https://git-scm.com/

### Comandos (Cole no Terminal)

```bash
# 1. Instalar Vercel CLI
npm install -g vercel

# 2. Navegar para a pasta do projeto
cd caminho/para/ai-executive-deploy-package

# 3. Deploy!
vercel --prod
```

**O que acontece:**
1. Pede login no Vercel (navegador abre)
2. Pergunta configurações (aceite defaults)
3. Faz deploy
4. Retorna URL: `https://...vercel.app`

**Tempo:** ~2 minutos

---

## 🔐 Configurar Google OAuth

Agora que tem a URL do Vercel, vamos configurar Google Drive.

### Passo 1: Criar Projeto no Google Cloud

1. **Acesse:** https://console.cloud.google.com/
2. Clique no seletor de projetos (topo)
3. **"Novo Projeto"**
4. Nome: `AI Executive Intelligence`
5. Clique **"Criar"**
6. Aguarde ~10 segundos
7. Selecione o projeto criado

### Passo 2: Ativar Google Drive API

1. Menu lateral → **"APIs e Serviços"** → **"Biblioteca"**
2. Busque: `Google Drive API`
3. Clique na API
4. Clique **"Ativar"**
5. Aguarde ~5 segundos

### Passo 3: Configurar Tela de Consentimento OAuth

1. **"APIs e Serviços"** → **"Tela de consentimento OAuth"**
2. Tipo de usuário: **Externo**
3. Clique **"Criar"**

**Página 1 - Informações do app:**
```
Nome do app: AI Executive Intelligence
Email de suporte do usuário: seu@email.com
Domínio do app: (deixe vazio)
Domínios autorizados: vercel.app
Email do desenvolvedor: seu@email.com
```
Clique **"Salvar e continuar"**

**Página 2 - Escopos:**
1. Clique **"Adicionar ou remover escopos"**
2. Filtrar: `drive`
3. Marque: `https://www.googleapis.com/auth/drive.readonly`
4. Clique **"Atualizar"**
5. Clique **"Salvar e continuar"**

**Página 3 - Usuários de teste:**
1. Clique **"Adicionar usuários"**
2. Adicione seu email
3. Clique **"Adicionar"**
4. Clique **"Salvar e continuar"**

**Página 4 - Resumo:**
- Clique **"Voltar ao painel"**

### Passo 4: Criar OAuth Client ID

1. **"APIs e Serviços"** → **"Credenciais"**
2. Clique **"+ Criar Credenciais"**
3. Selecione: **"ID do cliente OAuth"**

**Configurações:**
```
Tipo de aplicativo: Aplicativo da Web
Nome: AI Executive Web App
```

**Origens JavaScript autorizadas:**
```
https://sua-url-exata.vercel.app
```
(Cole SUA URL do Vercel aqui - IMPORTANTE: URL EXATA)

**URIs de redirecionamento autorizados:**
```
https://sua-url-exata.vercel.app
https://sua-url-exata.vercel.app/
```
(Adicione as DUAS linhas - uma sem / e uma com /)

4. Clique **"Criar"**

5. **COPIE O CLIENT ID** que aparece
   - Formato: `123456789-abcdefg.apps.googleusercontent.com`
   - Guarde ele!

---

## 📝 Atualizar Código com Client ID

### Opção A: Editor Web do Vercel

1. Vá em: https://vercel.com/dashboard
2. Selecione seu projeto
3. Aba **"Deployments"** → Último deployment
4. Clique nos 3 pontos → **"View Source"**
5. Clique em `index.html`
6. Procure por: `YOUR_CLIENT_ID_HERE`
7. Substitua pelo seu Client ID
8. Salve e redeploy

### Opção B: Localmente (Se usou CLI)

```bash
# 1. Abra index.html em um editor
# Procure por esta linha (linha ~133):
# const GOOGLE_CLIENT_ID = 'YOUR_CLIENT_ID_HERE.apps.googleusercontent.com';

# 2. Substitua por:
# const GOOGLE_CLIENT_ID = '123456789-abcdefg.apps.googleusercontent.com';
# (use SEU Client ID aqui)

# 3. Redeploy:
vercel --prod
```

### Opção C: Comando Rápido (Linux/Mac)

```bash
# Substitua SEU_CLIENT_ID pelo ID real:
sed -i '' 's/YOUR_CLIENT_ID_HERE\.apps\.googleusercontent\.com/SEU_CLIENT_ID/g' index.html

# Redeploy:
vercel --prod
```

---

## 🎉 PRONTO! Usar o Sistema

### Primeiro Acesso

1. **Abra:** `https://sua-url.vercel.app`

2. **Configure API Keys:**
   - Cole sua **Claude API key** no campo 🔑
   - Get aqui: https://console.anthropic.com/settings/keys

3. **Configure Pasta do Google Drive:**
   ```
   /Reuniões-AI/Transcrições/2026
   ```

4. **Conectar Google Drive:**
   - Clique **"Conectar Google Drive"**
   - Popup do Google abre
   - Se aparecer "App não verificado":
     - Clique **"Avançado"**
     - Clique **"Ir para AI Executive Intelligence (não seguro)"**
   - Faça login
   - Clique **"Permitir"**
   - Status fica 🟢 **Verde**

5. **Auto-Sync Ativa Automaticamente!**
   - Após 2 segundos de conexão
   - Toast verde: "✅ Auto-sync ativado!"
   - Sistema sincroniza a cada 5 minutos

### Criar Estrutura de Pastas no Drive

Crie esta estrutura no seu Google Drive:

```
📁 Reuniões-AI/
  └── 📁 Transcrições/
      └── 📁 2026/
          ├── 📁 01-Janeiro/
          ├── 📁 02-Fevereiro/
          │   ├── 📁 CX/
          │   ├── 📁 Pagamentos-Agentes/
          │   ├── 📁 StartSe/
          │   ├── 📁 Novos-Negocios/
          │   └── 📁 Sessao-Carreira/
          └── 📁 03-Março/
```

### Testar com Arquivo de Exemplo

1. Crie um arquivo `teste-cx.txt` com este conteúdo:

```
Reunião: Teste do Sistema
Data: 13/02/2026
Time: CX

Discussão sobre implementação do novo sistema de insights.
Time está animado com a automação.
Vamos precisar treinar todos na nova ferramenta.
```

2. Salve em: `/Reuniões-AI/Transcrições/2026/02-Fevereiro/CX/`

3. No sistema, clique **"Sincronizar Agora"**

4. Arquivo deve aparecer listado

5. Clique **"Processar Todos os Arquivos"**

6. Insights aparecem em ~30 segundos

**Se funcionou: Sistema 100% operacional!** 🎉

---

## 📊 Próximos Passos

### Integração com Zapier

Para automatizar o fluxo Plaud → Drive:

1. **Zapier:** https://zapier.com/app/editor
2. **Trigger:** Plaud Note Created
3. **Action:** Google Drive - Upload File
   - Folder: `/Reuniões-AI/Transcrições/2026/02-Fevereiro/{Tag}`
   - File: `{{transcription}}`
   - Name: `{{title}}_{{date}}.txt`

4. **Teste o Zap**

Agora:
```
Reunião → Plaud → Zapier → Drive → Sistema detecta → Processa → Insights prontos!
```

### Configurar Notificações (Opcional)

Adicione ao final do `<script>` em `index.html`:

```javascript
// Pedir permissão para notificações
if ('Notification' in window) {
    Notification.requestPermission();
}

// Modificar função de sync para notificar
// (adicione no final da função manualSync):
if (newFiles.length > 0 && Notification.permission === 'granted') {
    new Notification('🧠 Novos Insights!', {
        body: `${newFiles.length} arquivo(s) detectado(s)`,
        icon: 'https://em-content.zobj.net/thumbs/120/apple/325/brain_1f9e0.png'
    });
}
```

### Deixar Rodando em Background

**Opção 1: PWA (Recomendado)**
1. No Chrome/Edge, clique nos 3 pontos
2. **"Instalar AI Executive Intelligence"**
3. App roda standalone
4. Pode configurar para abrir no login

**Opção 2: Extensão de Navegador**
- Use extensão "Keep Tab Alive"
- Mantém aba sempre ativa

**Opção 3: Servidor Dedicado**
- Deploy backend Node.js com cron
- Roda 24/7 independente de navegador
- (Mais avançado, para futuro)

---

## 🐛 Troubleshooting

### "redirect_uri_mismatch"

**Erro ao conectar Google Drive**

**Causa:** URL do OAuth não coincide

**Solução:**
1. Google Cloud Console → Credenciais
2. Edite OAuth Client ID
3. Certifique que URL está EXATA:
   - ✅ `https://ai-executive-abc123.vercel.app`
   - ❌ `https://ai-executive-abc123.vercel.app/` (com barra)
   - ❌ `http://...` (sem HTTPS)
4. Salve
5. Aguarde 1-2 minutos
6. Tente conectar novamente

### "App não verificado"

**Popup do Google mostra aviso**

**Isso é NORMAL e esperado!**

**Solução:**
1. Clique **"Avançado"**
2. Clique **"Ir para AI Executive Intelligence (não seguro)"**
3. Continue normalmente

**Por quê?** Seu app não foi verificado pelo Google (processo leva semanas e só é necessário para 100+ usuários).

### Nenhum arquivo aparece após sync

**Sistema conectado mas lista vazia**

**Causas possíveis:**
1. Caminho da pasta incorreto
2. Pasta não existe no Drive
3. Pasta vazia
4. Sem permissão na pasta

**Soluções:**
1. Verifique path exato no Drive
2. Crie a estrutura de pastas
3. Adicione arquivo de teste
4. Certifique que é dono da pasta
5. Veja Console (F12) para erros

### Processamento não funciona

**"Failed to process" ou nenhum insight**

**Causa:** API key da Anthropic inválida ou sem créditos

**Solução:**
1. Verifique API key em: https://console.anthropic.com/settings/keys
2. Crie nova key se necessário
3. Verifique créditos/billing
4. Cole key novamente no sistema

---

## ✅ Checklist Final

Antes de considerar deploy completo:

**Deploy:**
- [ ] Vercel deploy concluído
- [ ] URL funcionando
- [ ] Página carrega sem erros

**Google Cloud:**
- [ ] Projeto criado
- [ ] Drive API ativada
- [ ] Tela de consentimento configurada
- [ ] OAuth Client ID criado
- [ ] Client ID inserido no código

**Conexão:**
- [ ] Conecta ao Google Drive
- [ ] Status verde (conectado)
- [ ] Consegue sincronizar
- [ ] Detecta arquivos

**Funcionalidade:**
- [ ] Classifica por tema
- [ ] Processa com sucesso
- [ ] Gera insights
- [ ] Feedback funciona

**Auto-Sync:**
- [ ] Toggle ativado (verde)
- [ ] Intervalo configurado
- [ ] Sincroniza automaticamente

**Se todos ✅: PRODUÇÃO!** 🎉

---

## 📞 Precisa de Ajuda?

### Logs para Debug

**No navegador (F12):**
- Console: Veja erros JavaScript
- Network: Veja chamadas de API
- Application → Local Storage: Veja dados salvos

**No Vercel:**
1. Dashboard → Seu projeto
2. Aba "Logs"
3. Veja em tempo real

**No Google Cloud:**
1. Console → Logging
2. Logs Explorer
3. Filtre por "drive.googleapis.com"

### Comandos Úteis

```bash
# Ver versões instaladas
node --version
npm --version
git --version
vercel --version

# Limpar cache do Vercel
vercel rm ai-executive-intelligence --yes

# Redeploy forçado
vercel --prod --force

# Ver logs locais
vercel logs
```

---

## 🎊 Parabéns!

Se chegou até aqui e tudo está funcionando:

**Você tem:**
- ✅ Sistema em produção
- ✅ URL pública funcionando
- ✅ Google Drive conectado
- ✅ Auto-sync ativo
- ✅ Agentes processando
- ✅ 4+ horas/semana economizadas

**Aproveite!** ☕

---

## 📚 Documentação Adicional

**Arquivos úteis no pacote:**
- `GUIA-DEPLOY-PRODUCAO.md` - Guia completo manual
- `GUIA-GOOGLE-DRIVE-SETUP.md` - OAuth detalhado
- `GUIA-AUTO-DEPLOY.md` - Scripts automáticos

**Links importantes:**
- Vercel Docs: https://vercel.com/docs
- Google OAuth: https://developers.google.com/identity/protocols/oauth2
- Claude API: https://docs.anthropic.com/

---

**Versão:** 1.0  
**Última atualização:** Fevereiro 2026


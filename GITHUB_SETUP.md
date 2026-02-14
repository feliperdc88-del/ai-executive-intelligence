# 🔗 Como Conectar ao GitHub

## ✅ Repository Git Criado!

O repositório Git local está **pronto e inicializado** com:
- ✅ Branch `main` configurada
- ✅ Commit inicial feito
- ✅ Todos os arquivos commitados
- ✅ .gitignore configurado
- ✅ README.md profissional
- ✅ LICENSE (MIT)

---

## 🚀 Opções para Publicar no GitHub

### OPÇÃO 1: Via GitHub Web (Mais Fácil) - 3 minutos

#### Passo 1: Criar Repositório no GitHub

1. Acesse: https://github.com/new
2. Preencha:
   ```
   Nome: ai-executive-intelligence
   Descrição: Sistema de agentes de IA para análise de reuniões com auto-sync Google Drive
   Visibilidade: ☑️ Private (recomendado) ou Public
   ```
3. **NÃO marque** "Initialize with README" (já temos)
4. Clique **"Create repository"**

#### Passo 2: Conectar e Enviar

Na página que abrir, copie os comandos da seção **"...or push an existing repository from the command line"**

Será algo como:

```bash
cd ai-executive-deploy-package

git remote add origin https://github.com/SEU-USUARIO/ai-executive-intelligence.git
git branch -M main
git push -u origin main
```

**Pronto!** Código estará no GitHub 🎉

---

### OPÇÃO 2: Via GitHub CLI (Automático) - 1 minuto

Se você tem GitHub CLI instalado:

```bash
cd ai-executive-deploy-package

# Criar repo e fazer push automaticamente
gh repo create ai-executive-intelligence \
  --private \
  --source=. \
  --remote=origin \
  --push
```

**Pronto!** Repositório criado e código enviado automaticamente.

#### Instalar GitHub CLI

Se não tem instalado:

- **macOS**: `brew install gh`
- **Windows**: `winget install GitHub.cli`
- **Linux**: https://github.com/cli/cli#installation

Depois: `gh auth login`

---

### OPÇÃO 3: Usando SSH (Se Preferir) - 3 minutos

#### Passo 1: Criar repo no GitHub (igual opção 1)

#### Passo 2: Usar SSH ao invés de HTTPS

```bash
cd ai-executive-deploy-package

git remote add origin git@github.com:SEU-USUARIO/ai-executive-intelligence.git
git push -u origin main
```

**Nota:** Precisa ter chave SSH configurada no GitHub  
Guia: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

---

## 📝 Depois de Publicar

### Atualizar README

No GitHub, edite o README.md e atualize:

1. **Botão de Deploy:**
   ```markdown
   [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/SEU-USUARIO/ai-executive-intelligence)
   ```
   
2. **Links de Issues:**
   ```
   https://github.com/SEU-USUARIO/ai-executive-intelligence/issues
   ```

### Configurar GitHub Pages (Opcional)

Para hospedar documentação:

1. Vá em **Settings** → **Pages**
2. Source: **Deploy from branch**
3. Branch: `main` / Folder: `/root`
4. Save

Docs estarão em: `https://SEU-USUARIO.github.io/ai-executive-intelligence`

### Adicionar Topics

No GitHub, adicione topics para descoberta:

```
ai, executive, intelligence, meetings, transcriptions, 
google-drive, claude, automation, productivity, analytics
```

---

## 🔄 Workflow de Desenvolvimento

### Fazer Mudanças

```bash
# 1. Fazer mudanças no código
nano index.html  # ou seu editor preferido

# 2. Ver o que mudou
git status
git diff

# 3. Adicionar mudanças
git add .

# 4. Commit
git commit -m "Descrição da mudança"

# 5. Enviar para GitHub
git push
```

### Criar Branch para Features

```bash
# Criar e mudar para nova branch
git checkout -b feature/nova-funcionalidade

# Fazer mudanças e commit
git add .
git commit -m "Add: Nova funcionalidade X"

# Enviar branch
git push -u origin feature/nova-funcionalidade

# No GitHub, abrir Pull Request
```

---

## 🎯 Integração com Vercel

### Deploy Automático

Após conectar ao GitHub:

1. **Vercel Dashboard**: https://vercel.com/dashboard
2. **Import Project** → Selecione o repo do GitHub
3. Configure auto-deploy:
   - ✅ Deploy em todo push na `main`
   - ✅ Preview em Pull Requests

Agora:
```
git push → GitHub → Vercel auto-deploy → Live em 30 segundos
```

### GitHub Actions (Opcional)

Criar `.github/workflows/deploy.yml`:

```yaml
name: Deploy to Vercel

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Deploy to Vercel
        uses: amondnet/vercel-action@v20
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.ORG_ID }}
          vercel-project-id: ${{ secrets.PROJECT_ID }}
```

---

## 📊 Status Atual do Repositório

```bash
# Ver status
cd ai-executive-deploy-package
git status

# Ver histórico
git log --oneline

# Ver arquivos versionados
git ls-files
```

**Output esperado:**
```
On branch main
nothing to commit, working tree clean
```

**Commit inicial:**
```
a1cbbe5 Initial commit: AI Executive Intelligence system with auto-sync
```

**Arquivos:**
```
.gitignore
DEPLOY_NOW.md
LICENSE
README.md
index.html
package.json
vercel.json
```

---

## ✅ Checklist de Publicação

- [x] Git inicializado
- [x] Branch `main` criada
- [x] Commit inicial feito
- [x] README profissional
- [x] LICENSE adicionada
- [x] .gitignore configurado
- [ ] Criar repositório no GitHub
- [ ] Push para GitHub
- [ ] Atualizar links no README
- [ ] Conectar com Vercel
- [ ] Adicionar topics/tags
- [ ] (Opcional) Configurar GitHub Actions

---

## 🆘 Troubleshooting

### "Permission denied (publickey)"

**Usando HTTPS?**
```bash
git remote set-url origin https://github.com/SEU-USUARIO/ai-executive-intelligence.git
```

**Ou configure SSH:**
https://docs.github.com/en/authentication/connecting-to-github-with-ssh

### "Repository not found"

Certifique-se que:
1. Criou o repo no GitHub
2. URL está correta (seu usuário)
3. Tem permissão de acesso

### "Updates were rejected"

```bash
# Forçar push (cuidado!)
git push -f origin main

# Ou pull primeiro
git pull --rebase origin main
git push
```

---

## 🎊 Próximos Passos

Após publicar no GitHub:

1. **Conectar com Vercel** para auto-deploy
2. **Convidar colaboradores** (se houver)
3. **Criar issues** para features futuras
4. **Adicionar CI/CD** com GitHub Actions
5. **Startar o repo** para mostrar valor

---

## 📞 Comandos Úteis

```bash
# Ver remotes configurados
git remote -v

# Renomear remote
git remote rename origin upstream

# Adicionar outro remote
git remote add upstream https://...

# Remover remote
git remote remove origin

# Ver branches
git branch -a

# Criar tag de versão
git tag -a v1.0.0 -m "Primeira versão estável"
git push --tags
```

---

**Repository criado com sucesso!** ✅  
**Pronto para publicar no GitHub!** 🚀


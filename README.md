# Dotfiles

My development environment config. Clone once per machine, run the setup script, done.

## What's Included

### Claude Code Skills

| Skill | What it does |
| --- | --- |
| `/init-project` | Explores a new codebase and generates a CLAUDE.md |
| `/grill-me` | Interrogates you about a feature before writing any code |
| `/plan` | Breaks a feature into phased, well-scoped issues |
| `/tdd` | Forces strict red-green-refactor test-driven development |
| `/review` | Senior engineer code review before committing |
| `/caveman` | Minimal token responses — no filler, no preamble |

### Typical Workflow

1. `/init-project` — understand a new codebase
2. `/grill-me` — think through a feature before building
3. `/plan` — break it into issues
4. `/tdd` — implement with tests
5. `/review` — check before committing
6. `/caveman` — toggle on when you want speed

## Setup

### Windows (PowerShell)

```powershell
git clone https://github.com/YOUR_USERNAME/dotfiles.git D:\Projects\dotfiles
cd D:\Projects\dotfiles
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

### Mac / Linux

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash setup.sh
```

That's it. Open a new terminal and your skills are available in Claude Code.

## How It Works

The setup script copies the `skills` folder into `~/.claude/skills/` — the global location where Claude Code loads skills from.

```
dotfiles/.claude/skills/  →  ~/.claude/skills/
```

Your existing Claude Code config (credentials, sessions, etc.) is not touched.

## Adding a New Skill

```bash
mkdir -p .claude/skills/my-skill
# Create .claude/skills/my-skill/SKILL.md
git add . && git commit -m "feat: add /my-skill" && git push
```

## Updating on Another Machine

```powershell
# Windows
cd D:\Projects\dotfiles
git pull
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

```bash
# Mac / Linux
cd ~/dotfiles
git pull
bash setup.sh
```

Skills are copied (not symlinked), so you need to re-run the setup script after pulling updates.

## Structure

```
dotfiles/
├── .claude/
│   └── skills/
│       ├── grill-me/SKILL.md
│       ├── tdd/SKILL.md
│       ├── caveman/SKILL.md
│       ├── plan/SKILL.md
│       ├── review/SKILL.md
│       └── init-project/SKILL.md
├── .gitignore
├── README.md
├── setup.sh          # Mac / Linux
└── setup.ps1         # Windows
```
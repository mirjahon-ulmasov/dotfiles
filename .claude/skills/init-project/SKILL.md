---
name: init-project
description: Explore an unfamiliar codebase and generate a CLAUDE.md file. Use when joining a new project, onboarding to someone else's code, or setting up Claude Code for a project that doesn't have a CLAUDE.md yet.
---

Explore this codebase thoroughly and generate a CLAUDE.md file at the project root.

## Exploration Steps

1. **Read project config files first:**
   - package.json, tsconfig.json, Cargo.toml, pyproject.toml, go.mod (whatever exists)
   - .env.example (never .env)
   - Dockerfile, docker-compose.yml
   - CI/CD config (.github/workflows, .gitlab-ci.yml)
   - Linter/formatter config (eslint, prettier, biome)

2. **Understand the folder structure:**
   - Map out the top-level directories and their purpose
   - Identify the architecture pattern (MVC, FSD, hexagonal, monorepo, etc.)
   - Note any unconventional structure choices

3. **Identify the tech stack:**
   - Framework, language, runtime version
   - Database, ORM, cache
   - Auth strategy
   - Testing tools
   - Key libraries and what they're used for

4. **Read key source files:**
   - Entry point (main.ts, index.ts, app.py, etc.)
   - Router/routes definition
   - Database schema/models
   - A few representative modules to understand the coding style

5. **Detect patterns and conventions:**
   - Naming conventions (files, variables, functions, classes)
   - How errors are handled
   - How validation is done
   - How tests are structured
   - Import style and module boundaries

## Output

Generate a CLAUDE.md with these sections:
- **Stack** — tech, versions, key libraries
- **Project Structure** — folder map with purpose of each directory
- **Naming Conventions** — table of what uses what casing
- **Key Patterns** — auth, validation, error handling, data fetching
- **Coding Rules** — inferred from existing code (what to follow, what to avoid)
- **Common Commands** — dev, build, test, lint, migrate, seed

Before saving, show me the generated CLAUDE.md and ask for confirmation.
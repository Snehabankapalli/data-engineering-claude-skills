# Contributing to Data Engineering Claude Skills

This repo ships a curated set of Claude Code skills for data engineers. Contributions that add new production-grade skills, improve prompts, or fix bugs are welcome.

## Repository Layout

```
data-engineering-claude-skills/
  skills/                  # One .md file per skill
    data-quality.md
    dbt-model.md
    ...
  install.sh               # Unix install, symlinks into ~/.claude/skills/
  install.ps1              # Windows install, same behavior for PowerShell
  README.md
  SETUP_GUIDE.md
```

## Adding a New Skill

1. Create a new file in `skills/` using kebab-case, for example `skills/snowflake-cost-audit.md`.
2. Add required frontmatter at the top of the file.
3. Write the skill body below the frontmatter. Keep it focused on a single, repeatable data engineering task.
4. Run `./install.sh` (or `install.ps1` on Windows) to symlink it into `~/.claude/skills/`.
5. Restart Claude Code and invoke the skill with `/skill-name`.

## Frontmatter Requirements

Every skill file must begin with a YAML frontmatter block:

```markdown
---
name: skill-name-kebab-case
description: One sentence, under 200 characters, explaining when Claude should use this skill.
allowed-tools: Read, Write, Bash   # optional, comma-separated
---

# Skill body starts here
```

Required keys:

- `name`: kebab-case, must match the filename without `.md`
- `description`: one clear sentence describing the trigger and outcome

Optional keys:

- `allowed-tools`: restricts which Claude Code tools the skill may call
- `model`: override default model for this skill

## Naming Convention

- Use kebab-case for filenames and the `name` field.
- Prefer verb-noun or domain-action patterns, for example `dbt-model`, `debug-pipeline`, `data-contract`.
- Keep names under 30 characters so they are quick to type after a slash.

## Skill Body Guidelines

- Start with a one-line summary of what the skill does.
- Include a short "When to use" section.
- Include explicit step-by-step instructions for Claude to follow.
- Include at least one example input and expected output.
- Reference the user's existing stack conventions where applicable, such as Snowflake, dbt, AWS Glue, or PySpark.

## Install and Test Locally

```bash
./install.sh
# Windows
# powershell -ExecutionPolicy Bypass -File .\install.ps1

ls -la ~/.claude/skills/
# Confirm your new skill is symlinked
```

In Claude Code:

```
/skill-name
```

Verify the skill body loads and that the behavior matches the intent.

## Pull Request Checklist

- [ ] New skill has valid frontmatter with `name` and `description`
- [ ] Filename matches `name` field
- [ ] `./install.sh` runs cleanly
- [ ] Skill tested end to end in Claude Code
- [ ] README updated if the skill is added to the catalog
- [ ] Markdown linter passes

## Reporting Bugs

Open an issue with:

- Skill name
- Claude Code version
- OS and shell
- Expected behavior vs actual behavior
- Redacted example of the failing invocation

#!/bin/bash
# Data Engineering Claude Skills — Mac/Linux Installer
# Usage: bash install.sh

SKILLS_DIR="$HOME/.claude/commands"
SOURCE_DIR="$(dirname "$0")/skills"

echo ""
echo "Data Engineering Claude Skills Installer"
echo "========================================"

mkdir -p "$SKILLS_DIR"

count=0
for skill in "$SOURCE_DIR"/*.md; do
    filename=$(basename "$skill")
    cp "$skill" "$SKILLS_DIR/$filename"
    echo "  ✅ Installed: /$(basename "$skill" .md)"
    ((count++))
done

echo ""
echo "$count skills installed to $SKILLS_DIR"
echo ""
echo "Available commands in Claude Code:"
echo "  /dbt-model          — generate a dbt model"
echo "  /dbt-test           — generate dbt tests"
echo "  /snowflake-optimize — optimize queries & costs"
echo "  /pipeline-scaffold  — scaffold a full pipeline"
echo "  /incident-response  — P0/P1 incident playbook"
echo "  /data-contract      — generate a data contract"
echo "  /schema-design      — dimensional modeling"
echo "  /cost-analysis      — Snowflake cost audit"
echo "  /code-review        — senior DE code review"
echo ""

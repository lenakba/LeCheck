#!/bin/sh
# Builds assistant-instructions.txt from the core files so the pasted
# instructions always match the version in git.
# Usage: sh build.sh   (then paste the contents into the assistant's instruction field)
{
  awk 'BEGIN{fm=0} /^---$/ && fm<2 {fm++; next} fm>=2 {print}' SKILL.md
  echo
  cat rubric.md
  echo
  cat output-format.md
} > assistant-instructions.txt
wc -c assistant-instructions.txt
echo "(The assistant's instruction field takes 56,000 characters.)"

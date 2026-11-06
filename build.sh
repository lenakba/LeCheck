#!/bin/sh
# Builds one instruction file per assistant.
# LeCheck: SKILL.md (without its header) + rubric.md + output-format.md + detect-format.md
# LeReport: report-format.md + output-format.md
strip() { awk 'BEGIN{fm=0} /^---$/ && fm<2 {fm++; next} fm>=2 {print}' "$1"; }
{ strip SKILL.md; echo; cat rubric.md; echo; cat output-format.md; echo; cat detect-format.md; } > lecheck-instructions.txt
{ cat report-format.md; echo; cat output-format.md; } > lereport-instructions.txt
wc -c lecheck-instructions.txt lereport-instructions.txt

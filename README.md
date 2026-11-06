# LeCheck and LeReport

Two small, plain-text instruction sets for screening the **Results section** of a manuscript draft for a short list of basic reporting problems, before an experienced reader spends time on it.

- **LeCheck** reads the Results section and lists the problems it finds.
- **LeReport** turns LeCheck's findings into a short, paste-ready message to the author.

It was written for a statistician who reads many drafts from students and co-authors and keeps meeting the same avoidable problems.

> **Status: early version (see the version in `SKILL.md` and `rubric.md`).** Built for one person's workflow and tested on fabricated texts and a few real drafts. It is a screening aid, not a reviewer. Test it on your own material before relying on it.

## Why two assistants

One assistant that finds problems, does arithmetic, applies caps and writes polished text in a single pass turned out to be unreliable with open models. Splitting the job lets each step do one thing:

| | **LeCheck** | **LeReport** |
|---|---|---|
| Input | The Results section (text, tables and captions pasted as text) | LeCheck's output |
| Sees the draft? | Yes | No |
| Output | A light (green or red), a status line for every rubric item, and every occurrence of each problem, with quotes | A short numbered message to the author, with fixed opening and closing lines |
| Used for | Screening drafts, peer review notes, self-checks before submitting | Sending feedback to students and co-authors |

You can use LeCheck alone. If you only need to know whether a draft is worth reading, or you are writing your own comments, LeReport is optional. Authors can also run LeCheck on their own draft before sending it on.

## What LeCheck checks

A deliberately short list, so each item can be verified:

1. Number of participants missing
2. Percentage without a clear denominator
3. Statistical methods described in the Results
4. Response rate missing (survey or questionnaire data)
5. Percentage that does not match the stated denominator

Every item is written in the same template: where to look, when it is red, when it is fine, when to say "check manually", and why it matters. See `rubric.md`.

## What it does not do

- It does not judge whether the science, analysis or conclusions are correct.
- A **green light means "no basic issues from this list were detected"**, not "this is good".
- It only reports items on the list. Anything else is out of scope by design.
- When it is unsure, it is instructed to say "check manually" instead of guessing.
- It does not derive numbers the draft does not state. For example, a denominator that can only be found by adding up a table column counts as not stated.

## Files

| File | Purpose |
|------|---------|
| `SKILL.md` | Header (name, description, version), rules, and how the light is decided (LeCheck) |
| `rubric.md` | The five items (LeCheck) |
| `detect-format.md` | LeCheck's output layout |
| `report-format.md` | LeReport's role, layout, and the send-back wording for each item |
| `output-format.md` | Rules shared by both assistants |
| `examples/` | Fabricated example of a LeCheck output and the matching LeReport message. **For reading only. Do not upload to the assistants.** |
| `tests/` | Fabricated test sections and `known-answers.md` with the expected verdicts |
| `parking-lot.md` | Items not built yet, to be added one at a time |
| `build.sh` | Builds one instruction file per assistant |

`build.sh` produces two files:

- `lecheck-instructions.txt`: `SKILL.md` (without its header), `rubric.md`, `output-format.md` and `detect-format.md`
- `lereport-instructions.txt`: `report-format.md` and `output-format.md`

## Using it

1. Run `sh build.sh`. On Windows, use Git Bash, or join the files by hand with `type` in CMD.
2. Create two assistants in your tool, one named LeCheck and one named LeReport. Paste the matching `.txt` file into each one's custom-instruction field.
3. Open a **new chat** for every draft. Paste the Results section into LeCheck. No extra prompt is needed.
4. If you want a message to the author, open a new chat with LeReport and paste in LeCheck's output.

Two lessons from testing:

- **Do not attach the example files to the assistants.** Open models may retrieve uploaded files in chunks, and LeCheck once checked and quoted text from an example instead of the pasted draft. LeReport once copied a worked example instead of processing the findings. Keep examples as documentation only.
- **One draft per chat.** Verdicts can carry over from earlier text in the same conversation.

Always spot-check the output: every quote LeCheck gives should appear word for word in the draft you pasted, and every calculation should be easy to verify by hand.

## Testing it

The `tests/` folder holds short, fabricated material. For LeCheck, run each test section in a **new chat**, ideally twice, and compare the output with `tests/known-answers.md`. For LeReport, paste fabricated LeCheck outputs and check the message for the fixed opening, one point per red item, no invented content, the "same issue appears elsewhere" sentence when there are other occurrences, and the closing line on its own line.

Re-run all tests after every change, and when you add an item, add one test that should trigger it and one that should not. Keep `known-answers.md` out of the assistants, so you are testing the instructions and not the answer key.

## Adapting it to your setting

- **Closing line.** LeReport ends each message with a line about where the screening was run. It describes the author's own institutional setup. Rewrite or remove it, and check that the claim is true for your tool.
- **Data protection.** Draft manuscripts can be confidential. Only use a tool that your institution has approved for that kind of material. Never put real, sensitive or unpublished data into the rubric files, examples or tests in this repository.
- **Language and norms.** The rubric is in English and reflects one person's reporting norms. Change the items, the red/fine boundaries and the send-back wording to fit your field and any reporting guidelines you follow.
- **Model choice.** Open models can follow long rubrics less reliably than large commercial ones. Keep the rubric short and test any model you switch to. If a fixed-text requirement keeps being ignored, build that part with a small script instead of asking the model to reproduce it.

## Contributing

Suggestions are welcome, especially cases where the checker gives a false green or a false red. Please contribute only **fabricated** text. Do not post real manuscript text or data.

## License

Add your chosen license here.

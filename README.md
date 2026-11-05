# LeCheck results-checker

A small, plain-text rubric for screening the **Results section** of a manuscript draft for a short list of basic reporting problems, before an experienced reader spends time on it.

It returns a **green or red light**, a quote for every flag, and a paste-ready message to send back to the author. It was written for a statistician who reads many drafts from students and co-authors and keeps meeting the same avoidable problems.

> **Status: early version (see the version in `SKILL.md`).** Built for one person's workflow and tested on a small set of fabricated texts and a few real drafts. It is a screening aid, not a reviewer. Treat it as a starting point and test it on your own material before relying on it.

## What it checks

A deliberately short list, so each item can be verified:

1. Number of participants missing
2. Percentage without a clear denominator
3. Statistical methods described in the Results
4. Response rate missing (survey or questionnaire data)
5. Percentage that does not match the stated denominator

Every item is written in the same template: where to look, when it is red, when it is fine, when to say "check manually", why it matters, and the wording for the send-back message. See `rubric.md`.

## What it does not do

- It does not judge whether the science, analysis or conclusions are correct.
- A **green light means "no basic issues from this list were detected"**, not "this is good".
- It only reports items on the list. Anything else is out of scope by design.
- When it is unsure, it is instructed to say "check manually" instead of guessing.

## How it works

The rubric is plain markdown, so it can be pasted into any chat tool that accepts custom instructions, or used later as a skill or agent instruction file.

| File | Purpose |
|------|---------|
| `SKILL.md` | Header (name, description, version), rules, and how the light is decided |
| `rubric.md` | The items |
| `output-format.md` | Exact layout of the answer, including the send-back email |
| `examples/` | Fabricated examples (red, green, borderline) showing the expected output |
| `tests/` | Fabricated test sections and `known-answers.md` with the expected verdicts |
| `parking-lot.md` | Items not built yet, to be added one at a time |
| `build.sh` | Joins `SKILL.md` (without its header), `rubric.md` and `output-format.md` into `assistant-instructions.txt` |

### Using it

1. Run `sh build.sh` (on Windows, use Git Bash, or run `type SKILL.md rubric.md output-format.md > assistant-instructions.txt` in CMD).
2. Paste the contents of `assistant-instructions.txt` into the custom-instruction field of your tool.
3. Paste a results section into a new chat. No extra prompt is needed.

### Testing it

The `tests/` folder holds short, fabricated results sections. Run each one in a **new chat**, ideally twice, and compare the output with `tests/known-answers.md`. Re-run all tests after every change to the rubric, and add one test that should trigger and one that should not whenever you add an item. Keep `known-answers.md` out of the tool, so you are testing the instructions and not the answer key.

## Adapting it to your setting

- **Hosting sentence.** The send-back email in `output-format.md` ends with a line about where the screening was run. It describes the author's own institutional setup and should be rewritten or removed to match yours.
- **Data protection.** Draft manuscripts can be confidential. Only use a tool that your institution has approved for that kind of material. Never put real, sensitive or unpublished data into the rubric files, examples or tests in this repository.
- **Language and norms.** The rubric is in English and reflects one person's reporting norms. Change the items, the red/fine boundaries and the send-back wording to fit your field and any reporting guidelines you follow.
- **Model choice.** Open models can follow long rubrics less reliably than large commercial ones. Keep the rubric short, and test any model you switch to.

## Contributing

Suggestions are welcome, especially cases where the checker gives a false green or a false red. Please contribute only **fabricated** text. Do not post real manuscript text or data.

## License

Add a license of your choice here (for example MIT or CC BY 4.0).

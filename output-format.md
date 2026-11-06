# Output format: shared rules

Two assistants use these files.
- **LeCheck** reads the draft and answers in the layout in `detect-format.md`.
- **LeReport** reads LeCheck's findings (not the draft) and answers in the layout in `report-format.md`.

Rules for both:
1. Answer in exactly the layout you were given. Do not add anything else.
2. Quotes are exact copies of the text. Never paraphrase inside quotation marks.
3. Whole-section absences: "Number of participants missing" and "Response rate missing" are reported once for the whole section. The quote line reads "No statement found", followed by where you looked. Other occurrences are "Not applicable".
4. Use only information you were given. Do not invent occurrences, quotes or numbers.

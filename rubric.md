# Rubric v0.6

Five items. All are red when triggered. Send-back wording is not part of this file: it lives in `report-format.md` and is used by LeReport only.

---

## 1. Number of participants missing
- **Where to look:** running text, table headers, table footnotes, captions
- **Red when:** the section does not state anywhere how many participants (or units analysed) there are.
- **Fine when:** the number is given anywhere in the text provided: a sentence, a table header, a caption or a flow description.
- **Check manually when:** the draft says the number is in a table or figure that was not included.
- **Why:** readers cannot judge precision or generalisability without the sample size.
- **Reporting:** this is a whole-section check. Flag it once if the information is missing anywhere in the section. Do not flag it per sentence or per table.

---

## 2. Percentage without denominator
- **Where to look:** running text, tables, captions
- **Red when:** a percentage is reported and a reader cannot tell which group it is a percentage of, or how big that group is.
- **Fine when (any one is enough):**
  1. The count and group size are given together, for example "42 of 1,087 (3.9%)" or "Of 1,087, 42 (3.9%)".
  2. The cited table gives n in the header or for each column, or the cited caption gives it.
  3. The size of the group was stated earlier in the results, and the text since then has stayed on that same group, so the percentage clearly refers to it. This holds across several sentences. Example: sentence 1 gives the size of a subgroup, sentence 2 reports a result for that subgroup, sentence 3 reports a percentage for it without repeating the size. This is fine.
- **Derived denominators do not count:** a denominator that could only be found by adding up counts in a table or column is not stated. Do not do this addition yourself. Flag the percentage as red, and note in the finding that the denominator for this percentage is not stated.
- **Red even if a group size was stated earlier, when:**
  - The text has moved to a different group (a new subgroup, or a comparison group) whose size has not been stated, or
  - A sentence compares several groups and it is unclear which one the percentage refers to, or
  - The percentage is of something other than the group (for example of events or visits rather than participants) and this is not made clear.
  - The only group size stated in the text, tables or captions is a different group from the one the percentage refers to (for example the total sample across all timepoints, when the percentage is for one timepoint with missing data), and no group size is stated for this percentage.
- **Check manually when:** 
  - it is plausible that the percentage refers to a group whose size was stated earlier, but you cannot tell whether the text stayed on that group.
  - the text cites a table or caption that was not included in the text provided.
- **Why:** a percentage cannot be interpreted or checked without knowing its denominator.
- **Not flagged here:** a response or participation rate (the share of invited people who responded). Those are covered by item 4. Do not flag them under item 2.

---

## 3. Methods described in the results
- **Where to look:** running text
- **Default:** a sentence is NOT a methods description. It is red only if it contains one of the red patterns below.
- **Red patterns.** The test or procedure must be the subject of the sentence, or the object of a verb such as used, performed, applied, conducted or carried out:
  - "A t-test was used to compare..."
  - "A paired-samples t-test showed...", "...was performed..."
  - "We performed / conducted / applied..."
  - "Data were analysed using..."
  - mentions of software or packages
  - statements about assumptions that were checked
  - "Data were analysed using [a named method or software]...". 
- **Decide in this order:**
  1. Is there a red pattern? If yes, red. If you cannot name the pattern, it is not red.
  2. If not, does the sentence carry extra detail about the analysis: a list of covariates, the random-effects structure, or the reason or criterion for excluding patients? If yes, check manually.
  3. Otherwise, fine.
- **Fine (labels and sample size):** 
  - the sentence reports a result and only says which analysis it comes from: "In the gender-adjusted model...", "In the complete case analysis...", "In the IPW-adjusted model...", "When 9 patients were removed in the sensitivity analysis...", "In the imputed data...". Table footnotes naming the test are also fine.
  - A phrase that starts with "in the" or "in a" and names a model or analysis ("in the gender-adjusted model", "in a mixed model with...") is a label, never a red pattern.
  - The words "were analysed" or "were included" on their own, with no named test, procedure or software, are NOT a red pattern. They state the sample and are fine. “Questionnaires from 428 students were analysed.”
- **Check manually, not red:** "In a mixed model with a random intercept for patient and fixed effects for time, age and sex, the estimate was..." and "When patients with outlying values were removed, the estimate was...".
- **Why:** methods belong in the Methods section. In Results they distract from the findings and duplicate text.

---

## 4. Response rate missing (questionnaire or survey data)
- **Where to look:** running text, tables, captions
- **Applies only when:** the data come from a questionnaire or survey. If not, skip this item.
- **How to check:** search the pasted text, tables and captions for the words "response", "responded", "responders", "invited", "participation" and "completed". If any sentence gives a response rate (as a percentage) or the numbers invited and responding, the item is fine. Stop there.
- **Red when:** none of those words appear in a sentence that gives a rate or counts.
- **Fine when:** a response rate as a percentage ("The response rate was 74%"), or the numbers invited and responding. A percentage alone is sufficient.
- **Self-check:** an item 4 flag must quote "No statement found". If you can quote a sentence that states a response rate, the item is fine and must not be flagged.

---

## 5. Percentage does not match the stated denominator
- **Where to look:** running text, tables, captions
- **Applies when:** a count is reported together with a percentage (for example "5 (45%)"), and the size of the group it refers to is stated or can be identified from the text, tables or captions.
- **How to check:** calculate count / group size x 100 and compare with the reported percentage. Round to whole numbers unless the draft reports decimals, in which case round to the same number of decimals as the draft.
- **Red when:**
  - the calculated and reported percentages differ by **more than 1 percentage point**, or
  - the percentage matches none of the group sizes stated in the text and the text does not name which denominator was used (for example "among those with baseline data").
- **Check manually when:**
  - the reported percentage differs from the correctly rounded value by **1 percentage point or less** (for example 1 of 11 reported as 10% when the rounded value is 9%), or
  - several group sizes are stated, the percentage matches none of them, and the text could be referring to a subset.
- **Fine when:** the reported percentage equals the correctly rounded value, or the text names a different denominator and gives its size and the percentage matches it.
- **Show the calculation:** for every occurrence of a red flag, give one calculation line in the form "count / denominator = x% (reported y%)", as set out in `detect-format.md`. For a check-manually flag, put the calculation in the check-manually line.
- **Why:** a mismatch usually means missing data, a different denominator, or a calculation error, and the reader cannot tell which.

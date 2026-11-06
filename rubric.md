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

---

## 3. Methods described in the results
- **Where to look:** running text
- **Red when:** a sentence explains which test or procedure was used, or how the analysis was done, as part of reporting a result. Typical wording: "A t-test was used to compare...", "We performed...", "Data were analysed using...", "Kaplan-Meier curves and a log-rank test were used to compare... and the difference was significant".
- **Fine when:** the text only labels which analysis a result comes from, without explaining it. For example "In the adjusted model, ..." or "In the mixed model (Table 3), ...". Table footnotes naming the test are fine.
- **Check manually when:** a sentence names a model with some detail (for example the random effects structure) and it is borderline whether this is labelling or explaining.
- **Why:** methods belong in the Methods section. In Results they distract from the findings and duplicate text.

---

## 4. Response rate missing (questionnaire or survey data)
- **Where to look:** running text, tables, captions
- **Applies only when:** the data come from a questionnaire or survey. If not, skip this item.
- **Red when:** the section reports survey results and does not state the response rate, or the numbers invited and responding, anywhere.
- **Fine when:** the response rate, or both numbers, are stated anywhere in the text provided.
- **Check manually when:** the draft says the response rate is reported in Methods or a table that was not included.
- **Why:** nonresponse affects how far the results can be trusted and generalised.
- **Reporting:** this is a whole-section check. Flag it once if the information is missing anywhere in the section. Do not flag it per sentence or per table.

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

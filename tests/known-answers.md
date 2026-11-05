# Known answers (do NOT upload to the assistant)

Compare the assistant's output with this for each test. Re-run all six after every change to the rubric.

| Test | Expected light | Must be flagged | Must NOT be flagged |
|------|----------------|-----------------|---------------------|
| test-01 | RED | Number of participants missing; Percentage without denominator ("80% attending...") | Methods in results; Response rate |
| test-02 | GREEN | none | anything red |
| test-03 | RED | Methods described in the results (Kaplan-Meier / log-rank sentence) | Number of participants (156 is stated); Percentage ("94 (60%)" has its group) |
| test-04 | RED | Response rate missing | Number of participants (428 stated); Percentage "71%" must not be red (may be listed under Check manually) |
| test-05 | GREEN | none | Percentage without denominator (subgroup size stated in sentence 1, text stayed on the subgroup) |
| test-06 | RED | Percentage without denominator ("Among men aged over 65, 41%...": group changed, size of men not stated) | Number of participants (312 stated) |
| test-07 | RED | Percentage does not match the stated denominator ("131 (90%)": 131/229 is 57%, no other denominator named) | Number of participants (229 stated); Response rate (not survey data) |
| test-08 | GREEN | none | Percentage does not match the stated denominator (131/146 = 90%, named in the text); Response rate |
| test-09 | RED | Response rate missing | Percentage does not match the stated denominator (146 is named); Number of participants |
| test-10 | GREEN | none | Percentage does not match the stated denominator (1/11 = 9%, 2/11 = 18%, 5/11 = 45%); Response rate (not survey data) |
| test-11 | RED | Percentage does not match the stated denominator ("5 (30%)": 5 / 11 = 45%, reported 30%) | Number of participants (11 stated); Response rate (not survey data) |
| test-12 | GREEN | none; item 5 may appear under Check manually ("1 (10%)": 1 / 11 = 9%, reported 10%) | Item 5 must not be red; Response rate (not survey data) |
## Also check
- Every flag includes an exact quote, or "No statement found".
- No criticism outside the four rubric items.
- The send-back message appears only when the light is RED.
- The send-back opening is copied exactly.
- The scope line is present.

## Log (fill in after each run)
| Date | Rubric version | Model | test-01 | test-02 | test-03 | test-04 | test-05 | test-06 | test-07 | test-08 | Notes |
|------|----------------|-------|---------|---------|---------|---------|---------|---------|---------|---------|-------|

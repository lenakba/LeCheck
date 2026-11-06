# Known answers (do NOT upload to the assistant)

Compare the assistant's output with this for each test. Re-run all six after every change to the rubric.

| Test | Expected light | Must be flagged | Must NOT be flagged |
|------|----------------|-----------------|---------------------|
| test-01 | RED | Number of participants missing; Percentage without denominator ("80% attending...") | Methods in results; Response rate |
| test-02 | GREEN | none | anything red |
| test-03 | RED | Methods described in the results (Kaplan-Meier / log-rank sentence) | Number of participants (156 is stated); Percentage ("94 (60%)" has its group) |
| test-04 | RED | Response rate missing | Methods in results. Number of participants (428 stated); Percentage "71%" must not be red (may be listed under Check manually) |
| test-05 | GREEN | none | Percentage without denominator (subgroup size stated in sentence 1, text stayed on the subgroup) |
| test-06 | RED | Percentage without denominator ("Among men aged over 65, 41%...": group changed, size of men not stated) | Number of participants (312 stated) |
| test-07 | RED | Percentage does not match the stated denominator ("131 (90%)": 131/229 is 57%, no other denominator named) | Number of participants (229 stated); Response rate (not survey data) |
| test-08 | GREEN | none | Percentage does not match the stated denominator (131/146 = 90%, named in the text); Response rate |
| test-09 | RED | Response rate missing | Percentage does not match the stated denominator (146 is named); Number of participants |
| test-10 | GREEN | none | Percentage does not match the stated denominator (1/11 = 9%, 2/11 = 18%, 5/11 = 45%); Response rate (not survey data) |
| test-11 | RED | Percentage does not match the stated denominator ("5 (30%)": 5 / 11 = 45%, reported 30%) | Number of participants (11 stated); Response rate (not survey data) |
| test-12 | GREEN | none; item 5 may appear under Check manually ("1 (10%)": 1 / 11 = 9%, reported 10%) | Item 5 must not be red; Response rate (not survey data) |
| test-13 | RED | Percentage without denominator ("At T1, 131 (90%) had a score above the threshold (Table 5)."): the only stated group sizes are the overall 229 patients and 533 measurements, and the T1 total (146) could only be found by adding up the column | Percentage does not match the stated denominator (no T1 denominator is stated, so item 5 is "not applicable (denominator not stated)"); Number of participants (229 stated); Response rate (not survey data); Methods in results |
| test-14 | GREEN | none required; item 3 may appear under Check manually (sensitivity-analysis sentence with extra detail about which patients were removed) | Item 3 must not be red; Number of participants (stated); Percentage items; Response rate (not survey data) |
| test-15 | RED | Methods described in the results ("A paired-samples t-test was used to compare scores at baseline and follow-up..."); the Pattern line names the matched red pattern | Number of participants (stated); Percentage items; Response rate (not survey data) |
| test-16 | GREEN | none required; item 3 may appear under Check manually (mixed model with a list of covariates or random-effects structure) | Item 3 must not be red; Number of participants (stated); Percentage items; Response rate (not survey data) |

## Also check
- Every flag includes an exact quote, or "No statement found".
- No criticism outside the four rubric items.
- For any red item 3 flag, the Pattern line names a red pattern (test or procedure as subject or object of used/performed/applied, software, or checked assumptions). If it cannot name one, the flag should not be red.
- Every item marked "check manually" in the Item status line has its own line under Check manually, with the quote.

## Check for LeReport
- The send-back message appears only when the light is RED.
- The send-back opening is copied exactly.
- The scope line is present.
- For item 5, the email contains the calculation in the form “count / denominator = x%”.
- The email doesn’t say a denominator is “missing” unless item 2 was flagged.

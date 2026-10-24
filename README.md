# Student Health & Stress (SQL + Tableau)

**Tools:** SQL (MySQL) · Tableau · Kaggle dataset (1,000 students)

**What makes a student healthy or unhealthy?** I used a dataset of 1,000 college students with biometric readings (heart rate, blood pressure, biosensor stress), self-reported stress, sleep, activity, mood, and study and project hours to see what goes along with a Low, Moderate, or High health risk level.

This is the second, more complete version of my [first student health project](https://github.com/itsnotDaviditsDaveed/Student-Health-Analysis-using-SQL-Tableau).

![Sleep quality vs mood](renewed_std_images/Sleep%20Quality%20vs%20Mood.png)

## Key Findings

- **Sleep is the clearest lifestyle signal.** 29% of poor sleepers are High risk, compared with 9% of good sleepers.
- **Self-reported stress tracks risk closely.** It averages 3.0 for Low risk, 5.7 for Moderate, and 7.2 for High.
- **High physical activity was linked to *more* risk.** 33% of highly active students were High risk, vs. 9% for low or moderate activity. This may reflect physical strain rather than fitness.
- **Mood isn't a good predictor.** Most students are Neutral (415) or Happy (399), and risk levels are similar across moods.
- **Biometrics show weak patterns.** Heart rate and blood pressure barely differ across risk levels.
- **Gender:** risk levels are nearly identical. Women's *biosensor* stress is slightly higher (5.6 vs. 5.4), while men *report* slightly more stress.

## Questions I Asked

1. How do physical activity and sleep relate to health risk?
2. How does sleep quality relate to health risk and to mood?
3. Which mood do most students report?
4. Do study and project hours relate to health risk and mood?
5. How do gender and age relate to heart rate and health risk?
6. How does blood pressure compare across risk levels?
7. How does measured stress compare with self-reported stress, by gender?

## Visuals

| | |
|---|---|
| ![](renewed_std_images/Study%20Hours%20vs%20Health%20Risk%20Level.png) | ![](renewed_std_images/Project%20Hours%20vs%20Health%20Risk%20Level.png) |
| ![](renewed_std_images/Gender%20vs%20Stress%20Levels.png) | ![](renewed_std_images/Gender%20vs%20Stress%20Self-Report%20levels.png) |
| ![](renewed_std_images/Gender%20%26%20Age%20vs%20Heart%20Rate.png) | ![](renewed_std_images/Age%20vs%20Health%20Risk%20Levels.png) |

## Files

- `student_health_renewed.sql`: SQL queries
- `Student Health Analysis Renewed Answers 3-16-26-820PM.md`: my answers, with charts
- `renewed_std_images/`: Tableau charts
- `student_health_data.csv`: dataset

**Data source:** [Student Health Data – Kaggle](https://www.kaggle.com/datasets/mjawad17/student-health-data/data)

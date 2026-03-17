create database student_health_db;
use student_health_db;


select * from shd;

create table d_shd as
select * from shd;



-- Creating a duplicate table, just in case.
select * from d_shd;



-- CLEANING DATA.
update d_shd
set Gender = 'Male'
where Gender = 'M';

update d_shd
set Gender = 'Female'
where Gender = 'F';

select * from d_shd;

alter table d_shd
drop `MyUnknownColumn_[6]`;

select * from d_shd;

-- Q1: How does daily physical and sleep activity affect health risk level?
select Physical_Activity, Sleep_Quality, count(*) as amount
from d_shd
group by Physical_Activity, Sleep_Quality
order by Physical_Activity, amount desc;

-- Answer: The highest amount of students that participate in moderate physical activity results in good sleep. (232 students).
-- The highest amount of students that participate in high physical actibity results in good sleep quality. (98 students)
-- The highest amount of students that participate in low physical activity results in good sleep quality. (143)


-- Q2: How does sleep quality affect health risk level?

select Health_Risk_Level, sleep_quality, count(*) as amount from d_shd
group by Health_Risk_Level, sleep_quality
order by amount desc;

-- The highest amount of students that have a good sleep quality, has a moderate health risk level (331 students).
-- The highest amount of students that have good sleep quality has a low health risk level. (98 students)
-- The highest amount of students that have poor sleep quality have a high health risk level. (64 students)
-- Which means good/moderate sleep quality results in either moderate/low health risk level. But poor sleep quality results in a high health risk level.


-- Q3: How does sleep quality affect mood states?
select * from d_shd;

select sleep_quality, mood, count(*) as amount from d_shd
group by sleep_quality, mood
order by sleep_quality, amount desc;
-- The highest amount of students who had a good sleep quality had a neutral mood, a little bit more than happy.
-- The highest amount of student who had a moderate sleep quality had a neutral mood, a little bit more than happy.
-- The highest amount of student who had a poor sleep quality had the same values for both neutral and happy moods.
-- Average moods are usually either happy, or neutral. Which means good sleep does play a good part, but it's not the factor that garuntees health.


-- Q4: Which mood state does most students of the dataset feel?
select mood, count(*) as counta from d_shd
group by mood
order by counta desc;
-- The mood state in which most students feel is NEUTRAL.



-- Q5: Does more or less academic tasks have a relationship with health risk levels?
select Health_Risk_Level, avg(Study_Hours) as avg_st, count(*) from d_shd
group by health_risk_level
order by Health_Risk_Level, avg_st desc;
-- As average study hours go up, the health risk goes from high to moderate.

select Health_Risk_Level, avg(Project_Hours) as avg_pr, count(*) from d_shd
group by health_risk_level
order by avg_pr asc;
-- As average project hours goes up, the health risk goes from low to high to moderate.



-- Q6: Compare gender and maybe age with average heart rate.
select Gender, Age, avg(Heart_Rate) as avg_hr, count(*) as cnt from d_shd
group by Gender, Age
-- having gender = 'Female'
having gender = 'Male'
order by avg_hr desc;
-- The highest amount of females who are aged 22 have the highest average heart rate. (66 females have an average of 73.4 heart rate)
-- The highest amount of females who are aged 21 have the highest average heart rate. (85 males have an average heart rate of 72.1)


-- Question 7: Compare blood pressure with health risk level
-- average blood diastolic
select Health_Risk_Level, avg(Blood_Pressure_Diastolic) as avg_bl_d from d_shd
group by Health_Risk_Level
order by avg_bl_d asc;
-- As average blood pressure diastolic goes up, the health risk goes from high to moderate.

-- average blood systolic
select Health_Risk_Level, avg(Blood_Pressure_Systolic) as avg_std from d_shd
group by Health_Risk_Level
order by avg_std asc;
-- As average blood pressure systolic increases, the health risks goes from high to low. 


-- Q8: Compare gender with stress levels.alter
select * from d_shd;
select Gender, avg(Stress_Level_Biosensor) as stress_level from d_shd
group by Gender
order by stress_level;
-- More females are stressed more than males. Males being average 5.3, and Female beng 5.6



-- Q9: Compare gender with self reported stress levels.
select Gender, avg(Stress_Level_Self_Report) as st_report from d_shd
group by Gender;
-- Males have reported higher stress levels than females. 


-- Q10: What's the relationship with blood pressure and stress levels?
-- We can answer this in tableau


-- Q11: How does academic tasks affect with mood and stress levels?
select avg(Study_Hours) as avg_st, mood, count(*) as cnt from d_shd
group by mood
order by avg_st;
-- As average study hours increase, the mood goes frokm stressed to happy.

select avg(Project_Hours) as pr_st, mood, count(*) as cnt from d_shd
group by mood
order by pr_st;
-- As average project hours increase, the mood goes frokm neutral to happy.



-- Q12: Does age have an affect on health risk levels?
select avg(age) as aage, health_risk_level from d_shd
group by health_risk_level
order by aage;
-- As the age increases, the health risk level goes from moderate to high.
USE costumer_project
SELECT * FROM marketing_campaign LIMIT 10;

alter table marketing_campaign
drop column ID,
drop column Dt_Customer,
drop column Z_CostContact,
drop column Z_Revenue,
drop column Response;

describe marketing_campaign

select
sum(case when year_birth is null then 1 else 0 end) as null_year_birth,
sum(case when Education is null then 1 else 0 end) as null_Education,
sum(case when Marital_Status is null then 1 else 0 end) as null_Marital_Status,
sum(case when Income is null then 1 else 0 end) as null_Income,
sum(case when Kidhome is null then 1 else 0 end) as null_Kidhome,
sum(case when Teenhome is null then 1 else 0 end) as null_Teenhome,
sum(case when Recency is null then 1 else 0 end) as null_Recency,
sum(case when MntWines is null then 1 else 0 end) as null_MntWines,
sum(case when MntFruits is null then 1 else 0 end) as null_MntFruits,
sum(case when MntMeatProducts is null then 1 else 0 end) as null_MntMeatProducts,
sum(case when MntFishProducts is null then 1 else 0 end) as null_MntFishProducts,
sum(case when MntSweetProducts is null then 1 else 0 end) as null_MntSweetProducts,
sum(case when MntGoldProds is null then 1 else 0 end) as null_MntGoldProds,
sum(case when NumDealsPurchases is null then 1 else 0 end) as null_NumDealsPurchases,
sum(case when NumWebPurchases is null then 1 else 0 end) as null_NumWebPurchases,
sum(case when NumCatalogPurchases is null then 1 else 0 end) as null_NumCatalogPurchases,
sum(case when NumWebVisitsMonth is null then 1 else 0 end) as null_NumWebVisitsMonth,
sum(case when AcceptedCmp3 is null then 1 else 0 end) as null_AcceptedCmp3,
sum(case when AcceptedCmp4 is null then 1 else 0 end) as null_AcceptedCmp4,
sum(case when AcceptedCmp5 is null then 1 else 0 end) as null_AcceptedCmp5,
sum(case when AcceptedCmp1 is null then 1 else 0 end) as null_AcceptedCmp1,
sum(case when AcceptedCmp2 is null then 1 else 0 end) as null_AcceptedCmp2,
sum(case when Complain is null then 1 else 0 end) as null_Complain
from marketing_campaign;

delete from marketing_campaign
where income is null

select
min(Year_Birth)as min_year,
max(Year_Birth)as max_year
from marketing_campaign;

delete from marketing_campaign
where Year_Birth <1960;

alter table marketing_campaign add column age int;

update marketing_campaign 
set age= 2025-Year_Birth;

alter table marketing_campaign drop column Year_Birth;

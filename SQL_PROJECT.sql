use mobile;

select*from `mobile analysis`;

# 1 check mobile features and price list

select Phone_name, Brands ,price , Internal_Storage ,Operating_System_Type ,USB_Type,
5G_Availability,Selfie_Camera,RAM_Storage,Battery_Capacity,Battery_Capacity_Range,Country_of_Origin,Price_Range,Total_Mobile

from `mobile analysis`;

# Find out the  price of 10 most expensive phone

select*from `mobile analysis`

order by price desc
limit 10;

# Find out the  price of 10 most lovest phone

select* from`mobile analysis`
order by price asc
limit 10;

# list of top 10 samsung phones with price ans all features

select * from `mobile analysis`
where Phone_name like 'Samsung%' 
order by price desc
limit 10;

select*from `mobile analysis`
where Brands = 'Samsung'
order by Price desc
limit 10;

# must have android phone list then top 5 high price android phones

select*from `mobile analysis`

where Operating_System_Type = 'Android'
order by Price desc
limit 10;

#* Q6: Must have android phone list then top 10 lower price android

select * from `mobile analysis`
where Operating_System_Type = 'Android'
order by Price asc 
limit 10;




#* Q7: Must have IOS phone list then top 10 High price IOS phones

select * from `mobile analysis`
where Operating_System_Type = 'IOS' 
order by Price desc
limit 10;



#* Q8: Must have IOS phone list then top 10 lower price IOS phones

select * from `mobile analysis`
where Operating_System_Type = 'IOS'
order by Price asc
limit 10;

#* Q9: write a query which phone support 5g and also top 10 phone with 5g support

select * from `mobile analysis`
where 5G_Availability = 'Yes'
order by Phone_name 
limit 10;

#* Q10: write a query which phone support 5g and also top 10 lowes price phone with 5g support

select * from `mobile analysis`
where 5G_Availability = 'Yes'
order by Price asc
limit 10;

#* Q11: Total price of all mobile is to be found with brand name
select count(Brands) from`mobile analysis`;

Select Brands , sum(Price) from `mobile analysis`
group by Brands
order by sum(Price) desc;



#12. What is the average price of mobile phones across different brands?

select Brands , avg(Price) 
from `mobile analysis`

group by Brands;




#13. How does the distribution of internal storage capacity vary among different operating system types?

select distinct Internal_Storage , Operating_System_Type

from `mobile analysis`
order by Internal_Storage asc;


#14. Can we find a correlation between 5G availability and the price range of mobile phones?

select distinct 5G_Availability , Price_Range
from `mobile analysis`
where  5G_Availability = 'Yes';


#15. What is the most common USB type used in mobile phones based on their brands?


select max(USB_Type) , Brands
from `mobile analysis`
group by Brands ;


#16. Is there any relationship between the battery capacity and the selfie camera resolution?

select  Battery_Capacity , Selfie_Camera
from `mobile analysis`;


#17. Which country produces mobile phones with the highest average RAM storage?

select Country_of_Origin , avg(RAM_Storage) 
from `mobile analysis`
group by Country_of_Origin;




#18. Are there any trends in the price range based on the total number of mobiles available from a specific brand?

select distinct Price_Range , Total_Mobile , Brands
from `mobile analysis`;

select Brands ,
count(*),
min(Price_Range),
max(Price_Range),
avg(Price_Range)
 from`mobile analysis`
 group by Brands;
 
 

#19. How does the distribution of battery capacity differ in mobile phones based on their price range?

select distinct Battery_Capacity , Price_Range
from `mobile analysis`
order by Price_Range;



#20. Is there a relationship between the operating system type and the availability of 5G in mobile phones?

select  Operating_System_Type , 5G_Availability
from `mobile analysis`
where Operating_System_Type and 5G_Availability = 'Yes' and 5G_Availability = 'No';


select distinct  Operating_System_Type ,5G_Availability
 from `mobile analysis`
where 5G_Availability = 'Yes' or 5G_Availability = 'No';







#21. Can we identify any patterns between the country of origin and the price range of mobile phones?--

SELECT country_of_origin,
       COUNT(*) AS phones_count,
       MIN(Price) AS min_price,
       MAX(Price) AS max_price,
       AVG(Price) AS avg_price
FROM `mobile analysis`
GROUP BY country_of_origin
ORDER BY avg_price DESC;


/*Project Title: Analyzing Mobile Phone Market Trends
Project Overview:
The goal of this project is to analyze trends and patterns in the mobile phone market using a dataset containing information about mobile phones. The project aims to extract valuable insights that can aid in understanding consumer preferences, pricing strategies, and market dynamics.

Steps Involved:
Data Collection and Understanding:

Identify or collect a dataset containing information about mobile phones. This dataset should include attributes such as brand, model, operating system, price, storage capacity, RAM, camera specifications, country of origin, 5G availability, etc.
Understand the schema, data types, and relationships within the dataset.
Data Preparation and Cleaning:

Preprocess the data to handle missing values, duplicates, inconsistencies, and format issues.
Normalize or standardize data where necessary.
Ensure data integrity and coherence for analysis.
Exploratory Data Analysis (EDA):

Perform exploratory analysis to understand basic statistics, distributions, and correlations among variables.
Visualize data using charts, graphs, histograms, and scatter plots to identify trends and patterns.
Key Analysis and Insights:

Analyze the relationships between different attributes like price and specifications (RAM, storage, camera features).
Investigate trends based on brand preferences, operating systems, and country of origin.
Explore how 5G availability relates to other phone specifications or attributes.
Advanced SQL Queries:

Write complex SQL queries to derive valuable insights.
Use GROUP BY, JOINs, CASE statements, and aggregate functions for deeper analysis.
Report Generation and Presentation:

Summarize findings, insights, and conclusions derived from the analysis.
Create visual reports, charts, and graphs to present the analyzed data.
Explain observed trends, correlations, and potential implications.
Tools and Technologies:
SQL Database Management System: MySQL, PostgreSQL, SQL Server, etc.
Programming/Querying Language: SQL
Data Analysis and Visualization Tools: Python (Pandas, Matplotlib, Seaborn), Tableau, or other suitable tools.
Expected Deliverables:
SQL Scripts/Queries: Query scripts used for data analysis.
Data Cleaning Documentation: Report on data cleaning steps and transformations performed.
Exploratory Data Analysis Report: Summary of data insights and visualizations.
Final Report: Detailed insights, trends, and conclusions drawn from the analysis.
Conclusion:
This SQL project aims to provide actionable insights into the mobile phone market, aiding stakeholders in making informed decisions related to product development, marketing strategies, and understanding consumer preferences.

Feel free to modify or expand upon this project outline based on specific objectives, available data, and the depth of analysis required for your project.*/


























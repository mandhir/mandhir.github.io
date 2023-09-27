# Data Science, Engineering & Innovative Automation

### Technical Skills: Python, R, Perl, SQL, Azure, Power BI

#### *Parts of this portfolio have been obfuscated to protect privacy and security*

## Projects

### Technical Project Leadership: Lead vendor integration into internal BI Architecture

![Advantage](/assets/img/advantage.jpg)

Managed a project to integrate a Territory Management & Inventive Compensation vendor into organization's internal business intelligence architecture. Project involved understanding the unique database objects, entity relationships, business processes and helping to architect the **Business Intelligence** infrastructure on **Azure**. Project involved in-depth understanding of Business Intelligence Architecture (Oracle **ERP**, Oracle **DWH**, **Cognos**, **Salesforce**, Middleware, **Azure**, External Vendor platform (on **AWS**), **Power BI**), **Project Leadership** skills, **Stakeholder Management** (IT, Business Leadership), **UAT/SIT**, **Functional User Requirements** Schedule development, **Benefit-Cost Financial Model (BCFM)** development, Go-Live and hypercare.

### Data Engineering: SQL Query Optimization

Initial Query:
```sql
SELECT * FROM business_name.sales_info,
business_name.business_days,
business_name.products,
business_name.divisions
WHERE TO_CHAR (si.sale_date, 'YYYY') >= 2017
GROUP BY si.invoice_type;
```

Optimized Query:

```sql
SELECT
si.sale_date,
si.invoice_type,
cs.customer_name,
cs.customer_type,
si.amount,
si.quantity
FROM business_name.sales_info AS si,
  business_name.customers AS cs,
  business_name.products AS pd,
  business_name.divisions AS div
WHERE 1=1
AND si.sale_date >= '2019-01-01'
AND si.transaction_type IN (7091, 7094, 6933)
GROUP BY si.sale_date, si.invoice_type
HAVING si.invoice_type IN ('STANDARD', 'CD');
```

Conducted **SQL** query optimization projects in collaboration with downstream users, such as the aforementioned example. A number of optimizations have been performed in this example:
1. Selecting only the columns requested by downstream users
2. Selecting only transaction types that are required by users
3. Ensuring that the query is sargable. Ensuring that the database engine can compare to a value that is of the same data type as the data in the column thereby ensuring more efficient index utilization
4. [General rule] Understanding and optimizing based on order of SQL query execution (FROM, JOIN, WHERE, GROUP BY, HAVING, SELECT, ORDER BY, LIMIT) and by using EXPLAIN & ANALYZE

This **Data Engineering** project involved enhancing data model performance, reducing resource consumption and costs, improving scalability, and optimizing the user experience for report and dashboard creators and analysts. Notably, this complex sales reporting query was streamlined by implementing filters, efficient table joining, and appropriate indexing, resulting in a 50% reduction in query execution time and a 25% decrease in resource consumption. Leveraging data profiling and performance testing, I thoroughly understood the data, identified optimization areas, and validated the outcomes of these optimizations.

### Forecasting & Distributed Computing: Time Series Forecasting of Sales/Orders in Databricks

Using **Databricks**, **Spark**, and **Facebook Prophet**, we performed **time series forecasting** of orders and shipments data from **SQL Server** to improve accuracy by removing seasonality and gaining greater insight into predictions. We leveraged **Databricks**' distributed computing capabilities and **Python** scripts to efficiently process large datasets and train forecasting models at scale. Facebook Prophet's advanced forecasting algorithms enabled us to eliminate seasonality and obtain more precise predictions, providing valuable insights for business decision-making.

![Time Series Analysis](/assets/img/timeseries.jpg)

[Notebook: Time Series forecasting with Prophet at scale in Databricks using Spark](https://github.com/mandhir/TimeSeriesForecasting_Databricks/blob/main/Time%20Series%20Forecasting.ipynb)

### Power BI: Analysis of Opportunities in Salesforce

![Salesforce Opportunities Analysis Image](/assets/img/powerbi1.jpg)

The following is an example of a dashboard that I recently built which allows commercial partners to analyze quotes and opportunities data from Salesforce. The project involved understanding user requirements, Salesforce objects, Power BI and complex DAX formulas.


### Databricks/Azure: R visualization example from Combo deals notebook

![Visualization of Open Orders across Endo vs Comm in Databricks](/assets/img/visualization_in_R.jpg)

[Code Snippet: Data Wrangling and Visualization in R](/code_snippets/wrangling_and_ggplot_visual_in_R.R)

This project is a recent example of analysis that I performed in **R** of Orders and customer data. I retrieved data from **SQL Server** (served on **Azure**) on **Databricks** and presented my findings through advanced **data visualization** techniques using the **ggplot2** library revealing trends in open order counts over time for different organizational units.

### Technical Project Leadership: Transitioning from Cognos reporting to Power BI

![Project Capstone Visual](/assets/img/powerbi2.jpg)

Lead the business enablement workstream of the migration of reporting and analytics from **IBM Cognos** to **Power BI**. The leading of the workstream involved user-centric dashboard creation in Power BI, documentation of requirements, the user of **Azure Analysis Services** and conducting comprehensive end-user training on **Power BI** and **DAX**. I collaborated with **multiple stakeholders** (Commercial leadership, IT) and worked to establish dashboards with visuals tailored for commercial decision-making. This project has given me a deep understanding of the strategic commercial decision-making process.


### Innovative Automation: Automated email requests for information

Developed a script that automatically responded to requests for information sent by front-line personell. The script (originally developed in R and Perl) was then developed in Python - monitored a unified inbox for email requests for information. Upon receipt of a relevant email, the script would extract customer identifiers, item numbers and the nature of the information asked for, gather the data requested, format a excel workbook and provide the data requested as an attachment to the sender. This script called "auto-responder" served internal users and saved the team it supported several hours of manual data gathering and saved receipient teams from any human errors.

[Link to script/repository]()

### Innovative Automation: Automated Pricing Discrepancies resolution

A problem that our team faced was invoicing delays due to pricing errors. The team would receive emails from front-line personell asking questions regarding pricing. Team members would manually search for correct pricing and coordinate communication with front-line personnell and marketing. I automated this process through business process mapping, developing scripts in (originally R and Perl) and then Python. These scripts extracted data from our data warehouse, processed the errors that required coordination with marketing and sales reps, identified the appropriate stakeholders, emailed them and provided responses to pricing teams members for downstream execution of the resolution of those errors. This automation saved over $100,000 annually in collected invoices and saved over 2000+ hours of manual work.

### Data Cleansing: Working with Regular Expressions

Regular expressions (regex), serving as a potent tool for defining search patterns using sequences of characters, are pivotal in both **data cleansing** and **data transformation** processes. These versatile patterns allow for precise searching, editing, and manipulation, playing a vital role in optimizing data quality and formatting data for analysis. I have extensively utilized regex in numerous projects, especially in **R**, **Python**, and **Perl**, to achieve effective data cleansing and seamless data transformations. Here is a simple example:

![Getting the email from a list of emails](/assets/img/regex1.jpg)

## Additional Certifications/Experience
- 2022	 - 	Advanced SQL	_Global Knowledge_
- 2022	 - 	AWS Cloud Practitioner Essentials	_Global Knowledge_
- 2022	 - 	Implementing a Data Science Solution on Azure	_Global Knowledge_
- 2022	 - 	Data Engineering on Azure (DP-203T00)	_Global Knowledge_
- 2022	 - 	Applied Python in Data Science	_Global Knowledge_
- 2022	 - 	Azure Fundamentals – AZ-900	_Microsoft_
- 2021	 - 	Analyzing Data with Microsoft PowerBI (DA-100T00)	_Microsoft_
- 2020	 - 	Supervised Learning in R: Classification	_DataCamp_
- 2019	 - 	Machine Learning	_Prof Andrew Ng - Coursera_
- 2019	 - 	Python for Data Science: Intermediate	_DataQuest_
- 2019	 - 	Data Analysis with Python	_Coursera_
- 2019	 - 	Data Visualization with Python	_Coursera_
- 2019	 - 	Python for Data Science and AI	_Coursera_
- 2018	 - 	Data Analytics in Business	_Sridhar Narasimhan, PhD_
- 2018	 - 	Computing for Data Analysis	_Richard Vuduc, PhD_
- 2018	 - 	Analytics Modelling	_Joel Sokol, PhD_
- 2016	 - 	Programming with Java	_Seneca College_
- 2016	 - 	Applied Statistics	_Seneca College_
- 2015	 - 	Programming with Perl	_Seneca College_

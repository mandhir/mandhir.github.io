# Data Science & Engineering

### Technical Skills: Python, R, Perl, SQL, Azure, Power BI

#### *Parts of this portfolio have been obfuscated to protect privacy and security*

## Projects

### Lead TMIC vendor integration into internal Azure Cloud Architecture

Lead a project to integrate a Territory Management & Inventive Compensation vendor into organization's internal business intelligence architecture. Project involved understanding the unique database objects, entity relationships, business processes and helping to architect the Business Intelligence infrastructure on Azure. Project involved in-depth understanding of Business Intelligence Architecture, excellent project leadership skills, stakeholder management (IT, Business Leadership), UAT/SIT, Functional User Requirements Schedule development, Benefit-Cost Financial Model development, Go-Live and hypercare.

*Add visual*

**Salesforce objects**

### Project Capstone: Transitioning from Cognos reporting to Power BI and development of Pricing Data Model

Description and visual

End-User Training

User requirements documentation

### Analysis of Opportunities in Salesforce



**Salesforce objects**

**DAX**

**Power BI**


### Data Cleansing project with Regular Expressions

Regular expressions (regex), serving as a potent tool for defining search patterns using sequences of characters, are pivotal in both **data cleansing** and **data transformation** processes. These versatile patterns allow for precise searching, editing, and manipulation, playing a vital role in optimizing data quality and formatting data for analysis. I have extensively utilized regex in numerous projects, especially in **R**, **Python**, and **Perl**, to achieve effective data cleansing and seamless data transformations. Here is a simple example:

![Getting the email from a list of emails](/assets/img/regex1.jpg)

### Time Series Forecasting of Orders in Databricks

Using **Databricks**, **Spark**, and **Facebook Prophet**, we performed **time series forecasting** of orders and shipments data from **SQL Server** to improve accuracy by removing seasonality and gaining greater insight into predictions. We leveraged **Databricks**' distributed computing capabilities and **Python** scripts to efficiently process large datasets and train forecasting models at scale. Facebook Prophet's advanced forecasting algorithms enabled us to eliminate seasonality and obtain more precise predictions, providing valuable insights for business decision-making.

*Good if I can add a visual*

[Notebook: Time Series forecasting with Prophet at scale in Databricks using Spark](https://github.com/mandhir/TimeSeriesForecasting_Databricks/blob/main/Time%20Series%20Forecasting.ipynb)


### R visualization example from Combo deals notebook in Databricks

![Visualization of Open Orders across Endo vs Comm in Databricks](/assets/img/visualization_in_R.jpg)

[Code Snippet: Data Wrangling and Visualization in R](/code_snippets/wrangling_and_ggplot_visual_in_R.R)

This project is a recent example of analysis that I performed in **R** of Orders and customer data. I retrieved data from **SQL Server** (served on **Azure**) on **Databricks** and presented my findings through advanced **data visualization** techniques using the **ggplot2** library revealing trends in open order counts over time for different organizational units.


### SQL Query Optimization

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
AND TO_CHAR (si.sale_date, 'YYYY') >= 2019
AND si.transaction_type IN (1001, 1002, 3009)
GROUP BY si.sale_date, si.invoice_type;
```

Conducted **SQL** query optimization projects in collaboration with downstream users, such as the aforementioned example. This **Data Engineering** project involved enhancing data model performance, reducing resource consumption and costs, improving scalability, and optimizing the user experience for report and dashboard creators and analysts. Notably, this complex sales reporting query was streamlined by implementing filters, efficient table joining, and appropriate indexing, resulting in a 50% reduction in query execution time and a 25% decrease in resource consumption. Leveraging data profiling and performance testing, I thoroughly understood the data, identified optimization areas, and validated the outcomes of these optimizations.


## Work Experience
**Lead Analyst Business Intelligence @ Stryker (_July 2018 - Present_)**
- Currently contributing actively to migration to SAP and Azure from Oracle DWH
- Senior Commercial Data Scientist - Lead integration and migration of Sales Analytics data from IBM Cognos & Amazon Web Services (AWS) S3 into Azure Analysis Services to enable strategic decision making about sales performance
- Senior Commercial Data Scientist – Predictive modelling of order/shipments data
- Senior Commercial Data Scientist – Automated pricing metrics generated to guide price setting for new contracts in Stryker Canada
- Data Analyst - Built ETL pipeline & an automated reporting system in R & Perl (Win32::OLE) through MS Outlook
- Data Analyst - Optimized costing model through RESTful API leading to an annual increase of freight revenue by $72000
- Data Analyst - Web scraped publicly available surgeon/customer data in Perl to drive customer segmentation
- Data Analyst - Built tools in R to provide statistical insights when supporting pricing for business opportunities
- Data Analyst - Made a Pricing Quote tool in Excel-VBA & a PowerBI data model linked through SharePoint for a Lean Sigma – Green Belt Certification. The tool will speed up payment collection delayed by invoicing errors.

**Data Analytics & Visualization Instructor @ edX Bootcamps (_June 2022 - March 2023_)**
- Instructor for 2 bootcamp cohorts from Carleton University and University of Central Florida
- Excel: VBA, Statistical Modelling
- Python: NumPy, Pandas, Matplotlib, JSON handling etc.
- Databases: SQL, NoSQL, Postgres, MongoDB
- Visualization: HTML, CSS, JS, Leaflet
- Advanced Topics: Hadoop, ML, Spark

**Pricing Analyst @ TF International – Clarke Transport (_May 2017 – June 2018_)**
- Analyst responsible for efficiently pricing services and quoting prices to clients
- Maximized revenue by building pricing models and performing rigorous analysis

## Education
- Analytics 					| Georgia Institute of Technology & EdX (_Jan 2018 - Aug 2018_)
- Bioinformatics				| Seneca College (_Aug 2015 - July 2016_)
- Life Science: Bioinformatics 	| National University of Singapore (_Jun 2010 - Jan 2014_)

## Volunteering Activities
- Volunteer @ Sant Nirankari Mission (_2009 - Present_)
- Group Facillitator @ Lighthouse Program for Grieving Children (_2019 - March 2020_)
- Bioinformatics Analyst @ Mount Sinai Health System in Toronto (_2019 - 2020_)

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
- 2014	 - 	Rules & Regulations for Dealing in Securities	_Institute of Banking & Finance_
- 2014	 - 	Securities & Futures Product Knowledge	_Institute of Banking & Finance_
- 2014	 - 	Securities Products & Analysis	_Institute of Banking & Finance_
- 2014	 - 	Wealth Manager	_Citibank_
- 2013	 - 	Finalists in Hackathon	_AngelHack: Singapore_
- 2009	 - 	Sales Director	_Rajman Overseas Pte Ltd_


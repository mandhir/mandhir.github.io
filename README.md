# Data Science & Engineering

### Technical Skills: Python, R, Perl, SQL, Azure, Power BI

## Projects
### SQL Query Optimization

Initial Query:
```sql
SELECT si.sale_date, si.invoice_type
FROM business_name.sales_info AS si,
  business_name.business_days AS bd,
  business_name.products AS pd,
  business_name.divisions AS div
WHERE TO_CHAR(si.sale_date, 'YYYY') >= '2017'
GROUP BY si.sale_date, si.invoice_type;
```

Optimized Query:

![Initial Query](/assets/img/eeg_band_discovery.jpeg)

Optimized queries used to pull data into SQL Server. Optimization was performed based on 

Developed objective strategy for discovering optimal EEG bands based on signal power spectra using **Python**. This data-driven approach led to better characterization of the underlying power spectrum by identifying bands that outperformed the more commonly used band boundaries by a factor of two. The proposed method provides a fully automated and flexible approach to capturing key signal components and possibly discovering new indices of brain activity.

![EEG Band Discovery](/assets/img/eeg_band_discovery.jpeg)

### Decoding Physical and Cognitive Impacts of Particulate Matter Concentrations at Ultra-Fine Scales
[Publication](https://www.mdpi.com/1424-8220/22/11/4240)

Used **Matlab** to train over 100 machine learning models which estimated particulate matter concentrations based on a suite of over 300 biometric variables. We found biometric variables can be used to accurately estimate particulate matter concentrations at ultra-fine spatial scales with high fidelity (r2 = 0.91) and that smaller particles are better estimated than larger ones. Inferring environmental conditions solely from biometric measurements allows us to disentangle key interactions between the environment and the body.

![Bike Study](/assets/img/bike_study.jpeg)

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
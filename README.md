# [UNDER CONSTRUCTION]
# Data Science & Engineering

### Technical Skills: Python, R, Perl, SQL, Azure, Power BI

#### *Parts of this portfolio have been obfuscated to protect privacy and security*

## Projects

### Time Series Forecasting of Orders in Databricks

<details>
  <summary>This is a test</summary>

  ``
  SELECT * FROM lallu.table_name;
  ``

</details>

Performed time series forecasting of orders and shipments data in databricks using Spark and Facebook Prohpet. Project was undertaken due to a demand for greater accuracy - removing seasonality and gaining greater insight into predictions of Orders and Shipments.

[Notebook: Time Series forecasting with Prophet at scale in Databricks using Spark](https://github.com/mandhir/TimeSeriesForecasting_Databricks/blob/main/Time%20Series%20Forecasting.ipynb)


## Frequently Asked Questions

<details>
  <summary>What is Markdown?</summary>

  Markdown is a lightweight markup language that allows you to create formatted text using a plain text editor. It is commonly used for writing online documentation, blog posts, and README files.
</details>

<details>
  <summary>How do I use Markdown?</summary>

  To use Markdown, simply type your text in a plain text editor and format it using Markdown syntax. For example, to create a heading, you would start a line with one or more hash symbols (#). To create a bulleted list, you would start a line with a hyphen (-) or asterisk (*).
  For more information on Markdown syntax, please see the [Markdown documentation](https://www.markdownguide.org/basic-syntax/).
</details>



### R visualization example from Combo deals notebook

```r
# Convert ORDER_BOOKED_DATE to a date-only format
open_orders$ORDER_BOOKED_DATE_ONLY <- as.Date(open_orders$ORDER_BOOKED_DATE)

open_orders_endo <- filter(open_orders, ORG_ID == 87)
open_orders_comm <- filter(open_orders, ORG_ID == 88)

# Extract year and month from ORDER_BOOKED_DATE_ONLY for open_orders_endo
aggregated_data_endo <- open_orders_endo %>%
  group_by(Year = format(ORDER_BOOKED_DATE_ONLY, "%Y"),
           Month = format(ORDER_BOOKED_DATE_ONLY, "%m")) %>%
  summarize(distinct_order_count = n_distinct(ORDER_NUMBER),
            ORG_ID = "Endo Unique Open Order Count")  # Assign custom label

# Extract year and month from ORDER_BOOKED_DATE_ONLY for open_orders_comm
aggregated_data_comm <- open_orders_comm %>%
  group_by(Year = format(ORDER_BOOKED_DATE_ONLY, "%Y"),
           Month = format(ORDER_BOOKED_DATE_ONLY, "%m")) %>%
  summarize(distinct_order_count = n_distinct(ORDER_NUMBER),
            ORG_ID = "Comm Unique Open Order Count")  # Assign custom label

# Combine year and month columns for aggregated_data_endo
aggregated_data_endo$Month <- as.Date(paste(aggregated_data_endo$Year, aggregated_data_endo$Month, "01", sep = "-"))

# Combine year and month columns for aggregated_data_comm
aggregated_data_comm$Month <- as.Date(paste(aggregated_data_comm$Year, aggregated_data_comm$Month, "01", sep = "-"))

# Combine the two datasets
combined_data <- rbind(aggregated_data_endo, aggregated_data_comm)

# Create a line plot of combined data
ggplot(combined_data, aes(x = Month, y = distinct_order_count, color = ORG_ID)) +
  geom_line() +
  scale_x_date(date_labels = "%b %Y") +
  scale_color_manual(values = c("#FFB500", "#85458A")) +  # Set custom line colors
  labs(title = "Distinct Open Order Count by Month", x = "Order Booked Date (mmm YYYY)", y = "Distinct Open Order Count", color = "Legend") +
  theme_minimal()
```

![Visualization of Open Orders across Endo vs Comm in Databricks](/assets/img/visualization_in_R.jpg)

Description of what I did for this Combo deals project

### SQL Query Optimization


<!DOCTYPE html>
<html>
<head>
<style>
  .toggle-section {
    display: none;
  }
</style>
</head>
<body>

<button onclick="toggleSection()">Toggle Section</button>

<div id="toggle-section" class="toggle-section">
  <p>This is the content of the toggleable section.</p>
</div>

<script>
  function toggleSection() {
    var section = document.getElementById("toggle-section");
    section.style.display = (section.style.display === "none" || section.style.display === "") ? "block" : "none";
  }
</script>

</body>
</html>



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

Conducted SQL Query Optimization Projects such as the one above in collaboration with downstream users aided in improving performance of data models, reducing resource consumption/cost, enhanced scalability and better user experience (for report/dashboard creators/analysts).


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






# Data Scientist

#### Technical Skills: Python, R, Perl, SQL, Azure, Power BI

## Projects
### SQL Query optimization

[If there is a link](https://www.google.ca)

Description of the project with **Skill Name (Eg. Python)** that can reside here

![Name of the visual](/assets/img/stars.JPG)

### Visualizing a unique type of purchase
[If there is a link](https://www.apple.com)

```
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

Description of the project with **Skill Name (Eg. R)** that can reside here

![Name of the visual](/assets/img/count_by_business.png)

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

**Data Analytics & Visualization Instructor @ edX (_June 2022 – March 2023_)**
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
- Analytics | Georgia Institute of Technology & EdX (_June 2018_)
- Bioinformatics	| Seneca College (_July 2016_)
- Life Sciences, Bioinformatics | National University of Singapore (_Jan 2014_)

## Additional Certifications/Experience
- Advanced SQL
- AWS Cloud Practitioner Essentials
- Implementing a Data Science Solution on Azure
- Data Engineering on Azure (DP-203T00)
- Applied Python in Data Science
- Azure Fundamentals – AZ-900
- Analyzing Data with Microsoft PowerBI (DA-100T00)
- Supervised Learning in R: Classification
- Machine Learning
- Python for Data Science: Intermediate
- Data Analysis with Python
- Data Visualization with Python
- Python for Data Science and AI
- Data Analytics in Business
- Computing for Data Analysis
- Analytics Modelling
- Programming with Java
- Applied Statistics
- Programming with Perl
- Rules & Regulations for Dealing in Securities
- Securities & Futures Product Knowledge
- Securities Products & Analysis
- Wealth Manager
- Finalists in Hackathon
- Sales Director



- [Data Science Projects](www.microsoft.com)

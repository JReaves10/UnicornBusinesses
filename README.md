# High-Growth Business Analysis
Analyzing trends in high-growth industries by identifying the top sectors producing unicorn companies and their financial impact.

## Objectives
1. Identify the **top three industries** with the highest number of new unicorns created in **2019**, **2020**, and **2021 combined**.
2. Analyze the **number of** unicorns, the **year** they achieved unicorn status, and their **average valuation in billions** of dollars.
3. Present a final dataset containing industry, year, num_unicorns, and average_valuation_billions, sorted by year and number of unicorns in descending order.

## Dataset Description
The dataset originates from **unicorn_full.csv**, which was split into the following tables:

#### dates:
- **company_id**: Unique ID for the company.
- **date_joined**: Date the company became a unicorn.
- **year_founded**: Year the company was founded.

#### funding:
- **company_id**: Unique ID for the company.
- **valuation**: Company valuation in US dollars.
- **funding**: Amount of funding raised in US dollars.
- **select_investors**: Key investors in the company.

#### industries:
- **company_id**: Unique ID for the company.
- **industry**: Industry the company operates in.

#### companies:
- **company_id**: Unique ID for the company.
- **company**: Name of the company.
- **city**: Headquarters city.
- **country**: Headquarters country.
- **continent**: Headquarters continent.

## Installation
Clone this repository and install the necessary libraries:
```bash
git clone https://github.com/JReaves10/UnicornBusinesses
cd UnicornBusinesses
```
- Ensure the unicorn_full.csv dataset is accessible and correctly split into tables.
- Run the provided SQL queries to generate insights.

## Code Explanation
### 1. Identifying Top Industries
We first find the top three industries with the most unicorns from 2019-2021:

1

### 2. Calculating Yearly Rankings
Next, we determine the number of unicorns and their average valuation:

2

### 3. Generating Final Output
Finally, we filter for the top industries and format the average valuation:

3

### Results
- Identifies the top three industries that produced the most unicorns between 2019-2021.
- Highlights industry trends, including the year-wise count of unicorns and their average valuation.
- Enables investment firms to identify high-growth sectors and optimize their portfolios accordingly.

### Output
The final output presents the number of unicorns and their average valuation by industry and year. Below is a visual representation of the results:

4

## Conclusion
This project provides valuable insights into high-growth industries, helping investors identify trends and potential opportunities. By analyzing unicorn data, we can better understand which sectors are driving innovation and financial success.

#### Technology Used
- Language: **SQL**
- Concepts: **Window Functions**, **Aggregation**, **Data Partitioning**, **Industry Analysis**

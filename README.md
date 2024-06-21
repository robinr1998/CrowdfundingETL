# ETL mini project with python.
# Extract, Transform and load crowdfunding data set.

## Background
This project includes building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 
After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. 
Finally, you’ll upload the CSV file data into a Postgres database.

## Data sources
- [Crowdfunding Dataset - Excel file] (Resources/crowdfunding.xlsx)
- [Contact Dataset- Excel file] (Resources/contacts.xlsx)

## ETL Process
- Create a Category/SubCategory DataFrame.
  - Load the data from excel (Crowdfunding.xlsx).
  - Split the column "category & sub-category" by using .str.split('/',expand=True).
  - Create Column heeding by extracting the unique values using .unique method.
  - Create new data frames using "PdDataframe".
  - Save the cleaned data frame as CSV file.
  
- Create Campaign DataFrame.
  - Rename the columns using rename method.
  - Change the data types of the columns   using "pd.to_datetime" and "astype".
  - Merge the category and sub-category data frame using "merge" method.  
  - Drop unwanted columns using "drop" method.
  - Save the cleaned data frame as CSV file.

- Create the Contacts DataFrame
  - Load the data from the CSV file.
  - Iterate data set for each rows.
  - Using json.loads create a dictionary for the data in the data frame.
  - Extract only the value part of the data from the dictionary using "values()" method and store in a list.
  - Create a data frame by using the data list.
  - Using pandas regular expressions (pattern and ".str.extract()") extract the ID,Name and Email from the dataset.
  - Save the cleaned data frame as CSV file.  

## Data Modeling
The modeling process starts by reading the available data in various CSV files and identifying 
- Relationship between those data
- Dependencies between data
- Unique values withing a given data set
- Relevant types of the data available. 

[Data modeling tool : quick database diagrams](https://www.quickdatabasediagrams.com). 

## Tools and python libraries used
- Pandas re.
- Pandas numpy.

## Folders and files.
- Resources folder. 
  - [crowdfunding.xlsx (Campaign data source).](Resources/crowdfunding.xlsx)
  - [contacts.xlsx (Contact list).] (Resources/contacts.xlsx)
  - [campaign.csv (cleaned campaign dataset).] (Resources/campaign.csv)
  - [category.csv (cleaned category dataset).] (Resources/category.csv)
  - [subcategory.csv (cleaned sub-category dataset).] (Resources/subcategory.csv)
  - [contacts.csv (cleaned contacts dataset).] (Resources/contacts.csv)
- DatabaseSchema.
  - [crowdfunding_db_schema.sql (DatabaseSchema script)] (DatabaseSchema/crowdfunding_db_schema.sql)
  - [crowdfunding_db_schema.png (image of the ERD)] (DatabaseSchema/crowdfunding_db_schema.png)
- SQLOutputs.
Contains images of the Postgres query outputs
  - [category.] (SQLOutputs/campaign.png)
  - [subcategory.] (SQLOutputs/subcategory.png)
  - [contacts.] (SQLOutputs/contacts.png)
  - [campaign.] (SQLOutputs/campaign.png)
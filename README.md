# ETL-Pipeline-From-BigQuery-to-SQL-Server-Warehouse-Using-SSIS
This is an ETL project that extracts US Residential Real Estate data(public data) from google BigQuery, transforms it and loads into SQL Server (Data Warehouse) by leveraging SSIS

**Dataset**
This is a sample dataset of 100 millions of property, block, home valuation and other property info in the US.
The sample dataset is a subset of the San Francisco-Oakland MSA, but the full dataset has nationwide coverage.
More details about the dataset can be found here: 
https://console.cloud.google.com/marketplace/product/housecanary-com/housecanary?project=charged-mind-377521

Below is a snapshot of the tables in the schema 

![Annotation 2023-03-08 131127](https://user-images.githubusercontent.com/68739792/224132925-876e2974-c274-42a9-bd1c-2ea4c78a51a3.png)

I extracted all the tables in the schema, made some trandformations on the columns and loaded it to SQL Server (that serves as Data Warehouse)

Below is a sample snapshot of the control flow of the ETL process in SSIS design pane, I could not take a snapshot of the full diagram because of the large height. 

![ETL Control Flow Snapashot](https://user-images.githubusercontent.com/68739792/224133579-8c071c1a-16c8-47a0-b551-1956f51e95ac.png)

Below is also a snapshot of the control flow of Datawarehouse created from SSIS. They are basically SQL Scripts 

![DW Control Flow Snapshot](https://user-images.githubusercontent.com/68739792/224135652-2549f4f9-84e1-416c-b39c-2da585e632a2.png)

Finally the snapshot of the datawarehouse model built from SQL Server Scripts 

![DB Diagram in SQL Server Warehouse](https://user-images.githubusercontent.com/68739792/224136318-6dfadb14-a390-4511-b0a5-2fc8e02646f6.png)
 
The SQL Scripts are uploaded and I am currently working on an article that shows a guide on how I built this pipeline using SSIS. 

Feel free to reach out to me on suggestions, project collaborations and job opportunities. Thanks

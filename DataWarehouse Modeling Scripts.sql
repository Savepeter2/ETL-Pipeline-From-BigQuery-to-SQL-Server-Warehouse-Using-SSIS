USE DW_USResidentialRealEstate
GO

--ALTER TABLE dim_national_cs ADD country_code nvarchar(2) NULL
--GO

--UPDATE dim_national_cs SET country_code = 'US'
--ALTER TABLE dim_national_cs ALTER COLUMN country_code nvarchar(2) NOT NULL

--ALTER TABLE fact_block_value
--ADD FOREIGN KEY(zip) REFERENCES dim_zip_cs(zip) ON DELETE SET NULL

--ALTER TABLE fact_block_value
--ADD FOREIGN KEY(msa) REFERENCES dim_msa_cs(msa) ON DELETE SET NULL

--ALTER TABLE fact_block_value 
--ADD country_code nvarchar(2)

--ALTER TABLE dim_national_cs
--ADD PRIMARY KEY(country_code) 

--UPDATE fact_block_value
--SET country_code = 'US'

--ALTER TABLE fact_block_value
--ADD FOREIGN KEY(country_code) REFERENCES dim_national_cs(country_code) ON DELETE SET NULL

--ALTER TABLE dim_national_ts
--ADD country_code nvarchar(2)

--UPDATE dim_national_ts
--SET country_code = 'US'


--ALTER TABLE dim_block_value_ts
--ADD FOREIGN KEY(block_id) REFERENCES fact_block_value(block_id) ON DELETE SET NULL

--ALTER TABLE dim_zip_ts
--ADD FOREIGN KEY(zip) REFERENCES dim_zip_cs(zip) ON DELETE SET NULL

--ALTER TABLE dim_msa_ts
--ADD FOREIGN KEY(msa) REFERENCES dim_msa_cs(msa) ON DELETE SET NULL

--ALTER TABLE dim_national_ts 
--ADD FOREIGN KEY(country_code) REFERENCES dim_national_cs(country_code) ON DELETE SET NULL

--Let's try and change the state to upper case 

--ALTER TABLE fact_block_value
--ADD upper_state nvarchar(2)

--UPDATE fact_block_value
--SET upper_state = UPPER(state)

--CREATE TABLE state_cs(state nvarchar(2) PRIMARY KEY)

--INSERT INTO state_cs
--SELECT DISTINCT state FROM dim_state_ts 

--ALTER TABLE fact_block_value
--ADD FOREIGN KEY(state) REFERENCES state_cs(state) ON DELETE SET NULL

--ALTER TABLE dim_state_ts
--ADD FOREIGN KEY(state) REFERENCES state_cs(state) ON DELETE SET NULL

--CREATE TABLE block_id_cs(block_id nvarchar(15) PRIMARY KEY)

--INSERT INTO block_id_cs
--SELECT DISTINCT block_id from fact_block_value

--ALTER TABLE fact_block_value 
--ADD FOREIGN KEY(block_id) REFERENCES block_id_cs(block_id) ON DELETE SET NULL

--ALTER TABLE dim_block_value_ts
--ADD FOREIGN KEY(block_id) REFERENCES block_id_cs(block_id) ON DELETE SET NULL

--ALTER TABLE fact_block_rental_value
--ADD FOREIGN KEY(block_id) REFERENCES block_id_cs(block_id) ON DELETE SET NULL



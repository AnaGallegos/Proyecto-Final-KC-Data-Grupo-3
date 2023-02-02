--Creamos el esquema
create schema prueba_csv authorization ckuqrdql;

-- Creamos tabla

create table prueba_csv.airbnb(
    ID varchar(10),
    "Host ID" varchar(100),
    "Host Since" date,
    "Host Name" varchar (100),
    Street varchar (500),
    "Neighbourhood Cleansed" varchar (100),
    City varchar (50),
    State varchar (100),
    Zipcode varchar(100),
    "Smart Location" varchar (150),
    "Country Code" varchar (50),
    Country varchar (100),
    Latitude varchar (20),
    Longitude varchar (20),
    "Property Type" varchar (50),
    "Room Type" varchar (100),
    Bathrooms varchar (5),
    Bedrooms varchar (5),
    Beds varchar (5),
    "Bed Type" varchar (50),
    Price  varchar (100),
    "Number of Reviews" varchar (500),
    "Cancellation Policy" varchar (100),
    Geolocation varchar (200)
    );

ALTER ROLE ckuqrdql WITH SUPERUSER 

COPY prueba_csv.airbnb (ID,"Host ID","Host Since", "Host Name", Street,"Neighbourhood Cleansed",
    City,State,Zipcode,"Smart Location","Country Code",Country,Latitude,Longitude,"Property Type","Room Type",Bathrooms,Bedrooms,Beds,
    "Bed Type",Price, "Number of Reviews","Cancellation Policy",Geolocation)
FROM 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main'
DELIMITER ','
CSV HEADER;

psql -h <host> -U <user> -d <ckuqrdql> -c \copy <prueba_csv.airbnb> FROM '<C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main>' with (format csv,header true, delimiter ',');

COPY table TO 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main\airbnb_data_warehouse.csv' DELIMITER ',' CSV HEADER;

copy (select * FROM table) to 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main\airbnb_data_warehouse.csv' delimiter ',' csv header;

\copy prueba_csv.airbnb from 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main\airbnb_data_warehouse.csv' WITH DELIMITER ',' CSV;

BEGIN;
Copy prueba_csv.airbnb (ID,"Host ID","Host Since", "Host Name", Street,"Neighbourhood Cleansed",
    City,State,Zipcode,"Smart Location","Country Code",Country,Latitude,Longitude,"Property Type","Room Type",Bathrooms,Bedrooms,Beds,
    "Bed Type",Price, "Number of Reviews","Cancellation Policy",Geolocation)
from 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main\airbnb_data_warehouse.csv'
DELIMITER ','
CSV HEADER;
COMMIT;

Copy prueba_csv.airbnb from stdin (Delimiter ‘,’);

COPY  prueba_csv.airbnb (ID,"Host ID","Host Since", "Host Name", Street,"Neighbourhood Cleansed",
    City,State,Zipcode,"Smart Location","Country Code",Country,Latitude,Longitude,"Property Type","Room Type",Bathrooms,Bedrooms,Beds,
    "Bed Type",Price, "Number of Reviews","Cancellation Policy",Geolocation)
FROM 'C:\Users\maria\Downloads\Proyecto-Final-KC-Data-Grupo-3-main\Proyecto-Final-KC-Data-Grupo-3-main\airbnb_data_warehouse.csv'  
WITH
DELIMITER  ',' 

select *
from prueba_csv.airbnb

select city 
from prueba_csv.airbnb a 

select "Host Since"  
from prueba_csv.airbnb a 


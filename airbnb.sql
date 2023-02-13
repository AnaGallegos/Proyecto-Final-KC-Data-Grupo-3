
-- La creación de base de datos la hicimos con el programa pgAdmin
--Creamos el esquema
create schema airbnb

-- Creamos tabla

create table airbnb.airbnb_table(
    ID integer,
    Host_ID integer,
	Host_Name varchar (100),
    Host_Since date,
	Host_Location varchar (150),
    Street varchar (500),
    Neighbourhood_Cleansed varchar (100),
    Neighbourhood_Group_Cleansed varchar (100),
    City varchar (50),
    Zipcode varchar(20),
    Country varchar (100),
    Latitude float,
    Longitude float,
    Property_Type varchar (50),
    Room_Type varchar (100),
    Accomodates integer,
    Bathrooms float,
    Bedrooms float,
    Beds float,
    Bed_Type varchar (50),
    Amenities varchar (500),
    Price float,
    Guests_Included integer,
    Minimum_Nights integer,
    Maximum_Nights integer,
    Number_of_Reviews integer,
    Cancellation_Policy varchar (100),
    Calculated_Host_Listings_Count float
    );

--Importamos los datos del CSV a través de pgAdmin con la funcion Import Data ya que al momento de ejecutar el código nos daba el siguiente error: 
--SQL Error [42501]: ERROR: must be superuser or a member of the pg_read_server_files role to COPY from a file
--Hint: Anyone can COPY to stdout or from stdin. psql's \copy command also works for anyone.
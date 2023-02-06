# Proyecto Fina KC Data -  Grupo 3 (The JSON 5)
### Integrantes: Ana Gallegos, Andrea Duque, Andreina Garcia, Carla Romero y Mariana Fabian.

---

![the(1)](https://user-images.githubusercontent.com/42738378/216831749-56af5a0d-01e0-4d0a-885e-ec151853205f.png)

Como inversoras en el mercado de los alquileres de Airbnb, queremos maximizar nuestros ingresos. Tenemos alquileres exitosos en Berlín y en Zurich, pero ahora estamos expandiéndonos a Madrid y queremos asegurarnos de que estamos estableciendo los precios adecuados para nuestros alquileres en esta ciudad. Por ello, nos enfrentamos al desafío de analizar una muestra de datos de Airbnb de la capital para entender mejor el mercado. 

Nuestro **objetivo** es descubrir patrones y tendencias en los precios de los alquileres de Madrid y predecir el rango competitivo de precios para nuestras propiedades. 

Algunas de las preguntas a las que nos enfrentamos son:

-¿Cuáles son los vecindarios de Madrid más caros y más baratos? 

-¿Cuál es el promedio de precios de los alquileres?

-¿Cuáles son los vecindarios más populares para los viajeros?

-¿Qué mes es el que tiene el precio promedio de los alquileres más elevado? ¿Y el más bajo? 

-¿Cuál es la diferencia de precios entre el mes más económico y el más caro?

-¿Cuáles son las zonas o calles con mayor oferta? ¿Y con menor oferta?

-¿Qué diferencia de precio existe entre las zonas con mayor y menor oferta durante los meses más caros? ¿Y durante los meses más baratos?

-¿Cuál es la fecha (día-mes) más costosa del año en Madrid?

-¿Cuál es el número promedio de habitaciones por oferta?

-¿Hay alguna relación entre el precio y el número de habitaciones en los alquileres?


Nuestro análisis nos guiará a través de los datos, identificando patrones y dando respuesta a estas y otras preguntas importantes. Con nuestros hallazgos, podremos establecer una estrategia de precios efectiva para nuestros alquileres que maximicen nuestra inversión. Y esperamos que la información obtenida sea útil para cualquier persona interesada en entender mejor el mercado de los alquileres de Airbnb en la capital española. 


### Dataset

El [dataset](https://public.opendatasoft.com/explore/dataset/airbnb-listings/export/?disjunctive.host_verifications&disjunctive.amenities&disjunctive.features&q=Madrid&dataChart=eyJxdWVyaWVzIjpbeyJjaGFydHMiOlt7InR5cGUiOiJjb2x1bW4iLCJmdW5jIjoiQ09VTlQiLCJ5QXhpcyI6Imhvc3RfbGlzdGluZ3NfY291bnQiLCJzY2llbnRpZmljRGlzcGxheSI6dHJ1ZSwiY29sb3IiOiJyYW5nZS1jdXN0b20ifV0sInhBeGlzIjoiY2l0eSIsIm1heHBvaW50cyI6IiIsInRpbWVzY2FsZSI6IiIsInNvcnQiOiIiLCJzZXJpZXNCcmVha2Rvd24iOiJyb29tX3R5cGUiLCJjb25maWciOnsiZGF0YXNldCI6ImFpcmJuYi1saXN0aW5ncyIsIm9wdGlvbnMiOnsiZGlzanVuY3RpdmUuaG9zdF92ZXJpZmljYXRpb25zIjp0cnVlLCJkaXNqdW5jdGl2ZS5hbWVuaXRpZXMiOnRydWUsImRpc2p1bmN0aXZlLmZlYXR1cmVzIjp0cnVlfX19XSwidGltZXNjYWxlIjoiIiwiZGlzcGxheUxlZ2VuZCI6dHJ1ZSwiYWxpZ25Nb250aCI6dHJ1ZX0%3D&location=16,41.38377,2.15774&basemap=jawg.streets) del que disponemos es una base de datos escrapeada de 14780 registros/alojamientos. Este dataset procede de **Inside Airbnb**, que es un conjunto independiente y no comercial de herramientas y datos para explorar cómo se está utilizando Airbnb en ciudades de todo el mundo. Los datos en los que se basa Inside Airbnb proceden de la información pública disponible en el sitio web de Airbnb.


### Pasos del proyecto

En nuestro cuaderno de [bitácora](https://github.com/AnaGallegos/Proyecto-Final-KC-Data-Grupo-3/files/10611704/Bitacora.pdf) escribimos todos nuestros pasos a lo largo del proyecto.

#### Arquitectura y validación de los datos

-Nos familiarizamos con el dataset de airbnb de Madrid. 

-Realizamos una exploración inicial de los datos. 

-Llevamos a cabo la limpieza de las columnas con mayor número de datos nulos y los datos correspondientes a otros países.

Las métricas o KPIs del proyecto:

**Análisis de precios** -> columnas utilizadas: ID, Host ID, Host Name, Host Since, Street, Neighbourhood, Neighbourhood Cleansed, Neighbourhood Group Cleansed, City, State, ~~Zipcode~~, Smart Location, Country Code, Country, Latitude, Longitude, Property Type, Room Type, Bathrooms, Bedrooms, Beds, Bed Type, Square Feet, Price, Weekly Price, Monthly Price, Security Deposit, Cleaning Fee, Number of Reviews, Review Scores Value, Cancellation Policy, Calculated host, listings count y Geolocation.

-Definimos e implementamos el Datawarehouse. Creamos la tabla pero importamos los datos a través de PgAdmin o Dbeaver.


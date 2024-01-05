-- create_prediction_table.cql

-- Crear el keyspace si no existe
CREATE KEYSPACE IF NOT EXISTS agile_data_science WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

-- Usar el keyspace
USE agile_data_science;

-- Crear la tabla para distancias
CREATE TABLE IF NOT EXISTS flight_delay_classification_response (    
    "Origin" text,
    "DayOfWeek" int,
    "DayOfYear" int,
    "DayOfMonth" int,
    "Dest" text,
    "DepDelay" double,
    "Timestamp" timestamp,
    "FlightDate" timestamp,
    "Carrier" text,
    "UUID" text,
    "Distance" double,
    "Route" text,
    "Prediction" int,
    PRIMARY KEY ("UUID") 
);
-- ETL Project : Energy Production and Consumption tables by states
-- 2020/08/26

-----------------------------------------------------
DROP TABLE "State_Abb";

CREATE TABLE "State_Abb" (
    "State_id" int   NOT NULL,
    "State" varchar(30)   NOT NULL,
	"Abbrev" varchar,
    "Code" varchar(5)   NOT NULL,
    CONSTRAINT "pk_State_Abb" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "State_Abb";
-------------------------------

DROP TABLE "NaturalGas_Production";

CREATE TABLE "NaturalGas_Production" (
	"State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Gas Marketed Production, million cu ft" int  NOT NULL,
    CONSTRAINT "pk_NaturalGas_Production" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "NaturalGas_Production";
------------------------------

DROP TABLE "Energy_Production_Estimate";

CREATE TABLE "Energy_Production_Estimate" (
    "State_id" int   NOT NULL,
	"Fossil Fuels" int,
	"Natural Gas" int,
	"Crude Oil" int,
	"Nuclear Electric Power" int, 
    "Biofuels" int,
    "Wood and Waste" int,
    "Other" int ,
    CONSTRAINT "pk_Renewal_Energy_Estimates" PRIMARY KEY (
        "State_id"
     )
);

SELECT * FROM "Energy_Production_Estimate";
-------------------------------------------

DROP TABLE "Renewable_Energy_Potential";

CREATE TABLE "Renewable_Energy_Potential" (
    "State_id" int,
    "urbanUtilityScalePV_GWh" int,
    "ruralUtilityScalePV_GWh" int,
    "rooftopPV_GWh" int,
    "CSP_GWh" int ,
    "onshoreWind_GWh" int ,
    "offshoreWind_GWh" int,
    "biopowerSolid_GWh" int,
    "biopowerGaseous_GWh" int ,
    "geothermalHydrothermal_GWh" int ,
    "EGSGeothermal_GWh" int ,
    "hydropower_GWh" int ,
    CONSTRAINT "pk_Renewal_Energy_Potential" PRIMARY KEY (
        "State_id"
     )
);

SELECT * FROM "Renewable_Energy_Potential";
-------------------------------------------------

DROP TABLE "Electricity_Production";

CREATE TABLE "Electricity_Production" (
	"State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Net_GWh" int   NOT NULL,
    CONSTRAINT "pk_Electricity_Production" PRIMARY KEY (
        "State_id"
     )
);

SELECT * FROM "Electricity_Production";
----------------------------------------------------

DROP TABLE "Coal_Production";
CREATE TABLE "Coal_Production" (
    "State_id" int   NOT NULL,
	"Rank" int   NOT NULL,
    "Coal Production, thousand short tons" int  NOT NULL,
    CONSTRAINT "pk_Coal_Production" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "Coal_Production";
-------------------------------------------------------

DROP TABLE "Crudeoil_Production";

CREATE TABLE "Crudeoil_Production" (
    "State_id" int   NOT NULL,
	"Rank" int   NOT NULL,
    "Crude Oil Production, thousand barrels per day" int  NOT NULL,
    CONSTRAINT "pk_Crudeoil_Production" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "Crudeoil_Production";
------------------------------------------------------

DROP TABLE "Total_Energy_Consumed";

CREATE TABLE "Total_Energy_Consumed" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total Energy Consumed per Capita, million Btu" int NOT NULL,
    CONSTRAINT "pk_Total_Energy_Consumed" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "Total_Energy_Consumed";
---------------------------------------------------

DROP TABLE "Total_Energy_Production";
CREATE TABLE "Total_Energy_Production" (
    "State_id" int   NOT NULL,
	"Rank" int   NOT NULL,
    "Total Energy Production, trillion Btu" int  NOT NULL,
    CONSTRAINT "pk_Total_Energy_Production" PRIMARY KEY (
        "State_id"
     )
);
SELECT * FROM "Total_Energy_Production";
----------------------------------------------------
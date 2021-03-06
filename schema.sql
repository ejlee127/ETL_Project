-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--DROP TABLE "State_Abb";
CREATE TABLE "State_Abb" (
    "State_id" int   NOT NULL,
    "State" varchar(30)   NOT NULL,
    "Abbrev" varchar   NOT NULL,
    "Code" varchar(5)   NOT NULL,
    CONSTRAINT "pk_State_Abb" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "NaturalGas_Production";
CREATE TABLE "NaturalGas_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Gas_million_cu_ft" int   NOT NULL,
    CONSTRAINT "pk_NaturalGas_Production" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Energy_Production_Estimate";
CREATE TABLE "Energy_Production_Estimate" (
    "State_id" int ,
    "Fossil_Fuels" varchar NOT NULL,
    "Natural_Gas" varchar NOT NULL,
    "Crude_Oil" varchar NOT NULL,
    "Nuclear_Electricity" varchar NOT NULL,
    "Biofuels" varchar NOT NULL,
    "Wood_Waste" varchar NOT NULL,
    "Other" varchar NOT NULL,
	"Total" varchar NOT NULL,
    CONSTRAINT "pk_Energy_Production_Estimate" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Renewable_Energy_Potential";
CREATE TABLE "Renewable_Energy_Potential" (
    "State_id" int   NOT NULL,
    "urbanUtilityScalePV_GWh" int  NOT NULL,
    "ruralUtilityScalePV_GWh" int  NOT NULL,
    "rooftopPV_GWh" int  NOT NULL,
    "CSP_GWh" int  NOT NULL,
    "onshoreWind_GWh" int  NOT NULL,
    "offshoreWind_GWh" int  NOT NULL,
    "biopowerSolid_GWh" int  NOT NULL,
    "biopowerGaseous_GWh" int  NOT NULL,
    "geothermalHydrothermal_GWh" int  NOT NULL,
    "EGSGeothermal_GWh" int  NOT NULL,
    "hydropower_GWh" int  NOT NULL,
    CONSTRAINT "pk_Renewable_Energy_Potential" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Electricity_Production";
CREATE TABLE "Electricity_Production" (
    "State_id" int  NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Net_GWh" int   NOT NULL,
	CONSTRAINT "pk_Electricity_Production" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Coal_Production";
CREATE TABLE "Coal_Production" (
    "State_id" varchar(20),
    "Rank" int NOT NULL,
    "Total_Coal_thousand_short_tons" varchar(20) NOT NULL,
    CONSTRAINT "pk_Coal_Production" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Crudeoil_Production";
CREATE TABLE "Crudeoil_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Oil_thousand_barrels_per_day" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Crudeoil_Production" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Total_Energy_Consumed";
CREATE TABLE "Total_Energy_Consumed" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Consumed_million_Btu" int   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Consumed" PRIMARY KEY (
        "State_id"
     )
);

--DROP TABLE "Total_Energy_Production";
CREATE TABLE "Total_Energy_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Production_trillion_Btu" int   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Production" PRIMARY KEY (
        "State_id"
     )
);

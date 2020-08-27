-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "State_Abb" (
    "State_id" int   NOT NULL,
    "State" varchar(30)   NOT NULL,
    "Abbrev" varchar   NOT NULL,
    "Code" varchar(5)   NOT NULL,
    CONSTRAINT "pk_State_Abb" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "NaturalGas_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Gas_million_cu_ft" int   NOT NULL,
    CONSTRAINT "pk_NaturalGas_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Energy_Production_Estimate" (
    "State_id" int   NOT NULL,
    "Fossil_Fuels" int   NOT NULL,
    "Natural_Gas" int   NOT NULL,
    "Crude_Oil" int   NOT NULL,
    "Nuclear_Electricity" int   NOT NULL,
    "Biofuels" int   NOT NULL,
    "Wood_Waste" int   NOT NULL,
    "Other" int   NOT NULL,
    CONSTRAINT "pk_Energy_Production_Estimate" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Renewable_Energy_Potential" (
    "State_id" int,   NOT NULL,
    "urbanUtilityScalePV_GWh" int   NOT NULL,
    "ruralUtilityScalePV_GWh" int   NOT NULL,
    "rooftopPV_GWh" int   NOT NULL,
    "CSP_GWh" int   NOT NULL,
    "onshoreWind_GWh" int   NOT NULL,
    "offshoreWind_GWh" int   NOT NULL,
    "biopowerSolid_GWh" int   NOT NULL,
    "biopowerGaseous_GWh" int   NOT NULL,
    "geothermalHydrothermal_GWh" int   NOT NULL,
    "EGSGeothermal_GWh" int   NOT NULL,
    "hydropower_GWh" int   NOT NULL,
    CONSTRAINT "pk_Renewable_Energy_Potential" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Electricity_Production" (
    "State_id" PKint   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Net_GWh" int   NOT NULL
);

CREATE TABLE "Coal_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Coal_thousand_short_tons" int   NOT NULL,
    CONSTRAINT "pk_Coal_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Crudeoil_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Oil_thousand_barrels_per_day" int   NOT NULL,
    CONSTRAINT "pk_Crudeoil_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Total_Energy_Consumed" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Consumed_million_Btu" int   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Consumed" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Total_Energy_Production" (
    "State_id" int   NOT NULL,
    "Rank" int   NOT NULL,
    "Total_Production_trillion_Btu" int   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Production" PRIMARY KEY (
        "State_id"
     )
);


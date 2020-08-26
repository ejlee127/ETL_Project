-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Total_Energy_Consumed" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Energy_Consumed(million" Btu)   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Consumed" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Total_Energy_Production" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Energy_Production(trillion" Btu)   NOT NULL,
    CONSTRAINT "pk_Total_Energy_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Coal_Production" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Coal(thousand" short_tons)   NOT NULL,
    CONSTRAINT "pk_Coal_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Crudeoil_Production" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Oil(thousand" barrels_per_day)   NOT NULL,
    CONSTRAINT "pk_Crudeoil_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "NaturalGas_Production" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Gas(million" cu_ft)   NOT NULL,
    CONSTRAINT "pk_NaturalGas_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Fossil_Fuel_Production" (
    "State_id" int   NOT NULL,
    "Coal" int   NOT NULL,
    "Natural_Gas" int   NOT NULL,
    "Crude_Oil" int   NOT NULL,
    "Nucliear_Electricity" int   NOT NULL,
    CONSTRAINT "pk_Fossil_Fuel_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Electricity_Production" (
    "Rank" int   NOT NULL,
    "State_id" int   NOT NULL,
    "Total_Electricity(thousasnd" MWh)   NOT NULL,
    CONSTRAINT "pk_Electricity_Production" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Fossil_Fuel_Estimates" (
    "State_id" int   NOT NULL,
    "Coal" int   NOT NULL,
    "Natural_Gas" int   NOT NULL,
    "Crude_Oil" int   NOT NULL,
    "Nuclear_Electricity" int   NOT NULL,
    CONSTRAINT "pk_Fossil_Fuel_Estimates" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Renewal_Energy_Estimates" (
    "State_id" int   NOT NULL,
    "Biofuels" int   NOT NULL,
    "Wood_Waste" int   NOT NULL,
    "Other" int   NOT NULL,
    CONSTRAINT "pk_Renewal_Energy_Estimates" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "Renewal_Energy_Potential" (
    "State_id" int   NOT NULL,
    "Biofuels" int   NOT NULL,
    "Wood_Waste" int   NOT NULL,
    "Other" int   NOT NULL,
    CONSTRAINT "pk_Renewal_Energy_Potential" PRIMARY KEY (
        "State_id"
     )
);

CREATE TABLE "State_Abb" (
    "State_id" int   NOT NULL,
    "State" varchar(30)   NOT NULL,
    "Code" varchar(5)   NOT NULL,
    CONSTRAINT "pk_State_Abb" PRIMARY KEY (
        "State_id"
     )
);



-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/nryLT9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "merge" (
    "index" integer   NOT NULL,
    "State" varchar(30),   NOT NULL,
    "Date" date   NOT NULL,
    "Death" Integer   NOT NULL,
    "Population" Integer   NOT NULL,
    "Filed_Week_Ended" date   NOT NULL,
    "Initial_Claims" integer   NOT NULL,
    "Reflecting_Week_Ended" date   NOT NULL,
    "Continued_Claims" integer   NOT NULL,
    "Covered_Employment" Integer   NOT NULL,
    "Insured_Unemployment_Rate" Integer   NOT NULL,
    "us_death_ID" Integer   NOT NULL,
    "unemployment_ID" Integer   NOT NULL,
    CONSTRAINT "pk_merge" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "unemployment" (
    "index" integer,   NOT NULL,
    "State" varchar(20)   NOT NULL,
    "Filed_Week_Ended" date   NOT NULL,
    "Initial_Claims" integer   NOT NULL,
    "Reflecting_Week_Ended" date   NOT NULL,
    "Continued_Claims" integer   NOT NULL,
    "Covered_Employment" Integer   NOT NULL,
    "Insured_Unemployment_Rate" Integer   NOT NULL,
    CONSTRAINT "pk_unemployment" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "us_death" (
    "index" integer,   NOT NULL,
    "State" varchar(30)   NOT NULL,
    "Population" Integer   NOT NULL,
    "Date" date   NOT NULL,
    "Death" Integer   NOT NULL,
    CONSTRAINT "pk_us_death" PRIMARY KEY (
        "index"
     )
);

ALTER TABLE "merge" ADD CONSTRAINT "fk_merge_us_death_ID" FOREIGN KEY("us_death_ID")
REFERENCES "us_death" ("index");

ALTER TABLE "merge" ADD CONSTRAINT "fk_merge_unemployment_ID" FOREIGN KEY("unemployment_ID")
REFERENCES "unemployment" ("index");


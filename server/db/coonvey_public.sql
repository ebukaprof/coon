/*
Navicat PGSQL Data Transfer

Source Server         : PGConn
Source Server Version : 90219
Source Host           : localhost:5432
Source Database       : coonvey
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90219
File Encoding         : 65001

Date: 2017-08-13 15:48:24
*/


-- ----------------------------
-- Sequence structure for AspNetUserClaims_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."AspNetUserClaims_Id_seq";
CREATE SEQUENCE "public"."AspNetUserClaims_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for BusFacilities_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."BusFacilities_Id_seq";
CREATE SEQUENCE "public"."BusFacilities_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for BusTypes_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."BusTypes_Id_seq";
CREATE SEQUENCE "public"."BusTypes_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."BusTypes_Id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for Countries_Id_seq1
-- ----------------------------
DROP SEQUENCE "public"."Countries_Id_seq1";
CREATE SEQUENCE "public"."Countries_Id_seq1"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."Countries_Id_seq1"', 2, true);

-- ----------------------------
-- Sequence structure for Genders_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."Genders_Id_seq";
CREATE SEQUENCE "public"."Genders_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."Genders_Id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for LGAs_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."LGAs_Id_seq";
CREATE SEQUENCE "public"."LGAs_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."LGAs_Id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for MaritalStatuses_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."MaritalStatuses_Id_seq";
CREATE SEQUENCE "public"."MaritalStatuses_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."MaritalStatuses_Id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for Operator_AccountTypes_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."Operator_AccountTypes_Id_seq";
CREATE SEQUENCE "public"."Operator_AccountTypes_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."Operator_AccountTypes_Id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for Religion_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."Religion_Id_seq";
CREATE SEQUENCE "public"."Religion_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."Religion_Id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for SecurityQuestions_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."SecurityQuestions_Id_seq";
CREATE SEQUENCE "public"."SecurityQuestions_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for States_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."States_Id_seq";
CREATE SEQUENCE "public"."States_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."States_Id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for UserAudits_AuditId_seq
-- ----------------------------
DROP SEQUENCE "public"."UserAudits_AuditId_seq";
CREATE SEQUENCE "public"."UserAudits_AuditId_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 91
 CACHE 1;
SELECT setval('"public"."UserAudits_AuditId_seq"', 91, true);

-- ----------------------------
-- Sequence structure for UserDevices_Id_seq
-- ----------------------------
DROP SEQUENCE "public"."UserDevices_Id_seq";
CREATE SEQUENCE "public"."UserDevices_Id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetRoles";
CREATE TABLE "public"."AspNetRoles" (
"Id" varchar(128) COLLATE "default" NOT NULL,
"Name" text COLLATE "default" NOT NULL,
"ConcurrencyStamp" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserClaims";
CREATE TABLE "public"."AspNetUserClaims" (
"Id" int4 DEFAULT nextval('"AspNetUserClaims_Id_seq"'::regclass) NOT NULL,
"ClaimType" text COLLATE "default",
"ClaimValue" text COLLATE "default",
"UserId" uuid NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserLogins";
CREATE TABLE "public"."AspNetUserLogins" (
"UserId" uuid NOT NULL,
"LoginProvider" text COLLATE "default" NOT NULL,
"ProviderKey" text COLLATE "default" NOT NULL,
"ProviderDisplayName" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserRoles";
CREATE TABLE "public"."AspNetUserRoles" (
"UserId" uuid NOT NULL,
"RoleId" varchar(128) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUsers";
CREATE TABLE "public"."AspNetUsers" (
"Id" uuid NOT NULL,
"UserName" text COLLATE "default" NOT NULL,
"PasswordHash" text COLLATE "default",
"SecurityStamp" text COLLATE "default",
"Email" text COLLATE "default",
"EmailConfirmed" bool DEFAULT false NOT NULL,
"PhoneNumber" text COLLATE "default",
"PhoneNumberConfirmed" bool DEFAULT false NOT NULL,
"TwoFactorEnabled" bool DEFAULT false NOT NULL,
"LockoutEndDateUtc" timestamptz(6),
"LockoutEnabled" bool DEFAULT false NOT NULL,
"AccessFailedCount" int4 NOT NULL,
"ConcurrencyStamp" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for BusFacilities
-- ----------------------------
DROP TABLE IF EXISTS "public"."BusFacilities";
CREATE TABLE "public"."BusFacilities" (
"Facility" varchar(150) COLLATE "default" NOT NULL,
"Description" varchar(200) COLLATE "default",
"CreatedBy" varchar(100) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"ModifiedBy" varchar(100) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" int4 DEFAULT nextval('"BusFacilities_Id_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for BusTypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."BusTypes";
CREATE TABLE "public"."BusTypes" (
"Type" varchar(150) COLLATE "default" NOT NULL,
"Description" varchar(250) COLLATE "default",
"CreatedBy" varchar(100) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"ModifiedBy" varchar(100) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" int4 DEFAULT nextval('"BusTypes_Id_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Countries
-- ----------------------------
DROP TABLE IF EXISTS "public"."Countries";
CREATE TABLE "public"."Countries" (
"CountryTitle" varchar(30) COLLATE "default" NOT NULL,
"CountryCode" varchar(10) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" int8 DEFAULT nextval('"Countries_Id_seq1"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Genders
-- ----------------------------
DROP TABLE IF EXISTS "public"."Genders";
CREATE TABLE "public"."Genders" (
"Id" int8 DEFAULT nextval('"Genders_Id_seq"'::regclass) NOT NULL,
"Gender" varchar(20) COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for LGAs
-- ----------------------------
DROP TABLE IF EXISTS "public"."LGAs";
CREATE TABLE "public"."LGAs" (
"LGA" varchar(50) COLLATE "default" NOT NULL,
"StateId" int4 NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"Id" int8 DEFAULT nextval('"LGAs_Id_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for login_counts
-- ----------------------------
DROP TABLE IF EXISTS "public"."login_counts";
CREATE TABLE "public"."login_counts" (
"UserId" varchar COLLATE "default" NOT NULL,
"NumberOfTimes" int8,
"LastLoggedInDate" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for MaritalStatuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."MaritalStatuses";
CREATE TABLE "public"."MaritalStatuses" (
"MaritalStatus" varchar(30) COLLATE "default" NOT NULL,
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"Id" int4 DEFAULT nextval('"MaritalStatuses_Id_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Operator_AccountTypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."Operator_AccountTypes";
CREATE TABLE "public"."Operator_AccountTypes" (
"Id" int4 DEFAULT nextval('"Operator_AccountTypes_Id_seq"'::regclass) NOT NULL,
"AccountType" varchar COLLATE "default" NOT NULL,
"Description" varchar COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default" NOT NULL,
"DateCreated" date NOT NULL,
"ModifiedBy" varchar(150) COLLATE "default",
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Operator_Branches
-- ----------------------------
DROP TABLE IF EXISTS "public"."Operator_Branches";
CREATE TABLE "public"."Operator_Branches" (
"Id" uuid NOT NULL,
"OperatorId" uuid NOT NULL,
"BranchName" varchar(200) COLLATE "default" NOT NULL,
"BranchAddress" varchar(200) COLLATE "default" NOT NULL,
"City" varchar(200) COLLATE "default",
"StateId" int4,
"LgaId" int4,
"CountryId" int4,
"Description" varchar(300) COLLATE "default",
"CreatedBy" varchar COLLATE "default" NOT NULL,
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"ModifiedBy" varchar COLLATE "default",
"MarkDeletionBy" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OperatorPromos
-- ----------------------------
DROP TABLE IF EXISTS "public"."OperatorPromos";
CREATE TABLE "public"."OperatorPromos" (
"Id" uuid NOT NULL,
"PromoTitle" varchar COLLATE "default" NOT NULL,
"PromotionCode" varchar COLLATE "default",
"Description" varchar COLLATE "default",
"OperatorId" uuid NOT NULL,
"OperatorBranchId" uuid,
"CreatedBy" varchar(100) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"ModifiedBy" varchar(100) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"MarkDeletionBy" varchar(150) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Operators
-- ----------------------------
DROP TABLE IF EXISTS "public"."Operators";
CREATE TABLE "public"."Operators" (
"Id" uuid NOT NULL,
"Operator" varchar(120) COLLATE "default" NOT NULL,
"OperatorCode" varchar(20) COLLATE "default" NOT NULL,
"ServiceClientId" uuid NOT NULL,
"PhotoId" uuid,
"ContactPhoneNumber" varchar(15) COLLATE "default",
"ContactSecondaryPhoneNumber" varchar(15) COLLATE "default",
"ContactAddress1" varchar(120) COLLATE "default",
"ContactAddress2" varchar(120) COLLATE "default",
"ContactPrimaryEmail" varchar(50) COLLATE "default",
"ContactAlternateEmail" varchar(50) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"ModifiedBy" varchar COLLATE "default",
"MarkDeletionBy" varchar COLLATE "default",
"Description" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for OperatorTransportActivities
-- ----------------------------
DROP TABLE IF EXISTS "public"."OperatorTransportActivities";
CREATE TABLE "public"."OperatorTransportActivities" (
"Id" uuid NOT NULL,
"OperatorId" uuid NOT NULL,
"BusTypeId" int4,
"DepartureDate" date NOT NULL,
"DepartureTime" time(6) NOT NULL,
"EstimatedArrivalDate" date,
"EstimatedArrivalTime" time(6),
"OperatorBranchId" int4,
"Route" text COLLATE "default" NOT NULL,
"BoardingPoint" varchar COLLATE "default" NOT NULL,
"DroppingPoint" varchar COLLATE "default",
"BusFacilities" varchar COLLATE "default",
"Fare" varchar COLLATE "default" NOT NULL,
"CancellationPeriod" varchar COLLATE "default",
"OperatorPromoId" uuid,
"CreatedBy" varchar(100) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"ModifiedBy" varchar(100) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Photos
-- ----------------------------
DROP TABLE IF EXISTS "public"."Photos";
CREATE TABLE "public"."Photos" (
"Id" uuid NOT NULL,
"MimeType" varchar(20) COLLATE "default" NOT NULL,
"NormalImage" text COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default" NOT NULL,
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"NormalImagePath" text COLLATE "default",
"ThumbnailPath" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Profiles
-- ----------------------------
DROP TABLE IF EXISTS "public"."Profiles";
CREATE TABLE "public"."Profiles" (
"Id" uuid NOT NULL,
"UserId" uuid NOT NULL,
"FirstName" varchar(50) COLLATE "default" NOT NULL,
"MiddleName" varchar(50) COLLATE "default",
"LastName" varchar(50) COLLATE "default" NOT NULL,
"Address" varchar(200) COLLATE "default",
"City" int4,
"StateId" int8,
"CountryId" int4,
"ReligionId" int4,
"GenderId" int4,
"LgaId" int4,
"DateOfBirth" date,
"PlaceOfBirth" varchar COLLATE "default",
"DateCreated" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date,
"DateModified" date,
"Activated" bool DEFAULT true NOT NULL,
"MaritalStatusId" int4,
"ProfilePhotoId" uuid
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Religion
-- ----------------------------
DROP TABLE IF EXISTS "public"."Religion";
CREATE TABLE "public"."Religion" (
"Id" int8 DEFAULT nextval('"Religion_Id_seq"'::regclass) NOT NULL,
"ReligionTitle" varchar(100) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for SecurityQuestions
-- ----------------------------
DROP TABLE IF EXISTS "public"."SecurityQuestions";
CREATE TABLE "public"."SecurityQuestions" (
"Id" int8 DEFAULT nextval('"SecurityQuestions_Id_seq"'::regclass) NOT NULL,
"Question" varchar(150) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for ServiceClients
-- ----------------------------
DROP TABLE IF EXISTS "public"."ServiceClients";
CREATE TABLE "public"."ServiceClients" (
"Id" uuid NOT NULL,
"ServiceName" varchar(150) COLLATE "default" NOT NULL,
"ServiceCode" varchar(10) COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for States
-- ----------------------------
DROP TABLE IF EXISTS "public"."States";
CREATE TABLE "public"."States" (
"Id" int8 DEFAULT nextval('"States_Id_seq"'::regclass) NOT NULL,
"StateTitle" varchar(20) COLLATE "default" NOT NULL,
"StateCode" varchar(10) COLLATE "default" NOT NULL,
"Countries_Id" int4 NOT NULL,
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for User_SecurityQuestions
-- ----------------------------
DROP TABLE IF EXISTS "public"."User_SecurityQuestions";
CREATE TABLE "public"."User_SecurityQuestions" (
"Id" uuid NOT NULL,
"UserId" uuid,
"SecurityQuestionId" int4 NOT NULL,
"SecurityAnswer" varchar(160) COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" date,
"DateModified" date,
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for UserAudits
-- ----------------------------
DROP TABLE IF EXISTS "public"."UserAudits";
CREATE TABLE "public"."UserAudits" (
"UserId" varchar COLLATE "default" NOT NULL,
"Timestamp" timestamp(6) NOT NULL,
"AuditEvent" varchar COLLATE "default" NOT NULL,
"IpAddress" varchar COLLATE "default" NOT NULL,
"AuditId" int8 DEFAULT nextval('"UserAudits_AuditId_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for UserDevices
-- ----------------------------
DROP TABLE IF EXISTS "public"."UserDevices";
CREATE TABLE "public"."UserDevices" (
"Id" int8 DEFAULT nextval('"UserDevices_Id_seq"'::regclass) NOT NULL,
"UserId" uuid NOT NULL,
"DeviceName" varchar(255) COLLATE "default" NOT NULL,
"DeviceModel" varchar(255) COLLATE "default" NOT NULL,
"DeviceUUID" varchar(255) COLLATE "default" NOT NULL,
"DeviceIMEI" varchar(255) COLLATE "default" NOT NULL,
"Enabled" bool DEFAULT true NOT NULL,
"DateCreated" date NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."AspNetUserClaims_Id_seq" OWNED BY "AspNetUserClaims"."Id";
ALTER SEQUENCE "public"."BusFacilities_Id_seq" OWNED BY "BusFacilities"."Id";
ALTER SEQUENCE "public"."BusTypes_Id_seq" OWNED BY "BusTypes"."Id";
ALTER SEQUENCE "public"."Countries_Id_seq1" OWNED BY "Countries"."Id";
ALTER SEQUENCE "public"."Genders_Id_seq" OWNED BY "Genders"."Id";
ALTER SEQUENCE "public"."LGAs_Id_seq" OWNED BY "LGAs"."Id";
ALTER SEQUENCE "public"."MaritalStatuses_Id_seq" OWNED BY "MaritalStatuses"."Id";
ALTER SEQUENCE "public"."Operator_AccountTypes_Id_seq" OWNED BY "Operator_AccountTypes"."Id";
ALTER SEQUENCE "public"."Religion_Id_seq" OWNED BY "Religion"."Id";
ALTER SEQUENCE "public"."SecurityQuestions_Id_seq" OWNED BY "SecurityQuestions"."Id";
ALTER SEQUENCE "public"."States_Id_seq" OWNED BY "States"."Id";
ALTER SEQUENCE "public"."UserAudits_AuditId_seq" OWNED BY "UserAudits"."AuditId";
ALTER SEQUENCE "public"."UserDevices_Id_seq" OWNED BY "UserDevices"."Id";

-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE "public"."AspNetRoles" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE "public"."AspNetUserClaims" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE "public"."AspNetUserLogins" ADD PRIMARY KEY ("UserId", "LoginProvider", "ProviderKey");

-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE "public"."AspNetUserRoles" ADD PRIMARY KEY ("UserId", "RoleId");

-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE "public"."AspNetUsers" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table BusFacilities
-- ----------------------------
ALTER TABLE "public"."BusFacilities" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table BusTypes
-- ----------------------------
ALTER TABLE "public"."BusTypes" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Countries
-- ----------------------------
ALTER TABLE "public"."Countries" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Genders
-- ----------------------------
ALTER TABLE "public"."Genders" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table LGAs
-- ----------------------------
ALTER TABLE "public"."LGAs" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Indexes structure for table login_counts
-- ----------------------------
CREATE UNIQUE INDEX "INDEXED_LOGINCOUNT_USERID" ON "public"."login_counts" USING btree (UserId);

-- ----------------------------
-- Primary Key structure for table login_counts
-- ----------------------------
ALTER TABLE "public"."login_counts" ADD PRIMARY KEY ("UserId");

-- ----------------------------
-- Primary Key structure for table MaritalStatuses
-- ----------------------------
ALTER TABLE "public"."MaritalStatuses" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Operator_AccountTypes
-- ----------------------------
ALTER TABLE "public"."Operator_AccountTypes" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Operator_Branches
-- ----------------------------
ALTER TABLE "public"."Operator_Branches" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table OperatorPromos
-- ----------------------------
ALTER TABLE "public"."OperatorPromos" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Operators
-- ----------------------------
ALTER TABLE "public"."Operators" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table OperatorTransportActivities
-- ----------------------------
ALTER TABLE "public"."OperatorTransportActivities" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Photos
-- ----------------------------
ALTER TABLE "public"."Photos" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Profiles
-- ----------------------------
ALTER TABLE "public"."Profiles" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Religion
-- ----------------------------
ALTER TABLE "public"."Religion" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SecurityQuestions
-- ----------------------------
ALTER TABLE "public"."SecurityQuestions" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table ServiceClients
-- ----------------------------
ALTER TABLE "public"."ServiceClients" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table States
-- ----------------------------
ALTER TABLE "public"."States" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table User_SecurityQuestions
-- ----------------------------
ALTER TABLE "public"."User_SecurityQuestions" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table UserAudits
-- ----------------------------
ALTER TABLE "public"."UserAudits" ADD PRIMARY KEY ("AuditId");

-- ----------------------------
-- Primary Key structure for table UserDevices
-- ----------------------------
ALTER TABLE "public"."UserDevices" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Foreign Key structure for table "public"."AspNetUserClaims"
-- ----------------------------
ALTER TABLE "public"."AspNetUserClaims" ADD FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."AspNetUserLogins"
-- ----------------------------
ALTER TABLE "public"."AspNetUserLogins" ADD FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

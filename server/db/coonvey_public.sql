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

Date: 2017-08-14 19:49:50
*/


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
"Id" varchar(32) COLLATE "default" NOT NULL,
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
"Id" varchar COLLATE "default" NOT NULL
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
"Id" varchar COLLATE "default" NOT NULL
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
"Id" varchar COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Genders
-- ----------------------------
DROP TABLE IF EXISTS "public"."Genders";
CREATE TABLE "public"."Genders" (
"Gender" varchar(20) COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" varchar COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for LGAs
-- ----------------------------
DROP TABLE IF EXISTS "public"."LGAs";
CREATE TABLE "public"."LGAs" (
"LGA" varchar(50) COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" varchar COLLATE "default" NOT NULL,
"StateId" varchar COLLATE "default" NOT NULL
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
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Id" varchar(200) COLLATE "default" DEFAULT NULL::character varying NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Merchant_AccountTypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."Merchant_AccountTypes";
CREATE TABLE "public"."Merchant_AccountTypes" (
"Id" varchar(200) COLLATE "default" DEFAULT NULL::character varying NOT NULL,
"AccountType" varchar COLLATE "default" NOT NULL,
"Description" varchar COLLATE "default" NOT NULL,
"CreatedBy" varchar COLLATE "default" NOT NULL,
"DateCreated" timestamp(6) NOT NULL,
"ModifiedBy" varchar(150) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Merchant_Branches
-- ----------------------------
DROP TABLE IF EXISTS "public"."Merchant_Branches";
CREATE TABLE "public"."Merchant_Branches" (
"Id" uuid NOT NULL,
"MerchantId" uuid NOT NULL,
"BranchName" varchar(200) COLLATE "default" NOT NULL,
"BranchAddress" varchar(200) COLLATE "default" NOT NULL,
"City" varchar(200) COLLATE "default",
"StateId" varchar(200) COLLATE "default",
"LgaId" varchar(200) COLLATE "default",
"CountryId" varchar(200) COLLATE "default",
"Description" varchar(300) COLLATE "default",
"CreatedBy" varchar COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"ModifiedBy" varchar COLLATE "default",
"MarkDeletionBy" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for MerchantPromos
-- ----------------------------
DROP TABLE IF EXISTS "public"."MerchantPromos";
CREATE TABLE "public"."MerchantPromos" (
"Id" uuid NOT NULL,
"PromoTitle" varchar COLLATE "default" NOT NULL,
"PromotionCode" varchar COLLATE "default",
"Description" varchar COLLATE "default",
"MerchantId" uuid NOT NULL,
"MerchantBranchesId" uuid,
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
-- Table structure for Merchants
-- ----------------------------
DROP TABLE IF EXISTS "public"."Merchants";
CREATE TABLE "public"."Merchants" (
"Id" uuid NOT NULL,
"Merchant" varchar(200) COLLATE "default" NOT NULL,
"MerchantCode" varchar(20) COLLATE "default" NOT NULL,
"ServiceClientId" uuid NOT NULL,
"PhotoId" uuid,
"ContactPhoneNumber" varchar(15) COLLATE "default",
"ContactSecondaryPhoneNumber" varchar(15) COLLATE "default",
"ContactAddress1" varchar(120) COLLATE "default",
"ContactAddress2" varchar(120) COLLATE "default",
"ContactPrimaryEmail" varchar(50) COLLATE "default",
"ContactAlternateEmail" varchar(50) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"ModifiedBy" varchar COLLATE "default",
"MarkDeletionBy" varchar COLLATE "default",
"Description" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for MerchantTransportActivities
-- ----------------------------
DROP TABLE IF EXISTS "public"."MerchantTransportActivities";
CREATE TABLE "public"."MerchantTransportActivities" (
"Id" uuid NOT NULL,
"MerchantId" uuid NOT NULL,
"BusTypesId" varchar(200) COLLATE "default",
"DepartureDate" date NOT NULL,
"DepartureTime" time(6) NOT NULL,
"EstimatedArrivalDate" date,
"EstimatedArrivalTime" time(6),
"Route" text COLLATE "default" NOT NULL,
"BoardingPoint" varchar COLLATE "default" NOT NULL,
"DroppingPoint" varchar COLLATE "default",
"BusFacilities" varchar(200) COLLATE "default",
"Fare" varchar COLLATE "default" NOT NULL,
"CancellationPeriod" varchar COLLATE "default",
"MerchantPromoId" uuid,
"CreatedBy" varchar(100) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"ModifiedBy" varchar(100) COLLATE "default",
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"Merchant_BranchesId" uuid
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
"CreatedBy" varchar(120) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
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
"City" varchar(200) COLLATE "default",
"StateId" varchar(200) COLLATE "default",
"CountryId" varchar(200) COLLATE "default",
"ReligionId" varchar(200) COLLATE "default",
"GenderId" varchar(200) COLLATE "default",
"LgaId" varchar(200) COLLATE "default",
"DateOfBirth" date,
"PlaceOfBirth" varchar COLLATE "default",
"DateCreated" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6),
"DateModified" timestamp(6),
"Activated" bool DEFAULT true NOT NULL,
"MaritalStatusId" varchar(200) COLLATE "default",
"PhotoId" uuid
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for Religion
-- ----------------------------
DROP TABLE IF EXISTS "public"."Religion";
CREATE TABLE "public"."Religion" (
"Id" varchar(200) COLLATE "default" NOT NULL,
"ReligionTitle" varchar(100) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for SecurityQuestions
-- ----------------------------
DROP TABLE IF EXISTS "public"."SecurityQuestions";
CREATE TABLE "public"."SecurityQuestions" (
"Id" varchar(200) COLLATE "default" NOT NULL,
"Question" varchar(150) COLLATE "default",
"CreatedBy" varchar COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
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
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for States
-- ----------------------------
DROP TABLE IF EXISTS "public"."States";
CREATE TABLE "public"."States" (
"Id" varchar(200) COLLATE "default" NOT NULL,
"StateTitle" varchar(20) COLLATE "default" NOT NULL,
"StateCode" varchar(10) COLLATE "default" NOT NULL,
"CountriesId" varchar(200) COLLATE "default" NOT NULL,
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
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
"SecurityQuestionId" varchar(200) COLLATE "default" NOT NULL,
"SecurityAnswer" varchar(160) COLLATE "default" NOT NULL,
"CreatedBy" varchar(100) COLLATE "default",
"DateCreated" timestamp(6),
"DateModified" timestamp(6),
"MarkedForDeletion" bool DEFAULT false,
"DateMarkedForDeletion" timestamp(6)
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
"AuditId" varchar(200) COLLATE "default" DEFAULT NULL::character varying NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for UserDevices
-- ----------------------------
DROP TABLE IF EXISTS "public"."UserDevices";
CREATE TABLE "public"."UserDevices" (
"Id" varchar(64) COLLATE "default" DEFAULT NULL::character varying NOT NULL,
"UserId" uuid NOT NULL,
"DeviceName" varchar(255) COLLATE "default" NOT NULL,
"DeviceModel" varchar(255) COLLATE "default" NOT NULL,
"DeviceUUID" varchar(255) COLLATE "default" NOT NULL,
"DeviceIMEI" varchar(255) COLLATE "default" NOT NULL,
"Enabled" bool DEFAULT true NOT NULL,
"DateCreated" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

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
-- Primary Key structure for table login_counts
-- ----------------------------
ALTER TABLE "public"."login_counts" ADD PRIMARY KEY ("UserId");

-- ----------------------------
-- Primary Key structure for table MaritalStatuses
-- ----------------------------
ALTER TABLE "public"."MaritalStatuses" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Merchant_AccountTypes
-- ----------------------------
ALTER TABLE "public"."Merchant_AccountTypes" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Merchant_Branches
-- ----------------------------
ALTER TABLE "public"."Merchant_Branches" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table MerchantPromos
-- ----------------------------
ALTER TABLE "public"."MerchantPromos" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Merchants
-- ----------------------------
ALTER TABLE "public"."Merchants" ADD PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table MerchantTransportActivities
-- ----------------------------
ALTER TABLE "public"."MerchantTransportActivities" ADD PRIMARY KEY ("Id");

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
-- Foreign Key structure for table "public"."AspNetUserLogins"
-- ----------------------------
ALTER TABLE "public"."AspNetUserLogins" ADD FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

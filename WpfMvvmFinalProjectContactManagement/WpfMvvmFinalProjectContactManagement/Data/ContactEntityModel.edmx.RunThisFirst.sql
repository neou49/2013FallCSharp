
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/16/2013 10:09:22
-- Generated from EDMX file: C:\Users\vseng\Documents\GitHub\2013FallCSharp\WpfMvvmFinalProjectContactManagement\WpfMvvmFinalProjectContactManagement\Data\ContactEntityModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

IF NOT EXISTS(SELECT * FROM SYS.DATABASES WHERE NAME='CSharpFall2013')
CREATE DATABASE [CSharpFall2013]
go

USE [CSharpFall2013];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AddressTypeAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_AddressTypeAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ContactAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactEmail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_ContactEmail];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactPhoneNumber]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhoneNumbers] DROP CONSTRAINT [FK_ContactPhoneNumber];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_CountryAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_EducationLevelContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_EducationLevelContact];
GO
IF OBJECT_ID(N'[dbo].[FK_EmailTypeEmail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_EmailTypeEmail];
GO
IF OBJECT_ID(N'[dbo].[FK_GenderContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_GenderContact];
GO
IF OBJECT_ID(N'[dbo].[FK_NationalityContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_NationalityContact];
GO
IF OBJECT_ID(N'[dbo].[FK_OccupationContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_OccupationContact];
GO
IF OBJECT_ID(N'[dbo].[FK_OccupationTypeOccupation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Occupations] DROP CONSTRAINT [FK_OccupationTypeOccupation];
GO
IF OBJECT_ID(N'[dbo].[FK_PhoneTypePhoneNumber]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhoneNumbers] DROP CONSTRAINT [FK_PhoneTypePhoneNumber];
GO
IF OBJECT_ID(N'[dbo].[FK_StateAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_StateAddress];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[AddressTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AddressTypes];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[EducationLevels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EducationLevels];
GO
IF OBJECT_ID(N'[dbo].[Emails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Emails];
GO
IF OBJECT_ID(N'[dbo].[EmailTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailTypes];
GO
IF OBJECT_ID(N'[dbo].[Genders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Genders];
GO
IF OBJECT_ID(N'[dbo].[Nationalities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Nationalities];
GO
IF OBJECT_ID(N'[dbo].[Occupations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Occupations];
GO
IF OBJECT_ID(N'[dbo].[OccupationTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OccupationTypes];
GO
IF OBJECT_ID(N'[dbo].[PhoneNumbers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhoneNumbers];
GO
IF OBJECT_ID(N'[dbo].[PhoneTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhoneTypes];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [AddressType_Id] int  NOT NULL,
    [AddressLine1] nvarchar(max)  NOT NULL,
    [AddressLine2] nvarchar(max)  NULL,
    [City] nvarchar(max)  NOT NULL,
    [State_Id] int  NULL,
    [Zip] nvarchar(max)  NULL,
    [Country_Id] int  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] nvarchar(max)  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'AddressTypes'
CREATE TABLE [dbo].[AddressTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [Gender_Id] int  NOT NULL,
    [Nationality_Id] int  NOT NULL,
    [EducationLevel_Id] int  NOT NULL,
    [CurrentOccupation_Id] int  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] nvarchar(max)  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'EducationLevels'
CREATE TABLE [dbo].[EducationLevels] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [dbo].[Emails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [EmailType_Id] int  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] nvarchar(max)  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'EmailTypes'
CREATE TABLE [dbo].[EmailTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Genders'
CREATE TABLE [dbo].[Genders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Nationalities'
CREATE TABLE [dbo].[Nationalities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'Occupations'
CREATE TABLE [dbo].[Occupations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [OccupationType_Id] int  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'OccupationTypes'
CREATE TABLE [dbo].[OccupationTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [UpdatedDate] datetime  NULL
);
GO

-- Creating table 'PhoneNumbers'
CREATE TABLE [dbo].[PhoneNumbers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [PhoneType_Id] int  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NULL,
    [CreatedBy] nvarchar(max)  NULL,
    [UpdatedDate] datetime  NULL,
    [UpdatedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'PhoneTypes'
CREATE TABLE [dbo].[PhoneTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] nvarchar(max)  NULL,
    [CreatedBy] nvarchar(max)  NULL,
    [UpdatedDate] nvarchar(max)  NULL,
    [UpdatedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] nvarchar(max)  NULL,
    [UpdatedDate] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AddressTypes'
ALTER TABLE [dbo].[AddressTypes]
ADD CONSTRAINT [PK_AddressTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EducationLevels'
ALTER TABLE [dbo].[EducationLevels]
ADD CONSTRAINT [PK_EducationLevels]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [PK_Emails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmailTypes'
ALTER TABLE [dbo].[EmailTypes]
ADD CONSTRAINT [PK_EmailTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Genders'
ALTER TABLE [dbo].[Genders]
ADD CONSTRAINT [PK_Genders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Nationalities'
ALTER TABLE [dbo].[Nationalities]
ADD CONSTRAINT [PK_Nationalities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Occupations'
ALTER TABLE [dbo].[Occupations]
ADD CONSTRAINT [PK_Occupations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OccupationTypes'
ALTER TABLE [dbo].[OccupationTypes]
ADD CONSTRAINT [PK_OccupationTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhoneNumbers'
ALTER TABLE [dbo].[PhoneNumbers]
ADD CONSTRAINT [PK_PhoneNumbers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhoneTypes'
ALTER TABLE [dbo].[PhoneTypes]
ADD CONSTRAINT [PK_PhoneTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AddressType_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_AddressTypeAddress]
    FOREIGN KEY ([AddressType_Id])
    REFERENCES [dbo].[AddressTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AddressTypeAddress'
CREATE INDEX [IX_FK_AddressTypeAddress]
ON [dbo].[Addresses]
    ([AddressType_Id]);
GO

-- Creating foreign key on [Contact_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ContactAddress]
    FOREIGN KEY ([Contact_Id])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactAddress'
CREATE INDEX [IX_FK_ContactAddress]
ON [dbo].[Addresses]
    ([Contact_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_CountryAddress]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryAddress'
CREATE INDEX [IX_FK_CountryAddress]
ON [dbo].[Addresses]
    ([Country_Id]);
GO

-- Creating foreign key on [State_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_StateAddress]
    FOREIGN KEY ([State_Id])
    REFERENCES [dbo].[States]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StateAddress'
CREATE INDEX [IX_FK_StateAddress]
ON [dbo].[Addresses]
    ([State_Id]);
GO

-- Creating foreign key on [Contact_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_ContactEmail]
    FOREIGN KEY ([Contact_Id])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactEmail'
CREATE INDEX [IX_FK_ContactEmail]
ON [dbo].[Emails]
    ([Contact_Id]);
GO

-- Creating foreign key on [Contact_Id] in table 'PhoneNumbers'
ALTER TABLE [dbo].[PhoneNumbers]
ADD CONSTRAINT [FK_ContactPhoneNumber]
    FOREIGN KEY ([Contact_Id])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactPhoneNumber'
CREATE INDEX [IX_FK_ContactPhoneNumber]
ON [dbo].[PhoneNumbers]
    ([Contact_Id]);
GO

-- Creating foreign key on [EducationLevel_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_EducationLevelContact]
    FOREIGN KEY ([EducationLevel_Id])
    REFERENCES [dbo].[EducationLevels]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EducationLevelContact'
CREATE INDEX [IX_FK_EducationLevelContact]
ON [dbo].[Contacts]
    ([EducationLevel_Id]);
GO

-- Creating foreign key on [Gender_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_GenderContact]
    FOREIGN KEY ([Gender_Id])
    REFERENCES [dbo].[Genders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GenderContact'
CREATE INDEX [IX_FK_GenderContact]
ON [dbo].[Contacts]
    ([Gender_Id]);
GO

-- Creating foreign key on [Nationality_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_NationalityContact]
    FOREIGN KEY ([Nationality_Id])
    REFERENCES [dbo].[Nationalities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NationalityContact'
CREATE INDEX [IX_FK_NationalityContact]
ON [dbo].[Contacts]
    ([Nationality_Id]);
GO

-- Creating foreign key on [CurrentOccupation_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_OccupationContact]
    FOREIGN KEY ([CurrentOccupation_Id])
    REFERENCES [dbo].[Occupations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OccupationContact'
CREATE INDEX [IX_FK_OccupationContact]
ON [dbo].[Contacts]
    ([CurrentOccupation_Id]);
GO

-- Creating foreign key on [EmailType_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_EmailTypeEmail]
    FOREIGN KEY ([EmailType_Id])
    REFERENCES [dbo].[EmailTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmailTypeEmail'
CREATE INDEX [IX_FK_EmailTypeEmail]
ON [dbo].[Emails]
    ([EmailType_Id]);
GO

-- Creating foreign key on [OccupationType_Id] in table 'Occupations'
ALTER TABLE [dbo].[Occupations]
ADD CONSTRAINT [FK_OccupationTypeOccupation]
    FOREIGN KEY ([OccupationType_Id])
    REFERENCES [dbo].[OccupationTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OccupationTypeOccupation'
CREATE INDEX [IX_FK_OccupationTypeOccupation]
ON [dbo].[Occupations]
    ([OccupationType_Id]);
GO

-- Creating foreign key on [PhoneType_Id] in table 'PhoneNumbers'
ALTER TABLE [dbo].[PhoneNumbers]
ADD CONSTRAINT [FK_PhoneTypePhoneNumber]
    FOREIGN KEY ([PhoneType_Id])
    REFERENCES [dbo].[PhoneTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PhoneTypePhoneNumber'
CREATE INDEX [IX_FK_PhoneTypePhoneNumber]
ON [dbo].[PhoneNumbers]
    ([PhoneType_Id]);
GO

-- --------------------------------------------------
-- Insert Default Data
-- --------------------------------------------------
insert into Emailtypes values('Personal Email', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into EmailTypes values('Work Email', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into EmailTypes values('Family Email', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into PhoneTypes values('Home Phone', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into PhoneTypes values('Work Phone', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into PhoneTypes values('Cell Phone', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
go

insert into AddressTypes values('Home Address', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into AddressTypes values('Work Address', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into AddressTypes values('Home Address', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into genders values ('Male', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into genders values ('Female', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into Nationalities values('American', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into Nationalities values('Canadian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into Nationalities values('Cambodian', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into OccupationTypes values('IT', 'Technology', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into OccupationTypes values('Construction', 'Construction', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into OccupationTypes values('Human Resource', 'Hire employees', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into OccupationTypes values('Cusotmer Service', 'Help desk or secretary', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into Occupations values('Software Developer', 'Programmer who designs application for end user', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into occupations values('Secretary', 'Greeting people and answering phone calls',3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into Occupations values('Handyman', 'Fixing stuffs',2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into EducationLevels values('High school', 'Finished High School', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into EducationLevels values('College', 'Some college but not graduated', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into EducationLevels values('College Graduate', 'Receiving college degree', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
go

insert into Contacts values('Pat', 'Smith', '01/01/1982',			1,1,1,3, CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into Contacts values('Patty', 'Smith', '02/01/1982',		2,2,2,1,CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into Contacts values('John', 'Freeman', '03/01/1982',		1,3,3,1, CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into Contacts values('James', 'Carpenter','04/01/1982',	1,1,2,3, CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into Contacts values('Jerry', 'Sam', '05/01/1982',			1,2,3,1, CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into Contacts values('Jordan', 'Sakura','06/01/1982',		1,3,1,3, CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
go

insert into PhoneNumbers values(1, 1, '845-123-4567', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into PhoneNumbers values(1, 2, '845-321-7654', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into PhoneNumbers values(2, 1, '845-111-2222', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
insert into PhoneNumbers values(3, 2, '845-222-3333', CURRENT_TIMESTAMP, 'Admin', CURRENT_TIMESTAMP,'Admin' );
go

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
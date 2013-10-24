
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/24/2013 14:10:20
-- Generated from EDMX file: C:\Users\VSeng\Documents\GitHub\2013FallCSharp\ContactManagementSystemERDiagram\ContactManagementSystemERDiagram\ContactsModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CSharpFall2013];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(25)  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [Gender_Id] int  NOT NULL,
    [Nationality_Id] int  NOT NULL,
    [EducationLevel_Id] int  NOT NULL,
    [CurrentOccupation_Id] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UpdatedBy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PhoneNumbers'
CREATE TABLE [dbo].[PhoneNumbers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [PhoneType_Id] int  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UpdatedBy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PhoneTypes'
CREATE TABLE [dbo].[PhoneTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [UpdatedDate] nvarchar(max)  NOT NULL,
    [UpdatedBy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [dbo].[Emails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [EmailType_Id] int  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UpdatedBy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmailTypes'
CREATE TABLE [dbo].[EmailTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact_Id] int  NOT NULL,
    [AddressType_Id] int  NOT NULL,
    [AddressLine1] nvarchar(max)  NOT NULL,
    [AddressLine2] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [State_Id] int  NOT NULL,
    [Zip] nvarchar(max)  NULL,
    [Country_Id] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [UpdatedDate] datetime  NOT NULL,
    [UpdatedBy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Genders'
CREATE TABLE [dbo].[Genders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Nationalities'
CREATE TABLE [dbo].[Nationalities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] nvarchar(max)  NOT NULL,
    [UpdatedDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'AddressTypes'
CREATE TABLE [dbo].[AddressTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Occupations'
CREATE TABLE [dbo].[Occupations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [OccupationType_Id] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'OccupationTypes'
CREATE TABLE [dbo].[OccupationTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'EducationLevels'
CREATE TABLE [dbo].[EducationLevels] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UpdatedDate] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
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

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
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

-- Creating primary key on [Id] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AddressTypes'
ALTER TABLE [dbo].[AddressTypes]
ADD CONSTRAINT [PK_AddressTypes]
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

-- Creating primary key on [Id] in table 'EducationLevels'
ALTER TABLE [dbo].[EducationLevels]
ADD CONSTRAINT [PK_EducationLevels]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
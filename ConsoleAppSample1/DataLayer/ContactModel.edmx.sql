
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 09/30/2013 17:02:42
-- Generated from EDMX file: C:\Users\VSeng\Documents\GitHub\2013FallCSharp\ConsoleAppSample1\DataLayer\ContactModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Fall2013];
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
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [KeywordId] int  NOT NULL,
    [KeywordId1] int  NOT NULL,
    [KeywordId2] int  NOT NULL,
    [KeywordId3] int  NOT NULL
);
GO

-- Creating table 'Keywords'
CREATE TABLE [dbo].[Keywords] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ContactId] int  NOT NULL,
    [KeywordId] int  NOT NULL,
    [KeywordId1] int  NOT NULL
);
GO

-- Creating table 'ContactMethods'
CREATE TABLE [dbo].[ContactMethods] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [ContactId] int  NOT NULL,
    [KeywordId] int  NOT NULL
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

-- Creating primary key on [Id] in table 'Keywords'
ALTER TABLE [dbo].[Keywords]
ADD CONSTRAINT [PK_Keywords]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContactMethods'
ALTER TABLE [dbo].[ContactMethods]
ADD CONSTRAINT [PK_ContactMethods]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ContactId] in table 'Keywords'
ALTER TABLE [dbo].[Keywords]
ADD CONSTRAINT [FK_ContactKeyword]
    FOREIGN KEY ([ContactId])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactKeyword'
CREATE INDEX [IX_FK_ContactKeyword]
ON [dbo].[Keywords]
    ([ContactId]);
GO

-- Creating foreign key on [KeywordId1] in table 'Keywords'
ALTER TABLE [dbo].[Keywords]
ADD CONSTRAINT [FK_KeywordKeyword]
    FOREIGN KEY ([KeywordId1])
    REFERENCES [dbo].[Keywords]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_KeywordKeyword'
CREATE INDEX [IX_FK_KeywordKeyword]
ON [dbo].[Keywords]
    ([KeywordId1]);
GO

-- Creating foreign key on [ContactId] in table 'ContactMethods'
ALTER TABLE [dbo].[ContactMethods]
ADD CONSTRAINT [FK_ContactContactMethod]
    FOREIGN KEY ([ContactId])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactContactMethod'
CREATE INDEX [IX_FK_ContactContactMethod]
ON [dbo].[ContactMethods]
    ([ContactId]);
GO

-- Creating foreign key on [KeywordId] in table 'ContactMethods'
ALTER TABLE [dbo].[ContactMethods]
ADD CONSTRAINT [FK_KeywordContactMethod]
    FOREIGN KEY ([KeywordId])
    REFERENCES [dbo].[Keywords]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_KeywordContactMethod'
CREATE INDEX [IX_FK_KeywordContactMethod]
ON [dbo].[ContactMethods]
    ([KeywordId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
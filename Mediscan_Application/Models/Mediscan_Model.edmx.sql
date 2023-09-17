
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/17/2023 02:10:52
-- Generated from EDMX file: D:\Semester-2\FIT5032\WEEK 7\Mediscan_Application\Mediscan_Application\Models\Mediscan_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Mediscan_Database];
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

-- Creating table 'Ùser'
CREATE TABLE [dbo].[Ùser] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [RoleId] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Appointments'
CREATE TABLE [dbo].[Appointments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [Time] nvarchar(max)  NOT NULL,
    [Service] nvarchar(max)  NOT NULL,
    [ÙserId] int  NOT NULL,
    [CentreId] int  NOT NULL
);
GO

-- Creating table 'Centres'
CREATE TABLE [dbo].[Centres] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Ùser'
ALTER TABLE [dbo].[Ùser]
ADD CONSTRAINT [PK_Ùser]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [PK_Appointments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Centres'
ALTER TABLE [dbo].[Centres]
ADD CONSTRAINT [PK_Centres]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RoleId] in table 'Ùser'
ALTER TABLE [dbo].[Ùser]
ADD CONSTRAINT [FK_RoleÙser]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleÙser'
CREATE INDEX [IX_FK_RoleÙser]
ON [dbo].[Ùser]
    ([RoleId]);
GO

-- Creating foreign key on [ÙserId] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [FK_ÙserAppointment]
    FOREIGN KEY ([ÙserId])
    REFERENCES [dbo].[Ùser]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ÙserAppointment'
CREATE INDEX [IX_FK_ÙserAppointment]
ON [dbo].[Appointments]
    ([ÙserId]);
GO

-- Creating foreign key on [CentreId] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [FK_CentreAppointment]
    FOREIGN KEY ([CentreId])
    REFERENCES [dbo].[Centres]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CentreAppointment'
CREATE INDEX [IX_FK_CentreAppointment]
ON [dbo].[Appointments]
    ([CentreId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
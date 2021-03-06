﻿CREATE TABLE [dbo].[Employees] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Identifier]      NVARCHAR (MAX) NULL,
    [FirstName]       NVARCHAR (MAX) NULL,
    [LastName]        NVARCHAR (MAX) NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED ([Id] ASC)
);





GO


CREATE TABLE [inventory].[Item] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Type]            INT            NOT NULL,
    [UnitType]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Item] PRIMARY KEY CLUSTERED ([Id] ASC)
);




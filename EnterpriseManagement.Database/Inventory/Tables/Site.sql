CREATE TABLE [inventory].[Site] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Code]            NVARCHAR (MAX) NULL,
    [Sequence]        INT            NOT NULL,
    [CreatedDateTime] DATETIME2 (7)  NULL,
    [UpdatedDateTime] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_inventory.Site] PRIMARY KEY CLUSTERED ([Id] ASC)
);






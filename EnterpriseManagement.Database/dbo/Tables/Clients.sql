CREATE TABLE [dbo].[Clients] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [ClientId]        INT           NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    CONSTRAINT [PK_dbo.Clients] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Clients_dbo.Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id])
);





GO
CREATE NONCLUSTERED INDEX [IX_ClientId]
    ON [dbo].[Clients]([ClientId] ASC);


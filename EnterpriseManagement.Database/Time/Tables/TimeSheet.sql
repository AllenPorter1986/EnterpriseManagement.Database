CREATE TABLE [time].[TimeSheet] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeId]      INT           NOT NULL,
    [Status]          INT           NOT NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    CONSTRAINT [PK_time.TimeSheet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_time.TimeSheet_dbo.Employees_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_EmployeeId]
    ON [time].[TimeSheet]([EmployeeId] ASC);


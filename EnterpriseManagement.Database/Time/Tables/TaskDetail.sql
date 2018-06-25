CREATE TABLE [time].[TaskDetail] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [FunctionId]      INT           NOT NULL,
    [ClientId]        INT           NOT NULL,
    [CreatedDateTime] DATETIME2 (7) NULL,
    [UpdatedDateTime] DATETIME2 (7) NULL,
    [Task_Id]         INT           NULL,
    CONSTRAINT [PK_time.TaskDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_time.TaskDetail_time.Task_Task_Id] FOREIGN KEY ([Task_Id]) REFERENCES [time].[Task] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_Task_Id]
    ON [time].[TaskDetail]([Task_Id] ASC);


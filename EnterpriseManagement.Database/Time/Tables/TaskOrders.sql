CREATE TABLE [time].[TaskOrders]
(
	[DetailId] INT NOT NULL, 
	[OrderId] INT NOT NULL,
    CONSTRAINT [PK_TaskOrders] PRIMARY KEY ([DetailId], [OrderId]),
    CONSTRAINT [FK_TaskOrders_Tasks] FOREIGN KEY ([DetailId]) REFERENCES [time].[Tasks] ([Id]),
    CONSTRAINT [FK_TaskOrders_Orders] FOREIGN KEY ([OrderId]) REFERENCES [time].[Orders] ([Id])
)

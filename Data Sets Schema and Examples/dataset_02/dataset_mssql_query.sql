SELECT
TOP 500
     [Clients].[ClientId] AS [0],
     [Matters].[WorkId] AS [1],
     [Clients].[Name] AS [2],
     [Matters].[Name] AS [3],
     [Clients].[Description] AS [4],
     [Matters].[Description] AS [5]
FROM
     [dbo].[Clients] AS [Clients]
     INNER JOIN [dbo].[Work] AS [Matters] ON [Matters].[Client_Id] = [Clients].[Id]


WHERE 
     [Matters].[Name] != @p__dsl__p0
ORDER BY 
     [Clients].[Name] ASC',N'@p__dsl__p0 nvarchar(4)',@p__dsl__p0=N'name'
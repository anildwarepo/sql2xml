SELECT
TOP 500
     [Clients].[Id] AS [0],
     [Clients].[ClientId] AS [1],
     [Clients].[Name] AS [2]
FROM
     [dbo].[Clients] AS [Clients]

WHERE 
     [Clients].[Name] NOT LIKE ''%'' + @p__dsl__p0 + ''%''
ORDER BY 
     [Clients].[Name] DESC',N'@p__dsl__p0 nvarchar(4)',@p__dsl__p0=N'name'
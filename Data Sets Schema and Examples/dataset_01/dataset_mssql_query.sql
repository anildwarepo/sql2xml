SELECT
TOP 500
     [Clients].[ClientId] AS [0],
     [Clients].[Name] AS [1],
     [Clients].[Description] AS [2]
FROM
     [dbo].[Clients] AS [Clients]

WHERE 
     [Clients].[Name] NOT LIKE ''%'' + @p__dsl__p0 + ''%''',N'@p__dsl__p0 nvarchar(4)',@p__dsl__p0=N'name'
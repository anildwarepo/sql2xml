SELECT
TOP 500
     [Requests].[Id] AS [0],
     [Requests].[Name] AS [1],
     [Requests].[ClientName] AS [2],
     [Requests].[MatterName] AS [3],
     [Form Answers].[QuestionId] AS [Form AnswersQuestionId],
     [Form Answers].[Form_Id] AS [Form AnswersFormId],
     [Form Answers].[AnswerValue] AS [Form AnswersFormAnswerValue],
     [Form Answers].[AnswerDisplayValue] AS [Form AnswersAnswerDisplayValue],
     [Form Answers].[QuestionName] AS [Form AnswersQuestionName],
     [Form Answers].[KeyValueAnswers] AS [Form AnswersKeyValueAnswers]
FROM
     [dbo].[Requests] AS [Requests]
     LEFT OUTER JOIN [dbo].[comments] AS [Comments] ON [Comments].[rootcomponent_id] = [Requests].[Component_Id]

     LEFT OUTER JOIN [dbo].[Activities] AS [Activities] ON ([Activities].[Component_Id] = [Requests].[Component_Id] OR [Activities].[RootComponent_Id] = [Requests].[Component_Id])

     LEFT OUTER JOIN [dbo].[FormAnswers] AS [Form Answers] ON ([Form Answers].[Form_Id] = [Requests].[Form_Id] AND [Form Answers].[QuestionName] IN (@p__dsl__question_names0_0))


WHERE (
     [Requests].[Name] NOT LIKE ''%'' + @p__dsl__p0 + ''%'')
      AND ([Requests].[Deleted] = 0)',N'@p__dsl__question_names0_0 nvarchar(14),@p__dsl__p0 nvarchar(4)',@p__dsl__question_names0_0=N'Date_Date_Only',@p__dsl__p0=N'name'
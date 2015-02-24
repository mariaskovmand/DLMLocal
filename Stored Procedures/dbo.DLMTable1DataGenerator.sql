SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DLMTable1DataGenerator] 
	-- Add the parameters for the stored procedure here
	@NumberOfEntries int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	declare @StartCount int
	select @StartCount = isnull(max(ID), 0) + 1 from DMLTestTable1 
	
	select @NumberOfEntries = @NumberOfEntries + @StartCount

	while @StartCount < @NumberOfEntries
	begin
		insert DMLTestTable1
		(Name)
		values
		('Name_' + convert(varchar, @StartCount))

		select @StartCount = @StartCount + 1
	end

END
GO

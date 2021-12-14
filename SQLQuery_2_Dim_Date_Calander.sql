-- Cleaning Columns for me to use later 
SELECT
   [DateKey],
   [FullDateAlternateKey] as Date 	--,[DayNumberOfWeek]
,
   [EnglishDayNameOfWeek] as Week 	--,[SpanishDayNameOfWeek]
   --,[FrenchDayNameOfWeek]
   -- ,[DayNumberOfMonth]
   --,[DayNumberOfYear]
,
   [WeekNumberOfYear] as Weeknumber,
   [EnglishMonthName] as Month 	-- ,[SpanishMonthName]
   -- ,[FrenchMonthName]
,
   [MonthNumberOfYear] as MonthNumber,
   [CalendarQuarter] as Quarter,
   [CalendarYear] as Year 	-- ,[CalendarSemester]
   -- ,[FiscalQuarter]
   -- ,[FiscalYear]
   -- ,[FiscalSemester]
FROM
   [AdventureWorksDW2019].[dbo].[DimDate] 
where
   CalendarYear >= 2019
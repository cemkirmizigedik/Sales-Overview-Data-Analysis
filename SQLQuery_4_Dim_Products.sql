--Cleansed D?mProducts data set
SELECT p.ProductKey
	,p.ProductAlternateKey AS ProductItemCode
	,p.EnglishProductName AS [Product Name]
	,psc.EnglishProductSubCategoryName AS [Sub Category]
	,pc.EnglishProductCategoryName AS [Product Category]
	,p.color AS [Product Color]
	,p.Size AS [Product Size]
	,p.ProductLine AS [Product Line]
	,p.ModelName AS [Product Model Name]
	,p.EnglishDescription AS [Product Description]
	,
	--[ProductKey]
	-- ,[ProductAlternateKey]
	-- ,[ProductSubcategoryKey]
	-- ,[WeightUnitMeasureCode]
	--  ,[SizeUnitMeasureCode]
	--  ,[EnglishProductName]
	-- ,[SpanishProductName]
	-- ,[FrenchProductName]
	-- ,[StandardCost]
	--  ,[FinishedGoodsFlag]
	-- ,[Color]
	--  ,[SafetyStockLevel]
	-- ,[ReorderPoint]
	-- ,[ListPrice]
	-- ,[Size]
	--  ,[SizeRange]
	--  ,[Weight]
	--  ,[DaysToManufacture]
	--  ,[ProductLine]
	--  ,[DealerPrice]
	-- ,[Class]
	--  ,[Style]
	-- ,[ModelName]
	-- ,[LargePhoto]
	-- ,[EnglishDescription]
	-- ,[FrenchDescription]
	-- ,[ChineseDescription]
	-- ,[ArabicDescription]
	-- ,[HebrewDescription]
	-- ,[ThaiDescription]
	--  ,[GermanDescription]
	-- ,[JapaneseDescription]
	--  ,[TurkishDescription]
	--  ,[StartDate]
	--  ,[EndDate]
	--  ,[Status]
	isnull(p.STATUS, 'OutDated') AS [Product Status]
FROM DimProduct AS p
LEFT JOIN DimProductSubcategory AS psc ON psc.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS pc ON pc.ProductCategoryKey = psc.ProductCategoryKey
ORDER BY p.ProductKey ASC
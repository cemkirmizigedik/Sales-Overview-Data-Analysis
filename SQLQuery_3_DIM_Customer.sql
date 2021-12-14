--Cleansed D?mCustomers data for me
SELECT c.CustomerKey AS CustomerKey
	,c.FirstName AS FirstName
	,c.LastName AS LastName
	,C.FirstName + ' ' + c.LastName AS [Full Name]
	,
	-- ,[GeographyKey]
	--,[CustomerAlternateKey]
	--,[Title]
	--,[FirstName]
	--,[MiddleName]
	-- ,[LastName]
	--,[NameStyle]
	--,[BirthDate]
	--,[MaritalStatus]
	--,[Suffix]
	-- ,[Gender]
	--,[EmailAddress]
	--,[YearlyIncome]
	--,[TotalChildren]
	--,[NumberChildrenAtHome]
	--,[EnglishEducation]
	--,[SpanishEducation]
	--,[FrenchEducation]
	--,[EnglishOccupation]
	--,[SpanishOccupation]
	--,[FrenchOccupation]
	--,[HouseOwnerFlag]
	--,[NumberCarsOwned]
	--,[AddressLine1]
	--,[AddressLine2]
	--,[Phone]
	--,[DateFirstPurchase]
	--,[CommuteDistance]
	CASE c.gender
		WHEN 'M'
			THEN 'MALE'
		WHEN 'F'
			THEN 'FEMALE'
		END AS Gender
	,c.DateFirstPurchase AS DateFirstPurchase
	,g.city AS [Customer City]
FROM DimCustomer AS c
LEFT JOIN DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY c.CustomerKey ASC

 
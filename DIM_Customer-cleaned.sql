--Cleaned DIM_CUSTOMER Table--
SELECT c.customerKey as CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstName as [First Name],
      --,[MiddleName]
      c.lastName as [Last Name],
	  c.firstName + ' ' +lastname as [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender,
	  --,[Gender]
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
      c.dateFirstPurchase as DateFirstPurchase,
      --,[CommuteDistance]
	  g.city as CustomerCity
	  FROM dbo.dimcustomer as c
	  LEFT JOIN dbo.dimgeography as g ON g.geographykey=c.geographykey
	  ORDER BY CustomerKey ASC
  
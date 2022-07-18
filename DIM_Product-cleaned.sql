--Cleaned DIM_Product Table--
SELECT p.[ProductKey],
      p.[ProductAlternateKey] as ProductItemCode,
--      ,[ProductSubcategoryKey]
--		,[WeightUnitMeasureCode]
--		,[SizeUnitMeasureCode]
      p.[EnglishProductName] as ProductName,
	  ps.EnglishProductSubcategoryName as [Sub Category],
	  pc.EnglishProductCategoryName as [Product Category],
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
      p.[Color] as [Product Color],
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--     ,[ListPrice]
      p.[Size] as [Product Size],
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
      p.[ProductLine] as [Product Line],
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
      p.[ModelName] as [Product Model Name],
--      ,[LargePhoto]
      p.[EnglishDescription] as [Product Description],
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
ISNULL (p.Status, 'OutDated') as [Product Status]
FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
LEFT JOIN [AdventureWorksDW2019].dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
LEFT JOIN [AdventureWorksDW2019].dbo.DimProductCategory as pc ON pc.ProductCategoryKey=ps.ProductCategoryKey
ORDER BY p.ProductKey ASC
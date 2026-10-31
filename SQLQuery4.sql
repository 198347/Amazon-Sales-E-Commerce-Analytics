use [Amazon_sales db]
USE [Amazon_sales db];
GO

-- لو الـ View القديم موجود ولا حاجة، بنحذفه وننشئه من جديد
IF OBJECT_ID('[dbo].[vw_Amazon_Sales_Clean]', 'V') IS NOT NULL
    DROP VIEW [dbo].[vw_Amazon_Sales_Clean];
GO

CREATE VIEW [dbo].[vw_Amazon_Sales_Clean] AS
SELECT *
FROM [dbo].[amazon.data.csv];
GO
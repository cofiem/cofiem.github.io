---
layout: post
title: Paging data using SQL
tags:
- web dev
- sql
- microsoft
- sql server
---
Paging is one of those things that you wish there was more support for, but you want  real control over. I've found a number of ways to do it, each has advantages and drawbacks. These are the two best solutions I've found. I have to list two, as one works only when sorting by unique db fields, and the other is slower but can be sorted by any field.<br>
<br>
For data sorted by a unique field (eg. primary key or unique Name field):
<a href="http://www.aspfaqs.com/webtech/042606-1.shtml">A More Efficient Method for Paging Through Large Result Sets</a><br>
<br>
For example:<br>
<txp:fox_code language="tsql" css="1">CREATE  PROCEDURE [dbo].[stored_procedure_name]
(
@startRowIndex int,
@maximumRows int
)
AS

DECLARE @first_id int, @startRow int

-- A check can be added to make sure @startRowIndex isn't > count(1)
-- from employees before doing any actual work unless it is guaranteed
-- the caller won't do that

-- Get the first employeeID for our page of records
SET ROWCOUNT @startRowIndex
SELECT @first_id = employeeID FROM employees ORDER BY employeeid
-- Now, set the row count to MaximumRows and get
-- all records >= @first_id
SET ROWCOUNT @maximumRows

SELECT e.*, d.name as DepartmentName
FROM employees e
INNER JOIN Departments D ON
e.DepartmentID = d.DepartmentID
WHERE employeeid >= @first_id
ORDER BY e.EmployeeID

SET ROWCOUNT 0

GO</txp:fox_code><br>
<br>
For data that needs to be sorted by a non-unique field, a different approach is needed. There might be a way to adapt the previous method... but I haven't been able to yet.<br>
<br>
<a href="http://www.themanaged.net/archive/2007/02/13/10.aspx">Easy, yet fast, SQL paging solution</a><br>
<br>
For example:<br>
<txp:fox_code language="tsql"  css="1">SELECT TOP 5 *
FROM Books
WHERE BookID
NOT IN (
SELECT TOP 45 BookID
FROM Books
ORDER BY BookID
)
ORDER BY BookID
</txp:fox_code><br>
<br>
The problem seems to centre on there being no way to distinguish between rows when sorting by a non-unique field. It is possible to store the primary key, however the sorting is complex.<br>
For example, the first item of a page is test2, below. but since we sort by date, test1 is selected instead.<br>
<txp:fox_code language="tsql"  css="1">Name  date   
test3  2008-04-09
test2  2008-04-09   
test4 2008-04-09
test1 2008-04-10
test5 2008-04-10
</txp:fox_code><br>
<br>
This can be prevented by using a primary key. However, the sorting cannot be maintained, as any subsequent rows with Name > selected row will not sort lower.
The goal is to find a way that retrieves items in the exact same order, and allows the selection to start from any row.

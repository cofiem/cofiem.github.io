---
layout: post
title: Comparing Dates in SQL
tags:
- sql
- sql server
- dates
- troubleshooting
- microsoft
---
Some useful sites:<br />
<ul><li><a href="http://www.thisiscode.com/sql/comparedates.php">date and time functions</a> using datediff and datepart</li>
<li><a href="http://www.bennadel.com/blog/122-Getting-Only-the-Date-Part-of-a-Date-Time-Stamp-in-SQL-Server.htm">getting the date</a> from a datetime</li>
</ul>
To compare dates, this seems like the best method:<br />
Get the start date by:<br>
<txp:fox_code language="tsql" css="1">SELECT CAST(FLOOR( CAST( [datetime] AS FLOAT ) )AS DATETIME)</txp:fox_code><br />
Replace [datetime] with the date (eg. <code>GETDATE()</code> for the current date).<br />
This casts the datetime as a float, gets the floor (chops off the decimal) and converts back to a date. This will always give you midnight for the day. Use a greater than or equal to comparison, as it needs to include midnight.<br />
<br />
To get the end date:<br />
<br />
<txp:fox_code language="tsql" css="1">SELECT  CAST(CEILING( CAST( [datetime] AS FLOAT ) )AS DATETIME)</txp:fox_code><br />
Again, replace [datetime] with the date. This will return midnight on the following day, so use a less than comparison. This method seems to be slightly better than converting to a varchar, as it will not accidentally compare dates lexigraphically (comparing each digit separately).

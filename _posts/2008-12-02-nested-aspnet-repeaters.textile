---
layout: post
title: Nested ASP.Net Repeaters
tags:
- web dev
- ASP.Net
- C#
---
Nested Repeaters - Very useful for parent-child relations.<br /><ul><li><a href="http://jamesewelch.wordpress.com/2008/03/06/how-to-use-nested-repeater-controls-with-relational-data/trackback/">One good reference</a>.</li><li><a href="http://support.microsoft.com/kb/306154">MSDN reference</a>.</li></ul>To get multiple tables, use a DataSet and Fill it with a DataAdapter.<br /><br />It's useful to give a name to the first table in the DataSet:<br /><code type="text/csharp"><br />adapter.Fill(ds,"FirstTableName");<br /></code><br />From the <a href="http://msdn.microsoft.com/en-us/library/bh8kx08z.aspx">MSDN article</a> on Populating a DataSet<blockquote>If the <span><span class="input">DataAdapter</span></span> encounters multiple result sets, it creates multiple tables in the <span><span class="input">DataSet</span></span>. The tables are given an incremental default name of Table<em>N</em>, starting with "Table" for Table0. If a table name is passed as an argument to the <span><span class="input">Fill</span></span> method, the tables are given an incremental default name of TableName<em>N</em>, starting with "TableName" for TableName0.</blockquote>The only thing left is to set the relations between the DataTables in the DataSet.

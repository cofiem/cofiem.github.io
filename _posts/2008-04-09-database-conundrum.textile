---
layout: post
title: Database Conundrum
tags:
- sql
- sql server
- troubleshooting
- web dev
- err'd
---
This error is bugging me:<br />
<br />
<span style="font-weight: bold;">Operand type clash: nvarchar is incompatible with image</span><br />
<br />
It happens when I try to submit a complex form. Problem is, I don't know which field is causing the error. Not much on internet, probably just sending the wrong datatype. Debugging time!<br />
<br />
<span style="font-weight: bold;">Update</span>: No easy fix for this one. There are some similar cases <a href="http://www.devnewsgroups.net/group/microsoft.public.dotnet.framework.adonet/topic16370.aspx">here</a> and <a href="http://www.pcreview.co.uk/forums/thread-1249954.php">here</a>, but nothing that's quite the same. Still don't know which field is the problem. Seems like it has something to do with nulls, as those links say.<br />
<br />
<span style="font-weight: bold;">Update 2</span>: Fixed it! Problem was with datatypes agreeing between page code, stored procedure and table design. (stored procedure had image, other two were varchar).

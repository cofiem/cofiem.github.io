---
layout: post
title: 'ASP.Net DataBinding: Container.DataItem'
tags:
- asp.net
- microsoft
- web dev
---
Some useful info about <a href="http://weblogs.asp.net/rajbk/archive/2004/07/20/what-s-the-deal-with-databinder-eval-and-container-dataitem.aspx">eval and container item</a>.

A very useful way of displaying data from a datasource.  Refer to the title link for the ways it can be used.

The best way is to databind a custom object, and access it's properties or methods (that return a string). Otherwise you need to be sure that the database column names won't change.

---
layout: post
title: LDAP Queries
tags:
- c#
- microsoft
- web dev
- documentation
---
LDAP Queries are strange things. Why did they come up with a whole new query language? Anyway, some links:<br /><br /><a href="http://confluence.atlassian.com/display/DEV/How+to+write+a+LDAP+search+filter">This page</a> is very useful, and this <a href="http://msdn.microsoft.com/en-us/library/ms675768%28VS.85%29.aspx">MS page</a> is good for an overview of the basics of the syntax.<br /><br />As with any other query/filter, try to be as specific as possible, and use 'objectClass' and 'objectCategory' to limit the search to the type of entry you're looking for.

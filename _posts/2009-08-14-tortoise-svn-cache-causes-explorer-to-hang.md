---
layout: post
title: Tortoise SVN Cache causes Explorer to hang
tags:
- Tortoise SVN
- quick fix
- explorer
---
<p>I've been wondering why things are suddenly feeling so slow. I checked it out, and apparently Tortoise SVN is the culprut. I need it to access and update various svn repositories, so can't remove it. Thankfully it's an easy fix - Travis over at <a href="http://paraesthesia.com/archive/2007/09/26/optimize-tortoise-svn-cache-tsvncache.exe-disk-io.aspx">Paraesthesia</a> has the details.</p>

<p>The short version is to set TSVNCache.exe to scan only folders that actually contain svn checkouts, rather than all fixed disks, which is the default.</p>

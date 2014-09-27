---
layout: post
title: Unix time - never boring
tags:
- linux
- time
- err'd
- troubleshooting
- bug
---
And now for some fun with time. Time and calendars are a very tricky thing - they can take some trouble to represent, are different in various places around the world, and require complex algorithms to manipulate.<br>
<br>
Time can be calculated using an <em><a href="http://en.wikipedia.org/wiki/Epoch_(reference_date)">Epoch</a></em> - a point from which subsequent moments can be specified. This is a standard way of recording time on <a href="http://en.wikipedia.org/wiki/System_time">electronic devices</a>.<br>
<br>
Why is this interesting? Well, <a href="http://en.wikipedia.org/wiki/Unix_time">Unix time</a> is one <a href="http://en.wikipedia.org/wiki/Category:Time_scales">time scale</a>, which is widely used on many Operating Systems and electronic devices. It's Epoch is midnight Coordinated Universal Time (UTC) January 1, 1970. It is measured as the number of seconds elapsed since the Epoch, not counting leap seconds.<br>
<br>
Unix time recently passed an interesting milestone:  1,234,567,890 seconds (on February 13, 2009 at exactly 23:31:30 UTC). Before this, it passed 1,000,000,000 seconds at 01:46:40 September 9, 2001 UTC, to (a little) <a href="http://www.linuxtoday.com/infrastructure/2001090900120NWCY">fanfare</a>.<br>
<br>
Also, most people know about the Y2K bug - you know, when computer systems rolled over from '99 to '00 - and might have thought it was 1900 instead of 2000, pushing us back into the dark ages. While that calamity was severely over-hyped, Unix time has it's own version of the Y2K bug, that could have a much bigger impact.<br>
<br>
The <a href="http://en.wikipedia.org/wiki/Year_2038_problem">year 2038 problem</a> exists for all systems that use the Unix Epoch, and store the number of seconds since the Epoch as a signed 32-bit integer. What does that mean? The limit on the number that can be stored in this format (2,147,483,647) will be reached on
Tuesday, 19 January 2038 at 03:14:07 UTC. At that point, the time will wrap around and be sometime in 1901. Wikipedia has a neat animation of the problem:<br>
<br>
<img src="http://upload.wikimedia.org/wikipedia/commons/e/e9/Year_2038_problem.gif" alt="From 2038 to 1901"><br>
<br>
While this problem can be fixed by using an unsigned 32-bit integer, or modifying the definition to use a 64-bit integer, these solutions are not compatible with time calculations or binary storage.<br>
<br>
Oh, and if 2038 seems a long way off for you, think about the poor developers of prediction or diary software. It is already less than 30 years until the wrap around occurs, so predictions 30 years into the future already need to take the <a href="http://members.dslextreme.com/users/rogermw/Y2038.html">problem into account</a>. Changes need to start happening.<br>
<br>
Who said time-travel was impossible?<br>
<br>
P.S. 
<ul>
<li>For your amusement: a <a href="http://www.merlyn.demon.co.uk/critdate.htm">list of critical dates</a></li>
<li><a href="http://www.exit109.com/~ghealton/y2k/yrexamples.html#_Native.NativeUNIX">More info about the year 2038 problem</a>

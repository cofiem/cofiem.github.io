---
layout: post
title: Temporary User Profile solution
tags:
- windows
- user profile
- temp
- troubleshooting
- user
---
<p>
Among the most frustrating (or crazily intriguing) problems are those that are <em>almost</em> like what is being talked about on forums or support websites, but either not close enough or do not respond to the recommended fixes. I think I fixed an issue just like this today.
</p>
<p>
Just like <a href="http://en.wikipedia.org/wiki/Transient_acantholytic_dermatosis">Grover's disease</a>, there is no known (single) cause for why you might be logged onto a Windows computer and have a Temporary profile. You might get a <a href="http://www.bauer-power.net/2010/03/temporary-profile-loaded-on-windows.html">popup from the task bar</a> or an event logged in the Application Event Log. Possibly you may only notice because your desktop icons have gone, and in their place is a fresh, new profile. Most often, your settings, programs, icons and data files are still there, they just weren't loaded for you.
</p>
<p>
If you're lucky (sort of :\), you may be able to use a relatively straightforward method to resolve this. First, have a look in the Application Event Log, and see if there is a related event. Then have a look through the <a href="http://www.google.com.au/search?q=site:support.microsoft.com/+temporary+user+profile">Microsoft Knowledge Base articles</a> for something that seems right. Give it a go. If you get stuck on a step, or something doesn't match, don't just keep going. You could post on a forum, ask a tech-savvy friend or try out <a href="http://superuser.com/">Super User Q &amp; A</a>.
</p>
<p>
If your issue, like mine, seems like it's not really covered, perhaps my solution will help you. Here were the symptoms:
<ul>
<li>
A restricted user created solely for the purpose of running scheduled tasks did not seem to have a profile.</li>
<li>
Every time the user &quot;logged on&quot; (i.e. the scheduled task ran), an new folder named TEMP was created under the <code>C:\Users</code> folder.
</li>
<li>
In the System Properties &ndash;&gt; User Profiles &ndash;&gt; Settings&hellip; profile list the user's profile was listed as <code>Temporary</code> status.
</li>
<li>
A warning was entered in the Application Event Log with a description similar to 
<blockquote>
Windows cannot find the local profile and is logging you on with a temporary profile. Changes you make to this profile will be lost when you log off.
</blockquote>
<li>
When the user &quot;logged off&quot; (i.e. the scheduled task ended), the TEMP folder disappeared, as did the User Profile entry in the Profile list.
</li>
<li>Looking in the registry, there were no <code>{sid}.BAK</code> entries in the ProfileList node.</li>
<li>There did not seem to be any way to stop the warning messages appear, or to create a profile for the user that lasted between logins</li>
</ul>
</p>

<p>
The way I got it working in the end was to go through a rather protracted process (for Windows 7/Vista/Server 2008).
<ol>
<li>While the user is logged in. Make a copy of the TEMP folder. Name it with the user's <code>username</code>.</li>
<li>Also while the user is logged in, use <code>regedit</code> to go to <code>HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList</code>. Export the node matching the user with profile issues to a file. You can usually tell this based on the &quot;ProfileImagePath&quot;.</li>
<li>In the same location in the registry, export the node of a user that matches as closely as possible the user you are trying to fix.</li>
<li>Edit the first file to match the second. Do not change &quot;ProfileImagePath&quot; or &quot;Sid&quot;. The exact settings will depend on if the user is a domain user or local user, among other things.</li>
<li>Wait until the user is logged off, and ensure that the user does not log in again while you are making the remaining changes.</li>
<li>Merge the edited file back into the registry. Once merged, refresh the view, then open the new node. Change &quot;ProfileImagePath&quot; to match the path to the folder you copied from the TEMP profile folder earlier.</li>
<li>Check the changes, then close regedit. Go to the User Profile list from System Properties and check that the user's Profile is listed, and has a Status of <code>Local</code> or <code>Roaming</code>. As long as it is listed, and is not <code>Temporary</code>, it should be good.</li>
<li>When the user next logs on, there should be no warnings or popups, and they should be using a profile that will last between logins. The user should log out and in a couple of times to make sure.</li>
</ol>
</p>
<p>Hope that helps, and as always with these things, no responsibility taken if things get messed up.</p>

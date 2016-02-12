---
layout: post
title: Steam Saved Games
tags: []
---
<p>I really like using Steam these days - the price of games is lower than from stores, and I really don't need cds and boxes. It is also much easier to download and play games than hunt around for torrents, keys and that special little trick to get the game to skip the cd check. Not that I ever did that. But it was very tempting. And occasionally still is.</p>

<p>It seems that Steam, rather than showing that DRM is not needed, encourages game producers to attach more and more annoying and fragile DRM to games. I have no idea why. Part of the appeal of Steam is the community, not having to worry about backing up game data files and being able to get updates without having to hunt around each game website.</p>

<p>Steam even has an auto-sync feature now. Which is great... when it works. Unfortunately, that seems to be less often that it should. There are a number of <a href="http://www.evilavatar.com/forums/showthread.php?t=120964">stories</a> about Steam refusing to sync, syncing the wrong thing, and providing nothing in the way of options or conflict resolution. A <a href="http://www.google.com.au/search?sourceid=chrome&ie=UTF-8&q=steam+sync+cloud">search for Steam sync</a> show that articles about it tout it as one more reason to use Steam, while the forum posts from users having issues with it are equally as abundant, if not more so.</p>

<p>I've recently been having troubles with my hard drive, so I thought now was a great time to figure out how to manually backup saved games. There is a Steam <a href="http://forums.steampowered.com/forums/showthread.php?t=840657">forum post</a> dedicated to the location of Steam saved games, and now even a <a href="http://savelocations.wikia.com/wiki/Main_Page">wiki</a>.</p>

<p>I've been trying to find where Plants vs Zombies stores it's saved games, and I've only recently been pointed in the right direction. If you're looking for saved games for Steam games, here are some locations to check:
<ul>
<li>Some games still use <i>My Documents</i> or <i>Documents</i> in the user's home folder. (C:\Users\&lt;user name&gt; on Windows 7,  C:\Documents and Settings\&lt;user name&gt; on Windows XP or WIndows 2000). Also check any folders named <i>Saved Games</i> or folders games names in the user's home folder.</li>
<li>In the Steam install location (C:\Program Files (x86)\Steam [Windows 7 64-bit default]), browse to <i>steamapps\common\&lt;game name&gt;</i>.</li>
<li>In the Steam install location, browse to <i>userdata\&lt;steam id&gt;\&lt;game id&gt;</i>. The game id can be found by looking at the id in the URL when on the game's Steam store page.</li>
</ul>
</p>

<p>
Some other possible locations (from the Saved Game post on the Steam forum):
<blockquote>
<i>User IDs</i><br>
[USERNAME] -- The name of the Windows account you use on your computer<br>
[STEAMNAME] -- The name of your Steam account<br>
[STEAMID] -- A numerical identifier for your Steam account<br>
<br>
<i>Steam-specific locations</i><br>
[STEAMPATH] -- The default location where Steam is installed<br>
Windows 32-bit: C:\Program Files\Steam\<br>
Windows 64-bit: C:\Program Files (x86)\Steam\<br>
<br>
[STEAMAPPS] -- The default location for Steam Games<br>
All versions: [STEAMPATH]\steamapps\<br>
<br>
[STEAMCLOUD] -- Files that synchronize with the Steam Cloud<br>
All versions: [STEAMPATH]\userdata\[STEAMID]\<br>
<br>
<i>General Windows locations</i><br>
[DOCUMENTS] -- The default location for the "My Documents" shell folder/library<br>
Windows XP: C:\Documents and Settings\[USERNAME]\My Documents\<br>
Windows Vista: C:\Users\[USERNAME]\Documents\<br>
<br>
[APPDATA] -- The default location for standard application settings<br>
Windows XP: C:\Documents and Settings\[USERNAME]\Application Data\<br>
Windows Vista: C:\Users\[USERNAME]\AppData\Roaming\<br>
<br>
[LOCAL] -- The default location for system-specific application settings<br>
Windows XP: C:\Documents and Settings\[USERNAME]\Local Settings\<br>
Windows Vista: C:\Users\[USERNAME]\AppData\Local\<br>
<br>
[PUBLICDATA] -- The default location for cross-user application settings<br>
Windows XP: C:\Documents and settings\All Users\Application Data\<br>
Windows Vista: C:\ProgramData\<br>
<br>
[PUBLIC] -- The default location for cross-user system settings<br>
Windows XP: C:\Documents and Settings\All Users\<br>
Windows Vista: C:\Users\Public\<br>
<br>
[SAVEDGAMES] -- The Windows Vista default Saved Games folder<br>
Windows Vista: [DOCUMENTS]\Saved Games\<br>
</blockquote>
</p>

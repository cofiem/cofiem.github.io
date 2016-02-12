---
layout: post
title: Observations on developing for Android
tags:
- android
- java
- google
- work
- hobby
- dev
---
<p>I'm a .Net developer for my day job, and even though I do have a couple of hobby projects in .Net, I'm usually more interested in using other technologies. That usually means some sort of web-related project. HTML, CSS, Javascript were my first taste of programming/development, and I still enjoy using them.</p>

<p>In the spirit of doing something different to work, my peek at Android development was enjoyable. Google has certainly gone to some trouble to integrate Android development heavily into the Eclipse IDE. And I'm glad they did, especially after reading some of the horror stories about trying to run and test a Windows Mobile emulator (not Windows Phone 7) and the early iPhone emulators. Overall, very good already, and improving.</p>

<p>The workflow is well constructed - use templates to quickly begin developing a new project. A brand new project with no changes can be run in the emulator (even though it's only a black screen with some "Hello World" text). Each time a project is run in debug mode, it's installed over the previous version, and started automatically. If the app is already running on the phone it can cause some troubles. A minor, and certainly avoidable, niggle.</p>

<p>Although I was surprised at the lack of a simple, useable .Net TimeSpan-like class in the Java framework, it was quite straight-forward to incorporate the <a href="http://joda-time.sourceforge.net/">Joda-time</a> library. While I probably didn't need the whole thing, it functioned quite well, and was a good experiment. I did encounter a rather nasty Stackoverflow Exception that occurred when the time zone was not set. The solution was to set the time zone if it wasn't set. Joda-time is a thorough, complex library... it took me some time to work out.</p>

<p><a href="http://it.toolbox.com/blogs/codesharp/java-for-c-developers-21248">Other Java-related issues</a> involved superficial similarities with C# that actually functioned quite differently. For example, I regularly use switch statements with strings in C#, but apparently that can't be done in Java. It felt a little dirty resorting to if-else statements to get things done. <a href="http://en.wikipedia.org/wiki/Relational_operator#Object_identity_vs._Content_equality">Equality was also a sticking-point</a>: in C#, even though by default == is used for object reference comparison, it is overloaded for all the built-in types to be much more useful content/structure comparison. In Java, it's pretty much .Equals to compare content, which felt a bit unnatural.</p>

<p>Developing for a mobile device has its own set of challenges, not least ensuring the UI remains responsive, and there are no memory leaks or power wasters. Android's convention is to use events as much as possible, which is very useful. I'm still not quite clear on some issues related to the <a href="http://developer.android.com/resources/articles/avoiding-memory-leaks.html">Context object and memory leaks</a>. Most of it was quite straight forward, and the Android documentation and references are well-written and usually thorough. There's always some small niggle that needs to be scratched using Google, though.</p>

<p>I might look into writing a more complex Android app soon - I need a bit of spare time, and that's not really available just now. I'm pushing to have time just to write this. Android is a rapidly-maturing platform, and hopefully it won't be held back by fragmentation or issues with <a href="http://en.wikipedia.org/wiki/Dalvik_(software)#Controversy">Dalvik vs (Oracle's) Java</a>.</p>

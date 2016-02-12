---
layout: post
title: Versioning a factory pattern or plugin architecture
tags:
- c#
- component
- text file
- ".net"
- versioning
- programming
---
<p>I have a problem: I need an architecture to allow for versioning a plugin, component or factory pattern in C#. The requirements are:</p>
<ul>
<li>Simple way for a running program to access a new component.</li>
<li>When a new version is added, the older version still need to be available.</li>
<li>A way to specify which version of a component to use.</li>
<li>Standard interface for the program and the components to communicate.</li>
</ul>
<p>I've got a couple of ideas. I could modify a <a href="http://www.c-sharpcorner.com/UploadFile/rmcochran/plug_in_architecture09092007111353AM/plug_in_architecture.aspx">plugin architecture</a> to allow for versioning. I'm not really sure about dynamically loading dlls - bit more complex than what I have time for. Although I'm willing to listen to any reasoned arguments.</p>
<p>A console application wrapper could work. I could pass arguments for the various requirements. Then the console app could write out a text file in a well-known format. I'm not a real fan of writing and reading text files for communication if I can help it. I'd rather just call a method in code.</p>
<p>At the moment the console app is the most straight-forward idea. I'd have a whole bunch of directories named using the version. Then just create a new directory, copy over the required files, run the console app, read in the output file.</p>
<p>I'm really looking for a simple way to get this done without too much fooling around with complex c# concepts. Or a ready-made library.</p>

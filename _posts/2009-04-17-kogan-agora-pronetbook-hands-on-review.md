---
layout: post
title: Kogan Agora Pro Netbook hands-on review
tags:
- internet
- linux
- ubuntu
- web
- review
- netbook
---
<p>After spending around a month researching my options for a <a href="http://en.wikipedia.org/wiki/Netbook">netbook</a> (a smaller laptop, designed for mainly Internet access), I settled on a <a href="http://www.kogan.com.au/shop/kogan-agora-netbook-pro/">Kogan Agora Pro Netbook</a>.There is also the option of the <a href="http://www.kogan.com.au/shop/kogan-agora-netbook/">Kogan Agora Netbook</a>, which has 1GB RAM instead of 2GB, a 3-cell battery instead of 6-cell, and does not include a USB Bluetooth dongle.  I ordered a Pro version on the 3rd of April. At that point the shipping date was the 10th of April - ambitious at best, since that was Easter Good Friday. The shipping date later changed to Friday 17th April. My order arrived Wednesday 15th April by registered courier.</p>

<p>The Kogan Netbook is quite similar to the <a href="http://www.netbookmarket.com.au/msi-wind-netbook.php">MSI Wind Netbook</a> and the <a href="http://eeepc.asus.com/">ASUS EeePC</a>.</p>

<p>The ordering process on the Kogan site was quite straightforward. I did need to pay an extra $30  on top of the $539 for postage - not too bad, really. They use <a href="http://www.eway.com.au/">eWay</a>, who seem to be a well respected <a href="http://www.eway.com.au/Company/PCICompliance/Overview.aspx">PCI-DSS compliant</a> real-time payment company. They send email confirmation of the order and payment success.</p>

<p>A white box about A3 size contained the Kogan Netbook, power cord, Bluetooth dongle and battery. I was lead through the <a href="http://www.kogan.com.au/netbook/">setup process</a> described by Kogan with no worries. The Netbook has a custom white and black Kogan start-up splash screen. It looks quite basic to me, but I think the branding was well done - not too much, but obvious enough that you certainly remember the company.</p>

<p>Loading into the desktop,the lower "bubbling" menu reminded me of a Mac. I certainly like the green/blue background of the pre-installed GNU\Linux Operating System distribution - <a href="http://www.thinkgos.com/">gOS</a>. It's based on <a href="http://www.ubuntu.com/">Ubuntu</a>, which is in turn <a href="http://www.ubuntu.com/community/ubuntustory/debian">based on</a> <a href="http://www.au.debian.org/">Debian</a>. I'm glad gOS didn't go with the brown of Ubuntu. While I have used Ubuntu extensively in the past - it's my favourite distro - I have mixed feelings towards the default brown theme. The Google Gadgets - pot plant, weather, wireless signal, battery - were interesting, but ultimately they used too much processor time and I turned them off.</p>

<p>My first move was to connect to my home wireless network, which was a smooth process. Just click on the network icon next to the clock in the upper right, select the network from the list of detected networks, enter the key and I was off. I tried out a few other pre-installed programs: the <a href="http://www.openoffice.org/">OpenOffice.org</a> suite is a very capable MS Office replacement. Checked out <a href="http://www.skype.com">Skype</a> - and saw my mug on the built-in webcam :-). <a href="http://www.pidgin.im/">Pidgin</a>, an IM client that can connect to MSN, google, AIM, AOL and many other networks, quickly got me chatting. <a href="http://www.gimp.org/">GIMP</a> and <a href="http://picasa.google.com/linux/">Google's Picasa</a> for image organising and editing, along with <a href="http://www.gnome.org/projects/rhythmbox/">Rhythmbox</a> for music. A quick game of <a href="http://en.wikipedia.org/wiki/Sudoku">Sudoku</a> using one of the many available games.</p>

<p>Thinking I should stop fooling around and start some offline work, I tried to open the update manager... nothing. Tried the Quit option on the gOS menu... nothing. OK, this was trouble. How do I update and shut down the laptop? Well, I do have some skills with the command line, but how many regular users can resort to it? <code>sudo apt-get update</code> then <code>sudo apt-get upgrade</code> told me there were just under 200 updates. Whoa. Good thing I have Internet access. Ok, off for some lunch while it did it's thing.</p>

<p>Updates applied and required restart (using power button!) out of the way, I was off again. The Quit menu popped up when asked! Update manager worked! Ahhh, there we go. Now on to some surfi... No Internet. How odd. Well, after trying to connect automatically, manually, and other methods besides, still no Internet. Everything else worked, though. That's annoying. Thankfully I had Internet access on another computer. A few quick Googles revealed that I was not alone. It seems that since version 2.6.24-21 of the Linux kernel - the core of the system - many people were experiencing issues with wireless cards. This has nothing to do with Kogan, gOS, Ubuntu or Debian; the underlying system was at fault. To make a long story short, I modified the GRUB bootloader <code>menu.lst</code> file to default to the 2.6.24-19 kernel, instead of 2.6.24-23. That seemed to fix it - I'm now online without hassle.</p>

<p>With the couple of dialog window issues and wireless card kafluffle behind me, all is now good. My new Kogan Netbook is running well. I've already tried out playing some music and videos on it - the videos stress it a bit, but they play fine. And the battery life is really very good - I can manage about 2.5-3 hours of constant use before it really starts to squawk at me. I'm especially enjoying the ability to add and remove programs at will - the application repository seems to have an answer for any need. The programs are downloaded and installed and ready with no further interaction from me.</p>

<p>This is my first review. It does seem quite long, I hope it wasn't too much waffle. Any questions or queries, just post a comment. I hope this was helpful.</p>

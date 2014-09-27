---
layout: post
title: Auto mounting ntfs drives in Ubuntu 8.04 (Hardy Heron)
tags:
- linux
- ubuntu
- config
---
I recently swapped one of my hard drives, and needed to get Ubuntu to auto mount it. The instructions I found <a href="http://ubuntuforums.org/showpost.php?p=4921888&amp;amp;postcount=6">here</a> helped me figure it out.

Start by opening a terminal window (Applications -> Accessories -> Terminal).

Type '<code>sudo blkid</code>'. You may be prompted to enter you password. This will give you a list of the UUIDs for the drives in your system.

Type '<code>sudo mount</code>'. This will give you a llist of the currently mounted drives. Look for anything like '<code>/dev/sda1</code>' or '<code>/dev/hda1</code>'. These will be your hard disk partitions.

Type '<code>sudo gedit /etc/fstab</code>'. This will open the gedit text editor to modify the fstab file - the place linux looks to determine the drives to automatically mount.

To automount a drive when Ubuntu starts, there needs to be a line in this file representing the drive.

<code>UUID=XXXXXXXXXXXXXXXX  /media/_foldername_  ntfs defaults,umask=007,gid=46 0       1</code>

Where <code>UUID=XXXXXXXXXXXXXXXX</code> is the UUID for the drive that you found using the blkid command. <code>/media/_foldername_</code> is the folder you want to use to mount the drive.

The rest of the line are settings related to how the drive is mounted.

Once you've set up fstab, save the file, and type '<code>sudo mount -a</code>' in a terminal window. This will force a re-read of the fstab file. If the drive appears on the desktop, congrats, you've got an auto mounting drive. Of course, you won't know for sure until you restart.

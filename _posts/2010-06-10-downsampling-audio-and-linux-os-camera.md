---
layout: post
title: Downsampling audio and Linux OS camera
tags:
- audio
- camera
- linux
- sample rate
---
<p>Part of today was spent researching what would be required to be able to down- (or up-) sample audio to a specific sample rate. It's quite complex. I don't have much knowledge or background in this area, so that doesn't help. It appears that the idea is to add or remove samples without modifying the sound. Which is not trivial.</p>

<p>Wikipedia has an explanation of what I want to do in the <a href="http://en.wikipedia.org/wiki/Sample_rate_conversion#Example">Sample Rate Conversion</a> article. This helped a bit, but now I need to understand all the terms being used. What does "...creates images of frequency <i>f</i>..." mean?</p>

<p>A <a href="http://stackoverflow.com/questions/1125666/how-do-you-do-bicubic-or-other-non-linear-interpolation-of-re-sampled-audio-dat">stackoverflow post</a> also helped. It even includes some code! Now, how to use it? Is this the same thing as what I want to do? More when I have a chance.</p>

<p>I have a couple of old cameras and phone around the place, although none of them are mine - they're all from my family - why am I the dumping ground? Anyway, they're not being used for anything, so I wondered if there was something I could do with them along the lines of the <a href="http://chdk.wikia.com/wiki/CHDK">CHDK</a> project. This is an experiment that kind of 'turns on' hardware features in Cannon cameras that aren't available due to lack of firmware support. Could this be possible on other cameras, or even old phones as well? Maybe. What would be the best way to find out?</p>

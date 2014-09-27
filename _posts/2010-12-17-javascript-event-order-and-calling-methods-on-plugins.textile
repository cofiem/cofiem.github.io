---
layout: post
title: 'Javascript: Event order and calling methods on plugins'
tags:
- silverlight
- javascript
- flash
- firefox
- C#
- mozilla
---
<p>It's been a busy week. The first couple of days were frustrating, tiring, and one-step-forward-one-step-back kind of days. The last few days have been much more productive, fun even! I thought it would be a good idea to record some of what I found in case I encounter it again, or other people do.
</p>

<p>The first one is relatively straightforward. Essentially, when using Silverlight (and I imagine many other plugins) don't mix up your events! Silverlight allows so-called <code>ScriptableMember</code>s, which are accessible from javascript. However, depending on how your plugin works and whether you're using Flash, Silverlight, etc. there may be some built-in events. These are events like <code>onReady</code>, which fire when the plugin container has loaded. There may also be JavaScript-accessible events in your plugin. Be careful about the order and purpose they serve. The Silverlight plugin I'm working with has a custom <code>onReady</code> event. Calling custom methods or setting properties before the <em>custom</em> event fires may not work, as the plugin has loaded, but the custom content run by the plugin may not have loaded yet.</p>

<p>In Firefox, for example, you may see this error in the javascript console: <code>Error calling method on NPObject!</code>. This error is rather vague, and doesn't say much about what is going on. There is some information about it on the <a href="https://developer.mozilla.org/en/Gecko_Plugin_API_Reference:Scripting_plugins#section_4">Mozilla developer site</a>. In Flash this error can be due to security issues, such as those described in this <a href="http://stackoverflow.com/questions/1038668/cross-domain-externalinterface-error-calling-method-on-npobject">StackOverflow question</a>.</p>

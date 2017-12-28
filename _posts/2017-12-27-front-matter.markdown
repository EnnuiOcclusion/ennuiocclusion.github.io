---
layout: post
title: Front Matter
date:   2017-12-27 08:00:00 -0800
categories: meta
comments: true
---


# Hello,

My name is Peter Morris. I've worked for a while as the Director of Post-Production for a small creative agency in Orlando. That's a made up job title that means I did a lot of jobs. I've worked in filming, lighting, editing, coloring, IT, sound design, VR, AR, pipeline management, and anything else that needed to get done to deliver a finished project.

I'm at a bit of a turning point in my life and while I've enjoyed everything I've worked in so far I've found I have a real passion for programming. Programming is really the art of attempting to understand abstractions. It is the attempt to break apart real world problems into manageable enough pieces that you can map known abstractions over them. At its purest form working in metaphor to a machine the same as language works to be understood by someone else.

I want to take the knowledge that I've acquired about traditional crafts like cinematography and sound design and build better tools for creating the new interactive fictions that are becoming possible. The fact that Creative Technology is such a booming field is incredible, I want to join in the conversation.

I've been working hard over the past several months to bring my programming skills from active hobbyist with some pipeline and application hacking experience up to a much more productive level. I finally feel I'm at the level where I can start publishing work and getting input from others. This blog will document working to continually improve at this craft and hopefully be a point of contact to begin a discussion.

My efforts right now are guided largely towards interactive experience scripting. I want to use all these new technologies using an expressive and robust langauge that makes working easier. Lisp is the best candidate I've found for this by far, so get ready for a lot of Clojure.

I will also be working on continually improving this site itself, so there will be quite a few meta tagged posts about how best to use Jekyll with Emacs.

Thanks for taking the time to read this far. Let's make some cool things together.



{% if page.comments %}
<div id="disqus_thread"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://ennuiocclusion.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
{% endif %}

function tq84_vortraege_init() {

// Full list of configuration options available here:
// https://github.com/hakimel/reveal.js#configuration
   Reveal.initialize({
     controls: true,
     progress: true,
     history : true,
     center  : false,

// The "normal" size of the presentation, aspect ratio will be preserved
// when the presentation is scaled to fit different resolutions. Can be
// specified using percentage units.
   width : 1024,
   height:  768,

// Factor of the display size that should remain empty around the content
   margin: 0.00,

// Bounds for smallest/largest possible scale to apply to content
   minScale: 0.2,
   maxScale: 1.0,

   theme: Reveal.getQueryHash().theme, // available themes are in /css/theme

   transition: Reveal.getQueryHash().transition || 'none', // default/cube/page/concave/zoom/linear/fade/none


// Optional libraries used to extend on reveal.js
//
   dependencies: [
//   { src: 'lib/js/classList.js'          , condition: function() { return !document.body.classList; } },
//   { src: 'plugin/markdown/marked.js'    , condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
//   { src: 'plugin/markdown/markdown.js'  , condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
//   { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
     { src: '../reveal.js/plugin/zoom-js/zoom.js'       , async: true, condition: function() { return !!document.body.classList; } },
//   { src: 'plugin/notes/notes.js'        , async: true, condition: function() { return !!document.body.classList; } }
   ]

 });
}

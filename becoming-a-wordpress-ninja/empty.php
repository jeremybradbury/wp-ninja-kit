<?php
	$date = "July 17, 2014";
	$description = "A Description of your presentation";
	$author = "Author/s name/s";


	require_once("/inc/head.php");

	
?>

				<section>
					<h1>Dev Practice Meeting</h1>
					<h3>Toolbox</h3>
					<p>
						Today Kam will share some Debut 5 features and Devin will discuss his recent work on sprites for Phoenix.
					</p>
				</section>

				<section>
					<section>
						<h2>Updates and Open Topics</h2>
						
					</section>
					<section>
						<h2>News and Updates</h2>
						<ul>
							<li class="fragment">
								Working Groups update
							</li>
							<li class="fragment">
								(still) Looking for Boston FED
							</li>
							<li class="fragment">
								Devsigner - locally brewed conference looking for presenters
							</li>
							<li class="fragment">
								Do you have topics?  Ping Kam or Xtof.
							</li>
						</ul>
					</section>
					<section>
						<h2>Open Floor</h2>
						<p>Questions/comments/concerns</p>
					</section>
				</section>

				<section>
					<h2>Kam</h2>
					<p>Debut 5</p>
				</section>
				<section>
					<h2>Devin</h2>
					<p>Phoenix Sprites</p>
				</section>

				<section>
					<h2>Wrapup</h2>
					<p>Future Topics?  Talk to Kam or Xtof.</p>
				</section>

			</div>

		</div>

		<script src="../lib/js/head.min.js"></script>
		<script src="../js/reveal.min.js"></script>

		<script>

			// Full list of configuration options available here:
			// https://github.com/hakimel/reveal.js#configuration
			Reveal.initialize({
				controls: true,
				progress: true,
				history: true,
				center: true,

				transition: 'fade', // default/cube/page/concave/zoom/linear/fade/none

				// Optional libraries used to extend on reveal.js
				dependencies: [
					{ src: '../lib/js/classList.js', condition: function() { return !document.body.classList; } },
					{ src: '../plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
					{ src: '../plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
					{ src: '../plugin/syntaxhighlighter/shCore.js', async: true },
					{ src: '../plugin/syntaxhighlighter/shBrushSass.js', async: true },
					{ src: '../plugin/syntaxhighlighter/shBrushCSharp.js', async: true },
					{ src: '../plugin/syntaxhighlighter/shBrushPHP.js', async: true },
					{ src: '../plugin/syntaxhighlighter/shBrushJScript.js', async: true, callback: function() { SyntaxHighlighter.all(); } },
					{ src: '../plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
					{ src: '../plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } }
				]
			});

		</script>

	</body>
</html>

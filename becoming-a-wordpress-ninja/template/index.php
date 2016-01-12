<?php
	require_once($_SERVER['DOCUMENT_ROOT']."/inc/functions.php");
	require_once($_SERVER['DOCUMENT_ROOT']."/inc/head.php");

?>

				<section <?php set_slide_style('bg2'); ?>>
					<h1>Dev Practice Meeting</h1>
					<h2><?php echo '<span class="green">'.$config->{'date'}.':'.$config->{'theme'}.'</span>'; ?></h2>
					<p><?php echo $config->{'description'}; ?></p>
				</section>

				<section>
					<section <?php set_slide_style('bg5'); ?>>
						<h1>News, Updates,<br>Open Topics</h1>
						
					</section>
					<section>
						<div class="layout-split">
							<div>
								<h1>News &amp; Updates</h1>
							</div>
							<div>
								<ul>
									<li>
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
							</div>
						</div>
						
					</section>
					<section>
						<h1>Open Topics</h1>
						<p>Open floor for anything that's on your mind.</p>
					</section>
				</section>

				<section>
					<section>
						<h1>Presentation</h1>
						<h2>Presenter</h2>
						<p>Synopsis</p>
					</section>
				</section>

				<section <?php set_slide_style('bg1'); ?>>
					<h1>Wrapup</h1>
					<p>Future Topics?  Talk to Kam or Xtof.</p>
				</section>


				<!--
				YO DOG THIS IS EXAMPLE CODE DON'T FORGET TO REMOVE IT OR IT WILL BE IN YOUR PRESENTATION.
				-->
				<section>
					<section>
						<h1>Text styles</h1>
						<p>The Connective DX theme provides several text styles, including various headings, heading varients, and colors.</p>
					</section>
					<section>
						<h1 class="large">h1.large</h1>
						<h1>Heading 1</h1>
						<h2>Heading 2</h2>
						<h3>Heading 3</h3>
					</section>
					<section>
						<h1>Text Colors</h1>
						<p class="green">p.green</p>
						<p class="red">p.red</p>
						<p class="teal">p.teal</p>
					</section>
					<section <?php set_slide_style('teal'); ?>>
						<h1>More Text Colors</h1>
						<p class="dark-teal">p.dark-teal</p>
						<p class="brown">p.brown</p>
					</section>
					<section>
						<h1>Bulleted List</h1>
						<ul>
							<li>An item in a list</li>
							<li>An extremely cogent point</li>
							<li>In conclusion, drivel.</li>
						</ul>
					</section>
					<section>
						<h1>Numbered List</h1>
						<ol>
							<li>An item in a list</li>
							<li>An extremely cogent point</li>
							<li>In conclusion, drivel.</li>
						</ol>
					</section>
				</section>

				<section>
					<section>
						<h1>Slide Styles</h1>
						<p>The set_slide_style function simplifies setting up the slide background.</p>
						<p>By default, slides have this (dark teal) background.</p>
					</section>

					<section <?php set_slide_style('bg1'); ?>>
						<h1>Style: bg1</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg1'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('bg2'); ?>>
						<h1>Style: bg2</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg2'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('bg3'); ?>>
						<h1>Style: bg3</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg3'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('bg4'); ?>>
						<h1>Style: bg4</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg4'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('bg5'); ?>>
						<h1>Style: bg5</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg5'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('bg6'); ?>>
						<h1>Style: bg6</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('bg6'); ?> >
						</pre>
					</section>
					<section <?php set_slide_background_image('snarkylolcat.jpg'); ?>>
						<h1>Custom background</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_background_image('snarkylolcat.jpg'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('green'); ?>>
						<h1>Style: green</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('green'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('red'); ?>>
						<h1>Style: red</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('red'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('teal'); ?>>
						<h1>Style: teal</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('teal'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('grey'); ?>>
						<h1>Style: grey</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('grey'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('brown'); ?>>
						<h1>Style: brown</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('brown'); ?> >
						</pre>
					</section>
					<section <?php set_slide_style('dark-teal'); ?>>
						<h1>Style: dark-teal</h1>
						<pre class="brush: php;">
							&lt;section &lt;?php set_slide_style('dark-teal'); ?> >
						</pre>
						<p>This is the default color, so presumably you should never need to use this style explicitly.</p>
					</section>
				</section>
				<section>
					<section>
						<h1>Layouts</h1>
						<p>Alternate layouts.  Copy the html.</p>
					</section>
					<section <?php set_slide_style('bg1'); ?>>
						<div class="layout-split">
							<div>
								<h1 class="large">Hi!</h1>
							</div>
							<div>
								<p class="teal">Thanks for meeting<br>with us today.</p>
							</div>
						</div>
					</section>
					<section <?php set_slide_style('red'); ?>>
						<div class="layout-split">
							<div>
								<h3>We are:</h3>
							</div>
							<div>
								<p>18 years old</p>
								<p>80 people strong</p>
								<p>2 Officies (Portland &amp; Boston)</p>
								<p>436 complex digital projects</p>
								<p>7 years hosting Delight</p>
								<p>5 Best Places to Work awards</p>
							</div>
						</div>
					</section>
					<section>
						<div class="layout-split">
							<div>
								<h1>Some code</h1>
							</div>
							<div>
								<pre class="brush: javascript;">function kevinTheNumberMentioner(_){
	l=[]
	with(l) {
		for (ll=!+[]+!![];ll<_+(+!![]);ll++) {
			lll=+!![];
			while(ll%++lll);
			(ll==lll)&&push(ll);
		}
		forEach(alert);
	}
	return [!+[]+!+[]+!+[]+!+[]]+[!+[]+!+[]];
}</pre>
							</div>
						</div>
					</section>
					<section <?php set_slide_style('teal'); ?>>
						<h3>Wow. Such card layout.</h3>
						<p>Uses <code>ul.cards</code></p>
						<ul class="cards">
							<li><img src="http://fillmurray.com/150/150" alt=""></li>
							<li><img src="http://placehold.it/200x80/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x65/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="https://31.media.tumblr.com/73bb2d1028a1662866c531007c58a24b/tumblr_inline_nj3t4kJmt31qknsa6.jpg" height="250" width="250"></li>
							<li><img src="http://placehold.it/200x44/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x82/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x50/4FADA5/ffffff/?text=LOGO" alt=""><div style="width:200px;">Wow text also is working!</div></li>
							<li><img src="http://placehold.it/200x98/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://place-hoff.com/228/228" alt=""></li>
							<li><img src="http://placehold.it/190x48/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placeskull.com/120/120/g"></li>
							<li><img src="http://placehold.it/220x67/4FADA5/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/99x120/4FADA5/ffffff/?text=LOGO" alt=""></li>
						</ul>
					</section>
					<section <?php set_slide_style('grey'); ?>>
						<h3>Wow. Such three-card layout.</h3>
						<p>Uses <code>ul.cards.three</code></p>
						<ul class="cards three">
							<li><img src="http://fillmurray.com/150/150" alt=""></li>
							<li><img src="http://placehold.it/200x80/8F8882/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x65/8F8882/ffffff/?text=LOGO" alt=""></li>
							<li><img src="https://31.media.tumblr.com/73bb2d1028a1662866c531007c58a24b/tumblr_inline_nj3t4kJmt31qknsa6.jpg" height="250" width="250"></li>
							<li><img src="http://placehold.it/200x44/8F8882/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x82/8F8882/ffffff/?text=LOGO" alt=""></li>
						</ul>
					</section>
					<section <?php set_slide_style('red'); ?>>
						<h3>Wow. Even four-card layout!!</h3>
						<p>Uses <code>ul.cards.four</code></p>
						<ul class="cards four">
							<li><img src="http://fillmurray.com/150/150" alt=""></li>
							<li><img src="http://placehold.it/200x80/B43829/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x65/B43829/ffffff/?text=LOGO" alt=""></li>
							<li><img src="https://31.media.tumblr.com/73bb2d1028a1662866c531007c58a24b/tumblr_inline_nj3t4kJmt31qknsa6.jpg" height="250" width="250"></li>
							<li><img src="http://placehold.it/200x44/B43829/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/200x82/B43829/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placehold.it/190x48/B43829/ffffff/?text=LOGO" alt=""></li>
							<li><img src="http://placeskull.com/120/120/g"></li>
						</ul>
					</section>
				</section>

<?php
	require_once($_SERVER['DOCUMENT_ROOT'].'/inc/foot.php');

?>
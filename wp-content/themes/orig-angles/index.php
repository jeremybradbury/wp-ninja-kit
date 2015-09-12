<!DOCTYPE html>
<html <?php language_attributes(); ?> ng-app="angles">
<head>
	<title>Angles Theme</title>
  	<?php wp_head();?>
</head>
<body>

	<div class="col-width">

		<header>
			<h1>Angles Theme</h1>
			<p>Display a list of recent posts.</p>
		</header>

		<div ng-controller="wordpress">
			<article ng-repeat="post in posts">
				<h3>{{ post.title.rendered }}</h3>
				<div ng-bind-html="trusted(post.excerpt.rendered)"></div>
			</article>
		</div>

	</div>

	<?php wp_footer();?>
</body>
</html>
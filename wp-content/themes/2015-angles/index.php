<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
  get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
      <div ng-repeat="post in data">
				<?php 
					$classes = implode(" ",array_diff(get_post_class(), array("post-".get_the_ID())));
        ?>
        <article id="post-{{post.id}}" class="post-{{post.id}} <?php echo $classes ?>">
          <?php
            // Post thumbnail.  
						// TODO: replace
            twentyfifteen_post_thumbnail();
          ?>
          
          <header class="entry-header">
            <h2 class="entry-title"><a ng-click="blur()" href="#{{post.slug}}" rel="bookmark">{{post.title}}</a></h2>
          </header><!-- .entry-header -->  
          
          <div class="entry-content">
            <article ng-bind-html="trust(post.content)"></article>
          </div><!-- .entry-content -->
          
          <footer class="entry-footer">
            <?php // TODO: replace 
							//twentyfifteen_entry_meta(); 
						?>
            <?php edit_post_link( __( 'Edit', 'twentyfifteen' ), '<span class="edit-link">', '</span>' ); ?>
          </footer><!-- .entry-footer -->
        
        </article><!-- #post-## -->
			</div> 
      <nav class="navigation pagination" role="navigation">
        <h2 class="screen-reader-text">Posts navigation</h2>
        <div class="nav-links">
            <a class="prev page-numbers" ng-click="blur()" ng-class="{disabled: p == '1' }" href="#page/{{p-1}}">Prev page</a>
            <a class="page-numbers" ng-click="blur()" ng-repeat="n in range(pages)" ng-class="{current: n == p}" href="#page/{{n}}"><span class="meta-nav screen-reader-text">Page </span>{{n}}</a>
            <a class="next page-numbers" ng-click="blur()" ng-class="{disabled: p == pages}" href="#page/{{p+1}}">Next page</a>
        </div>
    </nav>
		</main><!-- .site-main -->
	</div><!-- .content-area -->

<?php get_footer(); ?>
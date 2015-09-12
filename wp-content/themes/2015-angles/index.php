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
      <div ng-repeat="post in posts">
				<?php 
					$classes = implode(" ",array_diff(get_post_class(), array("post-".get_the_ID())));
        ?>
        <article id="post-{{post.id}}" class="post-{{post.id}} <?php echo $classes ?>">
          <?php
            // Post thumbnail.
            twentyfifteen_post_thumbnail();
          ?>
        
          <header class="entry-header">
            <?php if ( is_single() ) : ?>
                <h1 class="entry-title">{{post.title}}</h1>
            <?php	else : ?>
                <h2 class="entry-title"><a href="#{{post.slug}}" rel="bookmark">{{post.title}}</a></h2>
            <?php endif; ?>
          </header><!-- .entry-header -->
        
          <div class="entry-content">
            <article>
              <div ng-bind-html="trust(post.content)"></div>
            </article>
          </div><!-- .entry-content -->
        
          <footer class="entry-footer">
            <?php twentyfifteen_entry_meta(); ?>
            <?php edit_post_link( __( 'Edit', 'twentyfifteen' ), '<span class="edit-link">', '</span>' ); ?>
          </footer><!-- .entry-footer -->
        
        </article><!-- #post-## -->
        
			</div> 
		</main><!-- .site-main -->
	</div><!-- .content-area -->

<?php get_footer(); ?>
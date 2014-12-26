<?php
/**
 * The template for displaying Comments.
 *
 * The area of the page that contains both current comments
 * and the comment form.  The actual display of comments is
 * handled by a callback to foghorn_comment which is
 * located in the functions.php file.
 *
 * @package WordPress
 * @subpackage Foghorn
 * @since Foghorn 0.1
 */
?>

	<div id="comments">
		<div class="fb-comments" data-href="http://localhost/git/SiteGaia/blog/?p=<?php the_ID(); ?>" data-width="100%" data-numposts="5" data-colorscheme="light"></div>
	</div><!-- #comments -->
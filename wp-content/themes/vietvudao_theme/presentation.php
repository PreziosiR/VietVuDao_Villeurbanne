<?php
/**
 * Template Name: presentation
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>
  <title>Viet Vu Dao Villeurbanne</title>

</head>

<div class="container">
<?php
  $id = get_the_ID();
  $post = get_post($id);
  $content = apply_filters('the_content', $post->post_content);
  echo $content;
?></div>
<?php get_footer(); ?>
</html>

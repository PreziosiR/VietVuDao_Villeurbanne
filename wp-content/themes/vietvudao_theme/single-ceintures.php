<?php
/**
 * Template Name: ceintures
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();

$args = array(
 'post_type'   => 'ceintures',
 'post_status' => 'publish',
 'order'       => 'ASC'
);

$ceintures = new WP_Query( $args );
?>
<div class="container">
<h2 class="mt-5 text-center"><?php the_field('titre_description_ceintures'); ?></h2>
<?php
the_field('description_ceintures_noire');
//si le custom post ceintures contient des post alors on les affiches
if( $ceintures->have_posts() ) :
  ?>
    <?php
    //tant qu'il y a des champs ceintures à afficher
    while( $ceintures->have_posts() ) : $ceintures->the_post();?>
      <div class="row">
        <div class="col-lg-12 ">
          <h2 class="mt-5 text-center"><?php the_title(); ?></h2>
          <p class="lead p-custom">
            <?php the_content(); ?>
          </p>
          <!-- Si l'article ceinture possède une image -->
          <?php if(get_field('image_de_la_ceinture_noire')):
          ?>
          <!-- je vais chercher l'image de manière dynamique dans le champ image_de_larme crée sur ACF -->
          <img class="rounded mx-auto d-block img-fluid" src="<?php the_field('image_de_la_ceinture_noire'); ?>" alt="image ceintures noire">
          <?php
        endif;
          ?>
        </div>
      </div>
    <?php
    endwhile;
    ?>
  </div>
  <?php
endif;
?>
?>
  </head>

 <script src="vendor/jquery/jquery.min.js"></script>
 <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<?php get_footer(); ?>
</html>

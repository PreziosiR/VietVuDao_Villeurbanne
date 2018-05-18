<?php
/**
 * Template Name: armes
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();

//on donne les paramètre pour aller construire notre requête pour afficher les post armes qui sont actuellement publié et on les affiches de manières ascendantes ( le plus ancien en premier)
$args = array(
 'post_type'   => 'armes',
 'post_status' => 'publish',
 'order'       => 'ASC'
);

//construit une requête en BDD qui prend en paramètre args
$armes = new WP_Query( $args );
//si le custom post armes contient des post alors on les affiches
if( $armes->have_posts() ) :
  ?>
  <div class="container">
    <?php
    //tant qu'il y a des champs armes à afficher
    while( $armes->have_posts() ) : $armes->the_post();?>
      <div class="row">
        <div class="col-lg-12 ">
          <h2 class="mt-5 text-center"><?php the_title(); ?></h2>
          <p class="lead p-custom text-justify">
            <?php the_content(); ?>
          </p>
          <!-- Si l'article arme possède une image -->
          <?php if(get_field('image_de_larme')):
          ?>
          <!-- je vais chercher l'image de manière dynamique dans le champ image_de_larme crée sur ACF -->
          <img class="rounded mx-auto d-block img-fluid" src="<?php the_field('image_de_larme'); ?>" alt="image arme">
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

  <!-- Custom styles for this template -->
  <style>
    body {
      padding-top: 54px;
    }
    @media (min-width: 992px) {
      body {
        padding-top: 56px;
      }
    }

  </style>
 <?php get_footer(); ?>
</html>
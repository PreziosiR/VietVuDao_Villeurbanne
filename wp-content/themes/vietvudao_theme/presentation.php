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

</head>

<div class="container">
  <div class="row">
    <div class="col-lg-12 text-center">
      <h1 class="mt-5"><?php the_title(); ?></h1>
      <h2 class="mt-5"><?php the_field('titre_paragraphe_un'); ?></h2>
      <p class="lead p-custom text-justify">
        <?php the_field('paragraphe_un'); ?>
      </p>
      <h2 class="mt-5"><?php the_field('titre_paragraphe_deux'); ?></h2>
      <p class="lead p-custom text-justify">
        <?php the_field('paragraphe_un'); ?>
      </p>
      <p class="lead p-custom text-justify font-italic">Source: Đạo, Maître Nguyễn Công Tốt</p>
    </div>
  </div>
</div>
<?php get_footer(); ?>
</html>

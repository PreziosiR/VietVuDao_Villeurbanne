<?php
/**
 * Template Name: accueil
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>

<style type="text/css">
  #logo {
    padding-top: 25px;
  }
</style>

<!-- Page Content -->
    <div class="container">
      <div class="row">
        <div id="logo" class="col-lg-2 text-center">
          <img class="img-fluid" src="/wordpress/wp-content/uploads/2018/03/vvd-logo.png" alt="Second slide">
        </div>
        <div class="col-lg-10 text-center">
          <h1 class="mt-5">Việt vũ Đạo International / Ecole Tân-Lượng</h1>
          <p class="lead">Võ Cổ Truyền Việt Nam</p>
        </div>
      </div>
    </div>

    <!-- carrousel & calendrier -->
<div class="container">
 <div class="row">
   <div class="col-lg-9">
    <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
         <!-- ajout dynamiquement des images du carrousel via les champs
             personnalisé ACF carrousel -->
          <img class="rounded mx-auto d-block img-fluid" src="<?php the_field('image_une_carrousel'); ?>" alt="image une carrousel">
        </div>
      <div class="carousel-item">
        <img class="rounded mx-auto d-block img-fluid" src="<?php the_field('image_deux_carrousel'); ?>" alt="image deux carrousel">
      </div>
      <div class="carousel-item">
        <img class="rounded mx-auto d-block img-fluid" src="<?php the_field('image_trois_carrousel'); ?>" alt="image trois carrousel">
      </div>
    </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
 <div class="col-lg-3 border">
   <?php echo do_shortcode("[ecs-list-events]");?>
 </div>
</div>
</div>

<div class="container">
<?php
  $id = get_the_ID();
  $post = get_post($id);
  $content = apply_filters('the_content', $post->post_content);
  echo $content;
?>

<script src="https://apis.google.com/js/platform.js"></script>

<div class="g-ytsubscribe" data-channelid="UC88ezO5aKRdNuqhRK2Fd7Kg" data-layout="full" data-count="hidden"></div>

<?php get_footer(); ?>
<?php
/**
 * Template Name: contact
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>
<title>Contact</title>

<div class="container">
  <div class="col-lg-12 text-center">
    <h2 class="mt-5">Contact</h2>
  </div>
  <form>
    <div class="form-group">
      <label for="exampleInputEmail1">Adresse email</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="entrer votre message"></textarea>
    </div>
    <div class="col-lg-12 text-center">
      <button type="submit" class="btn btn-primary">Envoyer !</button>
    </div>
  </form>
</div>

</br>

<div class="container">
<?php
  $id = get_the_ID();
  $post = get_post($id);
  $content = apply_filters('the_content', $post->post_content);
  echo $content;
?>
  <!-- div de google maps -->
  <div id="map"></div>
</div>

<style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
    <script>
      function initMap() {
        var club = {lat: 45.759909 , lng: 4.882052};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: club
        });
        var marker = new google.maps.Marker({
          position: club,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBGkPeoepnEc3m2vZYXB_HpmbPcKI9gaTU&callback=initMap">
    </script>

<?php get_footer(); ?>
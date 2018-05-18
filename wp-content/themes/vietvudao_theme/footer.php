    </div> <!-- /.container -->

    <footer class="blog-footer">

    </footer>

      <?php
      wp_enqueue_script( 'bootstrap', get_stylesheet_directory_uri() . '/js/bootstrap.min.js', array( 'jquery' ), null, true );

      wp_enqueue_script( 'jquery', get_stylesheet_directory_uri() . '/jquery/jquery.min.js', array( 'jquery' ), null, true );
      ?>
    <?php wp_footer(); ?>
  </body>
</html>
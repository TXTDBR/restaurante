<?php get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <h1>
            <a href="<?php echo get_attachment_link(); ?>">
                <?php the_title(); ?>
            </a>
        </h1>
        <p><?php the_content(); ?></p>

        <?php endwhile; else : ?>
            <p><?php _e( 'Nenhum post encontrado!' ); ?></p>
        <?php endif; ?>
<?php get_footer(); ?>
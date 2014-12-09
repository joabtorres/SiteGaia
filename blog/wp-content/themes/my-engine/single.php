<?php get_header(); ?>

        <div class="content">
            <?php
                global $myThemes_layout;
                $myThemes_layout = new layout( 'single' , $post -> ID );
                
                if( have_posts() ){
                    while( have_posts() ){
                        the_post();
                        ?>
                            <div class="line title">
                                <h1><?php the_title(); ?></h1>
                            </div>
                            <div class="line">
                                <section  class="<?php echo $myThemes_layout -> contentClass(); ?> large-icons">
                                    <article <?php post_class(); ?>>
                                        <?php
                                            if( has_post_thumbnail() ){
                                        ?>
                                                <div class="thumbnail">
                                                    <?php echo get_the_post_thumbnail( $post -> ID , array( $myThemes_layout -> width , 999 ) , esc_attr( $post -> post_title ) ); ?>
                                                </div>
                                        <?php
                                            }
                                            
                                            the_content();
                                            
                                            wp_link_pages( array( 'before' => '<div><p style="color: #000000;">' . __( 'Pages', "myThemes" ) . ':', 'after' => '</p></div>' ) );
                                        ?>
                                        <div class="clear"></div>
                                    </article>
                                    
                                    <?php comments_template(); ?>
                                    
                                </section><?php    
                                    /* SIDEBAR */
                                    $myThemes_layout -> echoSidebar( );
                                ?>
                                <div class="clear"></div>
                            </div>
                        <?php
                    }
                }
                else{
                    ?>
                        <div class="line title">
                            <?php _e( 'Not found results' , 'myThemes' ); ?>
                        </div>
                        <div class="line">
                            <section  class="<?php echo $myThemes_layout -> contentClass(); ?> list-view large-icons">
                                <p><?php _e( 'We apologize but this page, post or resource does not exist or can not be found. Perhaps it is necessary to change the call method to this page, post or resource.' , 'myThemes' ); ?></p>
                            </section><?php    
                                /* SIDEBAR */
                                $myThemes_layout -> echoSidebar( );
                            ?>
                            <div class="clear"></div>
                        </div>
                    <?php
                }
            ?>
        </div>

<?php get_footer(); ?>
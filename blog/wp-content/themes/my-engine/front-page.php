<?php get_header(); ?>
    
        <div class="content">

            <?php
                $myThemes_layout = new layout( 'front-page' );
                if( get_option( 'show_on_front' ) == 'page' ){

                    $wp_query = new WP_Query( array( 'p' => get_option( 'page_on_front' ) , 'post_type' => 'page' ) );
                    
                    if( count( $wp_query -> posts ) ){
                        foreach( $wp_query -> posts as $post ){
                            
                            $wp_query -> the_post();
                            $show = meta::get( $post -> ID , 'post-title' );
                            if( strlen( $show ) == 0 ){
                                $show = 1;
                            }
                            
                            if(  $show ){ ?>
            
                                <div class="line title">
                                    <h1><?php the_title() ?></h1>
                                </div>
                        
                            <?php } ?>
            
                            <div class="line">
                                <section class="<?php echo $myThemes_layout -> contentClass(); ?> list-view large-icons">
                                    <?php the_content(); ?>
                                </section><?php

                                    /* SIDEBAR */
                                    $myThemes_layout -> echoSidebar( );
                                ?>
                            </div>
            
                        <?php } ?>
                    <?php } ?>
            
                <?php } else { ?>
            
                    <div class="line title">
                        <?php
                            if( !myThemes::get( 'blog-page' ) ){
                        ?>
                                <h1><?php echo myThemes::get( 'blog-page-label' ) ?></h1>
                        <?php
                            }
                        ?>
                    </div>
                    <div class="line">
                        
                        <section class="<?php echo $myThemes_layout -> contentClass(); ?> list-view large-icons">
                            <?php
                                if( have_posts() ){
                                    while( have_posts() ){
                                        the_post();
                                        get_template_part( 'cfg/templates/view/list-view' );
                                    }
                                }
                                else{
                                    echo '<h2>' . __( 'Not found results' , 'myThemes' ) . '</h2>';
                                    echo '<p>' . __( 'We apologize but this page, post or resource does not exist or can not be found. Perhaps it is necessary to change the call method to this page, post or resource.' , 'myThemes' ) . '</p>';
                                }

                                get_template_part( 'cfg/templates/pagination' );
                            ?>
                        </section><?php

                            /* SIDEBAR */
                            $myThemes_layout -> echoSidebar( );
                        ?>
                    </div><?php
                } 
            ?>
            <div class="clear"></div>
        </div>

<?php get_footer(); ?>
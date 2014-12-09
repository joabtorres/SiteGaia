        <div class="under-construction">        
            <div class="pos-center">
                <div class="shadow">
                    <div class="content-underconstruction">

                        <center>
                        <?php if( myThemes::get( 'logo' ) ) { ?>

                                <img class="logo" src="<?php echo myThemes::get( 'logo' ); ?>" alt="<?php bloginfo('name'); echo '-'; bloginfo('description'); ?>"/>
                            
                        <?php } else { ?>
                                
                            <h1 class="site-title"><?php bloginfo('name'); ?></h1>
                            
                        <?php } ?>
                        </center>
                        <p class="description"><?php bloginfo( 'description' ); ?></p>

                        

                        <?php if( esc_attr( myThemes::get( 'feedburner' ) ) ) { ?>

                                <form class="subscribe" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="javascript:utils.feedburner( '<?php echo esc_attr( myThemes::get( 'feedburner' ) ); ?>' );">
                                    <p>
                                        <input type="text" class="text" name="email" value="<?php esc_attr_e( 'Place your email adress here...' , "myThemes" ); ?>" onfocus="if (this.value == '<?php esc_attr_e( 'Place your email adress here...' , "myThemes" ); ?>') {this.value = '';}" onblur="if (this.value == '' ) { this.value = '<?php esc_attr_e( 'Place your email adress here...' , "myThemes" ); ?>';}"><span class="email"></span>
                                        <input type="hidden" value="<?php echo esc_attr( myThemes::get( 'feedburner' ) ); ?>" name="uri">
                                        <input type="hidden" name="loc" value="en_US">
                                        <input type="submit" class="submit" value="<?php _e( 'Subscribe' , 'myThemes' ); ?>">
                                    </p>
                                </form>

                        <?php } ?>

                        <div class="social">

                                <?php if( esc_attr( myThemes::get( 'twitter' ) ) ) { ?>
                                        <a href="<?php echo esc_attr( myThemes::get( 'twitter' ) ); ?>" title="we on twitter" class="twitter" target="_blank"></a>
                                <?php } ?>

                                <?php if( esc_url( myThemes::get( 'facebook' ) ) ) { ?>
                                        <a href="<?php echo esc_url( myThemes::get( 'facebook' ) ); ?>" title="we on facebook" class="facebook" target="_blank"></a>
                                <?php } ?>

                                <?php if( is_email( myThemes::get( 'email' ) ) ) { ?>
                                        <a href="mailto:<?php echo esc_attr( myThemes::get( 'email' ) ); ?>" title="mail to: <?php echo esc_attr( myThemes::get( 'wooden-email' ) ); ?>" class="mail"></a>
                                <?php } ?>

                                <?php if( myThemes::get( 'rss' ) ) { ?>
                                        <a href="<?php bloginfo('rss2_url'); ?>" title="subscribe rss" class="rss" target="_blank"></a>
                                <?php } ?>

                        </div>
                    </div>
                </div>
            </div>

            <div class="pos-bottom">
                <footer>
                    <div>
                        <p class="to-left"><?php echo myThemes::get( 'footer-text', true ); ?></p>
                    </div>
                    <?php echo stripslashes( myThemes::get( 'script' , true )  ); ?>
                </footer>
                <?php wp_footer(); ?>
            </div>
        </div>
    </body>
</html>
        </div>
        <footer>
            <div class="line">
                <p class="to-left"><?php echo myThemes::get( 'footer-text', true ); ?></p>

                <nav class="inline to-right my-menu">
                    <?php
                        $location = get_nav_menu_locations();
                        if( isset( $location[ 'footer' ] ) && $location[ 'footer' ] > 0 )
                            wp_nav_menu( array( 'theme_location' => 'footer' ) );
                    ?>
                </nav>
                <div class="clear"></div>
            </div>
        </footer>

        <?php wp_footer(); ?>
		
	</body>
</html>
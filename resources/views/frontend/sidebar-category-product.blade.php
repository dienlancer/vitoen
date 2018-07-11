<?php     
			$args = array(                         
				'menu_class'            => 'cateprodhorizontalright', 					                     
				'before_wrapper'        => '<div class="cate-product-horizontal-right">',
				'before_title'          => '',
				'after_title'           => '',
				'before_wrapper_ul'     =>  '',
				'after_wrapper_ul'      =>  '',
				'after_wrapper'         => '</div>'     ,
				'link_before'       	=> '<div><i class="fa fa-angle-double-right" aria-hidden="true"></i></div>', 
				'link_after'        	=> '<div><i class="fa fa-caret-down pull-right" aria-hidden="true"></i></div>',                                        
				'theme_location'        => 'main-menu' ,
				'menu_li_actived'       => 'current-menu-item',
				'menu_item_has_children'=> 'menu-item-has-children',
				'alias'                 => ''
			);                    
			wp_nav_menu($args);
			?>        
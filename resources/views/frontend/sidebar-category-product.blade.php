<?php   
$setting=getSettingSystem();
$hotline1=$setting['hotline1']['field_value'];
$hotline2=$setting['hotline2']['field_value'];
$hotline3=$setting['hotline3']['field_value'];
$cskh1=$setting['cskh1']['field_value'];
$cskh2=$setting['cskh2']['field_value'];  
$cskh3=$setting['cskh3']['field_value'];  
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
<div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
	<div><img src="<?php echo asset('upload/user-icon.png'); ?>"><span class="employee-name margin-left-5"><?php echo $cskh1; ?></span></div>
	<div class="margin-top-5">
		
		<span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
		<span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>"></span>
		<span class="margin-left-5 hotline-sidebar"><?php echo $hotline1; ?></span>								
	</div>
</div>			
<div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
	<div><img src="<?php echo asset('upload/user-icon.png'); ?>"><span class="employee-name margin-left-5"><?php echo $cskh2; ?></span></div>
	<div class="margin-top-5">		
		<span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
		<span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>"></span>
		<span class="margin-left-5 hotline-sidebar"><?php echo $hotline2; ?></span>																
	</div>
</div>
<div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
	<div><img src="<?php echo asset('upload/user-icon.png'); ?>"><span class="employee-name margin-left-5"><?php echo $cskh3; ?></span></div>
	<div class="margin-top-5">		
		<span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
		<span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>"></span>
		<span class="margin-left-5 hotline-sidebar"><?php echo $hotline3; ?></span>																
	</div>
</div>
<?php
$setting=getSettingSystem();
$seo=getSeo();
$hotline1=$setting['hotline1']['field_value'];
$hotline2=$setting['hotline2']['field_value'];
$hotline3=$setting['hotline3']['field_value'];
$cskh1=$setting['cskh1']['field_value'];
$cskh2=$setting['cskh2']['field_value'];
$cskh3=$setting['cskh3']['field_value'];
$email_to=$setting['email_to']['field_value'];
$facebook_url=$setting['facebook_url']['field_value'];
$twitter_url=$setting['twitter_url']['field_value'];
$google_plus=$setting['google_plus']['field_value'];
$youtube_url=$setting['youtube_url']['field_value'];
$instagram_url=$setting['instagram_url']['field_value'];
$pinterest_url=$setting['pinterest_url']['field_value'];   
$company=$setting['contacted_person']['field_value'];
$opened_time=$setting['opened_time']['field_value'];

$seo_title="";
if(!empty(@$title)){
	$seo_title=$title;
}else{	
	$seo_title=$seo["title"];
}

$seo_meta_keyword="";
if(!empty(@$meta_keyword)){
	$seo_meta_keyword=$meta_keyword;
}else{
	$seo_meta_keyword=$seo["meta_keyword"];
}

$seo_meta_description="";
if(!empty(@$meta_description)){
	$seo_meta_description=$meta_description;
}else{
	$seo_meta_description=$seo["meta_description"] . ' ' . $hotline1;
}


$seo_google_analytics=$seo["google_analytics"];
$seo_author=$seo["author"];
$seo_copyright=$seo["copyright"];
$seo_generator="Mã nguồn mở phát triển bởi tichtacso.com";
$seo_google_site_verification=$seo["google_site_verification"];
$seo_page_url=url('/');
$seo_favicon=asset('upload/'.$seo['favicon']);
$seo_logo_frontend=asset('upload/'.$seo['logo_frontend']);
$seo_alias="";
if(isset($alias)){
	$seo_alias=$alias;
}
$ssName="vmuser";
$arrUser =array();   
$user = Sentinel::forceCheck(); 
if(!empty($user)){                
    $arrUser = $user->toArray();    
}         
$account_link=route("frontend.index.viewAccount");  
$logout_link=route("frontend.index.getLgout"); 
$security_link=route("frontend.index.viewSecurity"); 
$invoice_link=route("frontend.index.getInvoice");
$register_member_link=route("frontend.index.register");
$cart_link=route('frontend.index.viewCart');

$ssNameCart='vmart';
$quantity=0;
$arrCart=array();
if(Session::has($ssNameCart)){    
	$arrCart = @Session::get($ssNameCart);    
}         
if(count($arrCart) > 0){
	foreach ($arrCart as $key => $value){
		$quantity+=(int)$value['product_quantity'];              
	}
}   
$og_image=asset('upload/logo-207nqbl6drioav1yj5gm.png');
if(count(@$item) > 0){
	$image=@$item['image'];
	if($image != null){
		if(isset($item['price'])){
			$og_image=get_product_thumbnail(@$image)  ;
		}else{
			$og_image=get_article_thumbnail(@$image)  ;
		}		
	}

}
$canonical='';
if(!empty(@$alias)){
	$canonical=@$alias.'.html';
}
?>
<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
<head itemscope itemtype="http://schema.org/WebSite">	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">  
	<title><?php echo $seo_title; ?></title>
	<meta name="keywords" content="<?php echo $seo_meta_keyword; ?>">
	<meta name="description" content="<?php echo $seo_meta_description; ?>">	
	<meta name="author" content="<?php echo $seo_author; ?>">
	<meta name="copyright" content="<?php echo $seo_copyright; ?>">
	<meta name="robots" content="index, archive, follow, noodp">
	<meta name="googlebot" content="index,archive,follow,noodp">
	<meta name="msnbot" content="all,index,follow">
	<meta name="generator" content="<?php echo $seo_generator; ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="google-site-verification" content="<?php echo $seo_google_site_verification; ?>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta itemprop="name" content="<?php echo @$seo_title; ?>"/>
	<link rel="canonical" href="<?php echo url(@$canonical); ?>" itemprop="url">
	<meta property="fb:app_id" content="2161101824130389" /> 
	<meta property="og:title" content="<?php echo $seo_title; ?>" itemprop="headline">
	<meta property="og:type"   content="article" /> 
	<meta property="og:description" content="<?php echo $seo_meta_description; ?>" itemprop="description">
	<meta property="og:site_name" content="<?php echo $seo_title; ?>">
	<meta property="og:url" content="<?php echo url(@$canonical); ?>" itemprop="url">
	<meta property="og:image" content="<?php echo $og_image; ?>" itemprop="thumbnailUrl">
	<!-- begin google analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $seo_google_analytics; ?>"></script>
	<script async language="javascript" type="text/javascript">
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', '<?php echo $seo_google_analytics; ?>');
	</script>
	<!-- end google analytics -->
	<link rel="shortcut icon" href="<?php echo $seo_favicon; ?>" type="image/x-icon">
	<link rel="icon" href="<?php echo $seo_favicon; ?>" type="image/x-icon">
	<script src="{{ asset('public/frontend/js/jquery-3.3.1.min.js') }}"></script>
	<script src="{{ asset('public/frontend/bootstrap/bootstrap.min.js') }}"></script>
	<script async src="{{ asset('public/frontend/jquery-ui/jquery-ui.min.js') }}"></script>
	<script  src="{{ asset('public/frontend/ddsmoothmenu/ddsmoothmenu.js') }}" ></script>
	<link rel="stylesheet" href="{{ asset('public/frontend/ddsmoothmenu/ddsmoothmenu.css') }}" />	
	<link rel="stylesheet" href="{{ asset('public/frontend/ddsmoothmenu/ddsmoothmenu-v2.css') }}" />	
	<script async src="{{ asset('public/frontend/slick/slick.min.js') }}"></script>	
	<script async src="{{ asset('public/frontend/bxslider/jquery.bxslider.min.js') }}"></script>	
	<script async src="{{ asset('public/frontend/owl-carousel-2/owl.carousel.min.js') }}"></script>
	<script async src="{{ asset('public/frontend/owl-carousel-2/owl.carousel2.thumbs.min.js') }}"></script>
	<script async src="{{ asset('public/frontend/js/jquery.elevatezoom-3.0.8.min.js') }}"></script>  
	<script async src="{{ asset('public/frontend/js/accounting.min.js') }}"></script>  
	<script async src="{{ asset('public/frontend/datatables/jquery.dataTables.min.js') }}"></script>    
	<script async src="{{ asset('public/frontend/js/table-library.js') }}"></script>    
	<script async src="{{ asset('public/frontend/modal-video/jquery-modal-video.min.js') }}"></script>
	<script async src="{{ asset('public/frontend/modal-video/modal-video.min.js') }}"></script>
	<script async src="{{asset('public/frontend/fancybox/jquery.fancybox.min.js')}}"                 ></script>
	<script  src="{{asset('public/frontend/js/spinner.js')}}"                 ></script>
	<script async src="{{ asset('public/frontend/js/custom.js') }}"></script>    	
	<!-- end custom -->
	<script type="text/javascript" language="javascript">
		ddsmoothmenu.init({
			mainmenuid: "smoothmainmenu", 
			orientation: "h", 
			classname: "ddsmoothmenu",
			contentsource: "markup" 
		});    
		$(document).ready(function(){        
			$(window).bind("scroll", function() {                        
				if ($(window).scrollTop() > 90) {					
					
				}
				else {					
					
				}
			});			
		});  
		var spinner = new Spinner();  		
	</script>	
</head>
<body>	

	<header class="header">	
		<div class="bg-social">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="social-left" itemscope itemtype="http://schema.org/Organization">
																						
							<ul class="social-icon" itemprop="url" href="<?php echo url('/'); ?>">
								<li><a itemprop="sameAs" href="<?php echo $facebook_url; ?>"><i class="fab fa-facebook-f"></i></a></li>
								<li><a itemprop="sameAs" href="javascript:void(0);"><i class="fab fa-twitter"></i></a></li>
								<li><a itemprop="sameAs" href="javascript:void(0);"><i class="fab fa-google"></i></a></li>
								<li><a itemprop="sameAs" href="javascript:void(0);"><i class="fab fa-youtube"></i></a></li>								
							</ul>
						</div>
					</div>
					<div class="col-lg-10">
						<?php     
						$args = array(                         
							'menu_class'            => 'menu-header-top',                            
							'before_wrapper'        => '<div class="healthcare">',
							'before_title'          => '',
							'after_title'           => '',
							'before_wrapper_ul'     =>  '',
							'after_wrapper_ul'      =>  '',
							'after_wrapper'         => '</div>'     ,
							'link_before'           => '', 
							'link_after'            => '',                                                                    
							'theme_location'        => 'menu-header-top' ,
							'menu_li_actived'       => 'current-menu-item',
							'menu_item_has_children'=> 'menu-item-has-children',
							'alias'                 => ''
						);                 
						wp_nav_menu($args);                          
						?>      
					</div>					
				</div>
			</div>				
		</div>
		<div class="header-logo-search">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<center>
							<a href="<?php echo url('/'); ?>">                
								<img src="<?php echo $seo_logo_frontend;?>" alt='<?php echo @$seo["alt_logo"]; ?>' />
							</a> 
						</center>	
					</div>
					<?php 
					$data_category_product=App\CategoryProductModel::select('id','fullname','parent_id')->orderby('sort_order','asc')->get()->toArray();
					$source_category_product_recursive=array();
					function loadCategoryProductRecursive($data ,$parent=null,$str="--",&$source_recursive){
						foreach ($data as $key => $val) {    
							$id=$val["id"];
							$fullname=$val["fullname"];  
							$parent_id=$val["parent_id"];    
							if((int)@$val["parent_id"] == (int)@$parent) {          
								$source_recursive[$key]["id"]=$id;
								$source_recursive[$key]["fullname"]=$str . $fullname;              
								$source_recursive[$key]["parent_id"]=$parent_id;                  
								loadCategoryProductRecursive($data,$id,$str."--------",$source_recursive);
							}
						}  
					}
					loadCategoryProductRecursive($data_category_product ,0,"",$source_category_product_recursive)   ; 	
					$ddlCategoryProduct      =   cmsSelectboxCategory("category_id","category-prd-ddl",$source_category_product_recursive,(int)@$category_id,"",'Chọn danh mục');				
					?>
					<div class="col-lg-7">
						<div class="ruden">
							<form action="<?php echo route('frontend.index.search'); ?>" method="POST" name="frm-search">
								{{ csrf_field() }}
								<div class="searching-header" >
									<div class="radas">
										<?php echo $ddlCategoryProduct; ?>
									</div>
									<div class="radan"><input type="text" name="q" autocomplete="off" placeholder="Tìm kiếm sản phẩm" value="<?php echo @$q; ?>"></div>
									<div>
										<a href="javascript:void(0);" onclick="document.forms['frm-search'].submit();"><i class="fas fa-search"></i></a>	
									</div>
								</div>							
							</form>												
							<div class="timex canai">
								<center><a href="<?php echo route('frontend.index.viewCart'); ?>"><img src="<?php echo asset('/upload/icon-cart.png'); ?>"></a></center>	
								<?php 
								$ssName="vmart";
								$arrCart=array();
								$display='';
								$total_quantity=0;
								if(Session::has($ssName)){
									$arrCart=Session::get($ssName);  
									ksort($arrCart);  
								}
								if(count($arrCart) > 0){
									$display='block';
									foreach ($arrCart as $key => $value){
										$total_quantity+=(int)$value['product_quantity'];              
									}
								}else{
									$display='none';
								}   
								?>								
								<div class="samadu" style="display: <?php echo $display; ?>">
									<?php echo $total_quantity; ?>
								</div>
							</div>															
						</div>						
					</div>	
					<div class="col-lg-3">
						<div class="hotline-alen">
							<div class="row">
								<div class="col-xs-6"><div class="hotline-top"><?php echo $cskh1; ?></div></div>
								<div class="col-xs-6"><div class="hotline-top-2"><a href="tel:<?php echo $hotline1; ?>"><?php echo $hotline1; ?></a></div></div>
							</div>
							<div class="row">
								<div class="col-xs-6"><div class="hotline-top"><?php echo $cskh2; ?></div></div>
								<div class="col-xs-6"><div class="hotline-top-2"><a href="tel:<?php echo $hotline2 ?>"><?php echo $hotline2; ?></a></div></div>
							</div>
							<div class="row">
								<div class="col-xs-6"><div class="hotline-top"><?php echo $cskh3; ?></div></div>
								<div class="col-xs-6"><div class="hotline-top-2"><a href="tel:<?php echo $hotline2 ?>"><?php echo $hotline3; ?></a></div></div>
							</div>	
						</div>																
					</div>				
				</div>
			</div>
		</div>	
		<div class="bg-blue">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="canon">
                            <div class="cata">
                                <i><span></span><span></span><span></span></i>
                            </div>
                            <div class="margin-left-15"><b>Danh mục sản phẩm</b></div>                      
                        </div>
					</div>
					<div class="col-lg-9"></div>
				</div>
			</div>
		</div>	
		<div class="mobilemenu">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>                   
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<?php     
						$args = array(                         
							'menu_class'            => 'nav navbar-nav',                            
							'before_wrapper'        => '',
							'before_title'          => '',
							'after_title'           => '',
							'before_wrapper_ul'     =>  '',
							'after_wrapper_ul'      =>  '',
							'after_wrapper'         => ''     ,
							'link_before'           => '', 
							'link_after'            => '',                                                                    
							'theme_location'        => 'main-menu' ,
							'menu_li_actived'       => 'current-menu-item',
							'menu_item_has_children'=> 'menu-item-has-children',
							'alias'                 => ''
						);                 
						wp_nav_menu($args);                          
						?>             
					</div>
				</div>
			</nav>
		</div>
									
	</header>
@yield("content")
@include("frontend.footer")
<!--<link  rel="stylesheet" href="{{ asset('public/frontend/bootstrap/bootstrap.min.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/jquery-ui/jquery-ui.css') }}" />
<link  rel="stylesheet" href="{{ asset('public/frontend/fontawesome/css/all.min.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/slick/slick.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/slick/slick-theme.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/css/tab.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/bxslider/jquery.bxslider.min.css') }}" />  
<link rel="stylesheet" href="{{ asset('public/frontend/owl-carousel-2/owl.carousel.min.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/owl-carousel-2/owl.theme.min.css') }}" /> 
<link rel="stylesheet" href="{{ asset('public/frontend/owl-carousel-2/themes.css') }}" />  
<link rel="stylesheet" href="{{ asset('public/frontend/css/product.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/datatables/jquery.dataTables.min.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/modal-video/modal-video.min.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/css/alo-phone.css') }}" />
<link href="{{asset('public/frontend/fancybox/jquery.fancybox.min.css')}}" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="{{ asset('public/frontend/css/menu-horizontal-right.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/css/menu-horizontal-right-dmsp.css') }}" />
<link rel="stylesheet" href="{{ asset('public/frontend/css/template.css') }}" />-->
<link rel="stylesheet" href="{{ asset('public/frontend/css/main.css') }}" />
<!--Start of Tawk.to Script-->
<script type="text/javascript" async >
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5b4596744af8e57442dc8525/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<!-- begin fanpage -->
	<div id="fb-root"></div>
	<script type="text/javascript" >(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=206740246563578';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<!-- end fanpage -->	
</body>

</html>




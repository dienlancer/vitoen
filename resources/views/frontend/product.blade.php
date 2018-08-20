<?php 
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
$seo=getSeo();

$id=$item["id"];
$fullname = $item["fullname"];
$alias=$item["alias"];
$permalink=route('frontend.index.index',[$alias]);

$intro=$item["intro"];
$detail=$item['detail'];
$technical_detail=$item['technical_detail'];  
$video_id=$item['video_id'];
$small_img=get_product_thumbnail($item['image']);
$large_img=asset('upload/'.$item['image']) ;
/* begin cập nhật count view */
$count_view=(int)@$item['count_view'];
$count_view++;
$row                =   App\ProductModel::find((int)@$id); 
$row->count_view=$count_view;
$row->save();
$count_view_text=number_format($count_view,0,",",".");
/* end cập nhật count view */
/* begin setting */
$address=$setting['address']['field_value'];
$email_to=$setting['email_to']['field_value'];
$contacted_person=$setting['contacted_person']['field_value'];
$hotline1=$setting['hotline1']['field_value'];

$product_width = $setting['product_width']['field_value'];
$product_height = $setting['product_height']['field_value'];
/* end setting */       
$arrPicture=json_decode($item['child_image']);
$arrPicture[]=$item['image'];   
$dataCategory=App\CategoryProductModel::find((int)@$item['category_id'])->toArray();   
$breadcrumb= getBreadCrumbCategoryProduct($dataCategory);   
$manufacturer='';
?>        
<div class="breadcrumb-title margin-top-5">
    <ul itemscope itemtype="http://schema.org/BreadcrumbList" class="ul-breadcrumb" >
        <?php echo $breadcrumb; ?>
    </ul>       
</div>    
<div class="row">
    <div class="col-lg-3">
        <div class="margin-top-15">
            <div class="pdetail-chipu">
                <div class="image-detail"><img alt="<?php echo @$item['alt_image']; ?>" class="zoom_img" src="<?php echo $small_img; ?>" data-zoom-image="<?php echo $large_img; ?>" /></div>
            </div>                    
        </div>
        <?php 
        if(count($arrPicture) > 0){
            ?>
            <div class="margin-top-5">      
                <script type="text/javascript" language="javascript" async>
                    $(document).ready(function(){
                        $(".prodetail").owlCarousel({
                            autoplay:true,                    
                            loop:true,
                            margin:2,                        
                            nav:false,            
                            mouseDrag: true,
                            touchDrag: true,                                
                            responsiveClass:true,
                            responsive:{
                                0:{
                                    items:1
                                },
                                600:{
                                    items:1
                                },
                                1000:{
                                    items:3
                                }
                            }
                        });
                        var chevron_left='<i class="fa fa-chevron-left"></i>';
                        var chevron_right='<i class="fa fa-chevron-right"></i>';
                        $("div.prodetail div.owl-prev").html(chevron_left);
                        $("div.prodetail div.owl-next").html(chevron_right);
                    });                
                </script>          
                <div class="owl-carousel prodetail owl-theme">
                    <?php 
                    for($i=0;$i<count($arrPicture);$i++){                                            
                        $small_thumbnail=asset('/upload/'.$product_width.'x'.$product_height.'-'.$arrPicture[$i]);    
                        $large_thumbnail=asset('/upload/'.$arrPicture[$i]);                            
                        ?>
                        <div class="pdetail-chipu">                                 
                            <a href="javascript:void(0)" onclick="changeImage('<?php echo $small_thumbnail; ?>','<?php echo $large_thumbnail; ?>');"><img  src="<?php echo $small_thumbnail; ?>" width="<?php echo (int)$product_width/5; ?>" /></a>                                                                            
                        </div>
                        <?php                                    
                    }                           
                    ?>        
                </div>
            </div>
            <?php
        }
        ?>                
    </div>
    <div class="col-lg-9">
        <h1 class="margin-top-15 product-detail-title">
            <?php echo $title; ?>
        </h1>
        <span style="display: none;"><?php echo  @$item['code']; ?></span>
        <div class="margin-top-5">
            <b>Lượt xem:</b>&nbsp;<?php echo $count_view; ?>
        </div>
        <hr class="product-ngang" />
        <div class="margin-top-5">
            <?php                 
            $price=$item['price'];   
            $sale_price=$item['sale_price'];               
            $html_price='';                                         
            if((int)@$price == 0 && (int)@$sale_price == 0){              
                $html_price='<span class="price-on price-on-detail" >Giá : Liên hệ</span>' ;                                            
            }else{                              
                if((int)@$sale_price == 0){
                    $html_price='<span class="price-on price-on-detail" >'.fnPrice($price).'</span>'  ;                            
                }else{
                    $html_price='<div><span class="price-off">'.fnPrice($price).'</span></div>';
                    $html_price.='<div><span class="price-on price-on-detail" >'.fnPrice($sale_price).'</span></div>';                            
                }                               
            }     
            echo $html_price;  
            ?>                                
        </div>                
        <div class="box-product-param">
            <?php 
            $query=\DB::table('category_param');
            $query->where('alias','<>','mau')->where('alias','<>','kich-thuoc')->where('parent_id','=',0);
            $father_data=$query->select('category_param.id','category_param.fullname','category_param.alias')
            ->groupBy('category_param.id','category_param.fullname','category_param.alias')
            ->orderBy('category_param.sort_order', 'asc')
            ->get()
            ->toArray();    
            $father_data=convertToArray($father_data);                  
            if(count($father_data) > 0){
                foreach ($father_data as $father_key => $father_value) {
                    $father_id=$father_value['id'];     
                    $father_alias=$father_value['alias'];
                    $father_fullname=$father_value['fullname'];                            
                    $children_data=App\CategoryParamModel::whereRaw('parent_id = ?',[(int)@$father_id])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();                       
                    $arr_id=array();
                    if(count($children_data) > 0){
                        foreach ($children_data as $child_key => $child_value){
                            $arr_id[]=(int)@$child_value['id'];
                        }
                        $data_post_param=DB::table('post_param')
                        ->whereIn('post_param.param_id',$arr_id)
                        ->where('post_param.post_id',(int)@$id)
                        ->select('id')
                        ->get()
                        ->toArray();
                        if(count($data_post_param) > 0){                                    
                            ?>
                            <div class="padding-top-10">
                                <div class="col-sm-3">
                                    <b><?php echo $father_fullname; ?></b>                                                                                 
                                </div>
                                <div class="col-sm-9">
                                    <?php                                             
                                    foreach ($children_data as $child_key => $child_value) {
                                        $data_post_param_2=App\PostParamModel::whereRaw('post_id = ? and param_id = ?',[(int)@$id,(int)@$child_value['id']])->select('id')->get()->toArray();
                                        if(count($data_post_param_2) > 0){
                                            if($father_alias == 'thuong-hieu'){
                                                $manufacturer=@$child_value['fullname'];
                                            }
                                            ?>
                                            <div class="block-text">
                                                <?php echo $child_value['fullname'];?>
                                            </div>
                                            <?php
                                        }
                                    }                                            
                                    ?>
                                </div> 
                                <div class="clr"></div>                 
                            </div>
                            <?php
                        }
                    }                            
                }                        
            }   
            ?>                

            <?php 
            $father_data=App\CategoryParamModel::whereRaw('alias = ?',['mau'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
            if(count($father_data) > 0){
                $children_data=App\CategoryParamModel::whereRaw('parent_id = ?',[(int)@$father_data[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                $arr_id=array();
                if(count($children_data) > 0){
                    foreach ($children_data as $child_key => $child_value){
                        $arr_id[]=(int)@$child_value['id'];
                    }
                    $data_post_param=DB::table('post_param')
                    ->whereIn('post_param.param_id',$arr_id)
                    ->where('post_param.post_id',(int)@$id)
                    ->select('id')
                    ->get()
                    ->toArray();
                    if(count($data_post_param) > 0){ 
                        ?>
                        <div class="margin-top-10">
                            <div class="col-sm-3"><b>Màu</b></div>
                            <div class="col-sm-9">
                                <?php 
                                foreach ($children_data as $child_key => $child_value) {
                                    $data_post_param_2=App\PostParamModel::whereRaw('post_id = ? and param_id = ?',[(int)@$id,(int)@$child_value['id']])->select('id')->get()->toArray();
                                    if(count($data_post_param_2) > 0){
                                        ?><div class="block-color" style="background: <?php echo $child_value['param_value']; ?>"></div><?php
                                    }
                                }
                                ?>
                            </div> 
                            <div class="clr"></div>                 
                        </div>
                        <?php
                    }
                }
                ?>                  
                <?php
            }
            ?>                

            <?php 
            $father_data=App\CategoryParamModel::whereRaw('alias = ?',['kich-thuoc'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
            if(count($father_data) > 0){
                $children_data=App\CategoryParamModel::whereRaw('parent_id = ?',[(int)@$father_data[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                $arr_id=array();
                if(count($children_data) > 0){
                    foreach ($children_data as $child_key => $child_value){
                        $arr_id[]=(int)@$child_value['id'];
                    }
                    $data_post_param=DB::table('post_param')
                    ->whereIn('post_param.param_id',$arr_id)
                    ->where('post_param.post_id',(int)@$id)
                    ->select('id')
                    ->get()
                    ->toArray();
                    if(count($data_post_param) > 0){
                        ?>
                        <div class="margin-top-10">
                            <div class="col-sm-3"><b>Kích thước</b></div>
                            <div class="col-sm-9">
                                <?php 
                                foreach ($children_data as $child_key => $child_value) {
                                    $data_post_param_2=App\PostParamModel::whereRaw('post_id = ? and param_id = ?',[(int)@$id,(int)@$child_value['id']])->select('id')->get()->toArray();
                                    if(count($data_post_param_2) > 0){
                                        ?><div class="block-size"><?php echo $child_value['fullname']; ?></div><?php
                                    }
                                }
                                ?>
                            </div> 
                            <div class="clr"></div>                 
                        </div>
                        <?php
                    }
                }
                ?>                  
                <?php
            }
            ?>                

        </div>   
        <div class="margin-top-15">
            <?php 
            if((int)@$price > 0){
                ?>
                <form name="frm-product-detail"  method="POST" enctype="multipart/form-data" action="<?php echo route('frontend.index.addToCart'); ?>">
                    {{ csrf_field() }}
                    <input type="hidden" name="id" value="<?php echo @$item['id']; ?>">
                    <a href="javascript:void(0);"  onclick="document.forms['frm-product-detail'].submit();" class="add-to-cart"><i class="fas fa-shopping-cart"></i><span class="margin-left-15">Mua ngay</span>
                    </a> 
                </form>                    
                <?php 
            }else{
                ?>
                <a href="<?php echo url('lien-he'); ?>" class="add-to-cart"><i class="fas fa-shopping-cart"></i><span class="margin-left-15">Liên hệ</span>
                </a>  
                <?php
            }
            ?>                                    
        </div>                                  
    </div>
</div>                
<div class="margin-top-15 navajava">
    <div class="tab">
        <button class="tablinks h-title" onclick="openCity(event, 'thong-tin')">Thông tin</button>
        <button class="tablinks h-title" onclick="openCity(event, 'technical')">Thông số kỹ thuật</button>               
        <button class="tablinks h-title" onclick="openCity(event, 'video')">Video</button>
        <button class="tablinks h-title" onclick="openCity(event, 'comments')">Bình luận</button>                                         
    </div>
    <div id="thong-tin" class="tabcontent">
        <div class="margin-top-15" >
            <?php echo $detail;               ?>                   
        </div>
    </div>
    <div id="technical" class="tabcontent">
        <div class="margin-top-15">
            <?php
            if(!empty($technical_detail)){
                echo $technical_detail; 
            }                 
            ?>
        </div>
    </div>          
    <div id="video" class="tabcontent">
        <div class="margin-top-15">
            <?php 
            if(!empty($video_id)){
                ?>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $video_id; ?>?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <?php 
            }
            ?>
        </div> 
    </div>                
    <div id="comments" class="tabcontent">
        <div class="margin-top-15">
            <div class="fb-comments" data-href="<?php echo $permalink; ?>" data-numposts="10"></div>
        </div>
    </div>           
</div>   
<div class="clr"></div>     
<?php              
$category_id=$item['category_id'];               
$dataProduct=DB::table('product')                        
->select('product.id','product.alias','product.fullname','product.image','product.alt_image','product.intro','product.price','product.sale_off','product.sale_price')
->where('product.category_id', (int)@$category_id)
->where('product.id','<>',(int)@$id)
->where('product.status',1)       
->groupBy('product.id','product.alias','product.fullname','product.image','product.alt_image','product.intro','product.price','product.sale_off','product.sale_price')
->orderBy('product.created_at', 'desc')                
->get()
->toArray();         
$dataProduct=convertToArray($dataProduct);   
if(count($dataProduct) > 0){            
   ?>
   <div class="margin-top-15 product-detail-content">
      Sản phẩm liên quan
  </div> 
  <div class="margin-top-15">
      <script type="text/javascript" language="javascript">
         $(document).ready(function(){
            $(".productdetail").owlCarousel({
               autoplay:true,                    
               loop:false,
               margin:0,                        
               nav:false,            
               mouseDrag: true,
               touchDrag: true,                                
               responsiveClass:true,
               responsive:{
                0:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:4
                }
            }
        });
            var chevron_left='<i class="fa fa-chevron-left"></i>';
            var chevron_right='<i class="fa fa-chevron-right"></i>';
        });                
    </script>
    <div class="owl-carousel productdetail owl-theme">
     <?php 
     foreach($dataProduct as $key => $value){
        $pdetail_id=$value['id'];
        $pdetail_alias=$value['alias'];
        $pdetail_name=$value['fullname'];                       
        $pdetail_permalink=route('frontend.index.index',[$pdetail_alias]) ;
        $pdetail_img =get_product_thumbnail($value['image']) ;  
        $product_price=$value['price']; 
        $product_sale_price=$value['sale_price'];                           
        $html_price='';                     
        if((int)@$product_price == 0 && (int)@$product_sale_price == 0){              
            $html_price='<span class="price-on">Giá : Liên hệ</span>' ;

        }else{                              
            if((int)@$product_sale_price == 0){
                $html_price='<span class="price-on">'.fnPrice($product_price).'</span>'  ;
            }else{
                $html_price='<div><span class="price-off">'.fnPrice($product_price).'</span></div>';
                $html_price.='<div><span class="price-on">'.fnPrice($product_sale_price).'</span></div>';
            }                               
        }         
        ?>
        <div class="box-product-master margin-top-10">
            <div class="box-product-img canai">
                <center><a href="<?php echo $pdetail_permalink; ?>"><img src="<?php echo $pdetail_img; ?>" alt="<?php echo @$value['alt_image']; ?>"></a></center>
                <?php 
                if((int)@$value['sale_off'] > 0){
                    ?>
                    <div class="pricetag">
                        <div class="canai">
                            <img src="<?php echo asset('upload/pricetag.png'); ?>" >
                            <div class="riman">-<?php echo @$value['sale_off']; ?>%</div>                                       
                        </div>                                      
                    </div>
                    <?php
                }
                ?>      
            </div>
            <h3 class="box-product-intro-title"><center><a href="<?php echo $pdetail_permalink; ?>"><b><?php echo $pdetail_name; ?></b></a></center></h3>
            <?php 
            /* begin thương hiệu */     
            $trademark='';
            $father_data=App\CategoryParamModel::whereRaw('alias = ?',['thuong-hieu'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
            if(count($father_data) > 0){
                $children_data=App\CategoryParamModel::whereRaw('parent_id = ?',[(int)@$father_data[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                $arr_id=array();
                if(count($children_data) > 0){
                    foreach ($children_data as $child_key => $child_value){
                        $arr_id[]=(int)@$child_value['id'];
                    }                                       
                    $data_category_param=DB::table('category_param')
                    ->join('post_param','category_param.id','=','post_param.param_id')
                    ->whereIn('post_param.param_id',@$arr_id)
                    ->where('post_param.post_id',(int)@$pdetail_id)
                    ->select('category_param.id','category_param.fullname')
                    ->get()
                    ->toArray();                                        
                    ?>
                    <div class="trademark">
                        <center>
                            <span>Thương hiệu:&nbsp;</span>
                            <span>
                                <font color="#333333">
                                    <?php 
                                    if(count($data_category_param) > 0){
                                        $data_category_param=convertToArray($data_category_param);
                                        $trademark=$data_category_param[0]['fullname'];                                 
                                        echo $trademark;                
                                    } else{
                                        echo 'Đang cập nhật';
                                    }                                                               
                                    ?>                                          
                                </font>
                            </span>
                        </center>                                       
                    </div>
                    <?php                                                                               
                }
            }
            /* end thương hiệu */       
            ?>                                  
            <div class="box-product-price">
                <?php echo $html_price; ?>
            </div>
        </div>
        <?php
    }
    ?>
</div>
</div>
<?php                     
}
?>
<script language="javascript" type="text/javascript" >
    $('.zoom_img').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 750
    });
    function changeImage(small_thumbnail,large_thumbnail){    
        var image_detail=$(".image-detail");
        var imghtml='<img class="zoom_img" src="'+small_thumbnail+'" data-zoom-image="'+large_thumbnail+'">';        
        $(image_detail).empty();
        $(image_detail).append(imghtml);
        $('.zoom_img').elevateZoom({
            zoomType: "inner",
            cursor: "crosshair",
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 750
        });
    }    
    function addToCart(){        
        var id=$('form[name="frm-product-detail"]').find('input[name="id"]').val();             
        var token =$('form[name="frm-product-detail"]').find('input[name="_token"]').val();             
        var quantity = 1;
        var dataItem={
            "id":id,            
            "quantity":quantity,
            "_token": token
        };
        $.ajax({
            url: '<?php echo route("frontend.index.addToCart"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {             
                var thong_bao='Sản phẩm đã được thêm vào <a href="'+data.permalink+'">giỏ hàng</a>';                       
                $(".modal-add-cart .modal-body").empty();              
                $(".modal-add-cart .modal-body").append(thong_bao);
                $('.samadu').show();
                $('.samadu').empty();
                $('.samadu').append(data.quantity);                
            },
            error : function (data){

            },
            beforeSend  : function(jqXHR,setting){

            },
        });
    }   
    function openCity(evt, cityName) {    
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }   
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }   
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
    $(document).ready(function(){
        $("#thong-tin").show();
        $("div.tab > button.tablinks:first-child").addClass('active');
    });     
</script>  
<script type="application/ld+json">
    {
      "@context": "http://schema.org/",
      "@type": "Product",
      "name": "<?php echo @$item['fullname']; ?>",
      "image": "<?php echo @$small_img; ?>",
      "description": "<?php echo @$intro; ?>",
      "mpn": "<?php echo @$item['code']; ?>",
      "brand": {
      "@type": "Thing",
      "name": "<?php echo @$manufacturer; ?>"
  },
  "aggregateRating": {
  "@type": "AggregateRating",
  "ratingValue": "4.4",
  "reviewCount": "<?php echo @$count_view; ?>"
},
"offers": {
"@type": "Offer",
"priceCurrency": "VND",
<?php 
$itemprop_price=0;
if((int)@$item['price'] > 0 || (int)@$item['sale_price'] > 0){
    if((int)@$item['sale_price'] == 0){
        $itemprop_price=(int)@$item['price'];
    }else{
        $itemprop_price=(int)@$item['sale_price'];
    }
    ?>
    "price": "<?php echo $itemprop_price; ?>",
    <?php
}
?>        
"itemCondition": "http://schema.org/UsedCondition",
"availability": "http://schema.org/InStock",
"seller": {
"@type": "Organization",
"name": "<?php echo @$seo['title']; ?>"
}
}
}
</script>



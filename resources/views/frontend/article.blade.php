<?php 
use App\ArticleCategoryModel;
use App\ArticleModel;
use Illuminate\Support\Facades\DB;
$seo=getSeo();
$seo_logo_frontend=asset('upload/'.$seo['logo_frontend']);
$id=$item["id"];
$fullname = $item["fullname"];
$intro=$item["intro"];
$content=$item['content'];	
/* begin cập nhật count view */
$count_view=(int)@$item['count_view'];
$count_view++;
$row				=	ArticleModel::find((int)@$id); 
$row->count_view=$count_view;
$row->save();
$count_view_text=number_format($count_view,0,",",".");
/* end cập nhật count view */
$source_category=DB::table('article_category')
->join('category_article','article_category.category_id','=','category_article.id')		
->select('category_article.id','category_article.fullname','category_article.alias')
->where('article_category.article_id','=',(int)@$id)					
->groupBy('category_article.id','category_article.fullname','category_article.alias')
->orderBy('category_article.sort_order','asc')
->get()->toArray();
$arr_category_id=array();
$data_category=array();
if(count($source_category) > 0){		
	$data_category=convertToArray($source_category);
	foreach ($data_category as $key => $value) {
		$arr_category_id[]=$value["id"];		
	}
	if(count($data_category) == 1){		
		?>
		<div class="breadcrumb-title margin-top-5">
			<ul itemscope itemtype="http://schema.org/BreadcrumbList" class="ul-breadcrumb">
				<li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem"><a itemscope="" itemtype="http://schema.org/Thing" itemprop="item" href="https://www.vitoen.com"><span itemprop="name">Trang chủ</span></a><meta itemprop="position" content="1"></li>
				<li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem"><a itemscope="" itemtype="http://schema.org/Thing" itemprop="item" href="<?php echo route('frontend.index.index',[@$data_category[0]['alias']]); ?>"><span itemprop="name"><?php echo @$data_category[0]['fullname']; ?></span></a>
					<meta itemprop="position" content="2">
				</li>				
			</ul>		
		</div>
		<?php
	}			
}				
?>	
<div class="margin-top-5 box-article">	
	<h1 class="tieu-de-bai-viet">
		<?php echo $title; ?>		
	</h1>
	<div class="margin-top-15">		
		<span class="post-view">
			<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text ?>&nbsp;Lượt xem
		</span>
	</div>	
	<hr class="duong-ngang" />		
	<div class="margin-top-15">
		<?php echo $content; ?>
	</div>	
	<hr class="duong-ngang" />
	<?php 					
	if(count($arr_category_id) > 0){						
		$data=DB::table('article')
		->join('article_category','article.id','=','article_category.article_id')                			
		->select('article.id','article.alias','article.fullname')
		->whereIn('article_category.category_id', $arr_category_id)
		->where('article.id','<>',(int)@$id)
		->where('article.status','=',1)
		->groupBy('article.id','article.alias','article.fullname')
		->orderBy('article.created_at', 'desc')
		->take(6)
		->get()->toArray();
		$data=convertToArray($data);            
		?>
		<div class="margin-top-10">
			<div class="related-news">
				<b>Tin liên quan :</b>
			</div>
			<div class="related-news-right">
				<ul class="related-articles">
					<?php 
					foreach ($data as $key => $value) {
						$related_article_fullname=$value["fullname"];
						$related_article_alias=$value['alias'];
						$related_article_permalink=route('frontend.index.index',[$related_article_alias]) ;
						?>
						<li><a href="<?php echo $related_article_permalink; ?>"><?php echo $related_article_fullname; ?></a></li>
						<?php
					}
					?>					
				</ul>
			</div>	
			<div class="clr"></div>			
		</div>	
		<?php				
	}
	?>	
</div>
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "NewsArticle",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://google.com/article"
  },
  "headline": "Article headline",
  "image": "<?php echo asset('upload/'.@$item['image']); ?>",
  "datePublished": "<?php echo @$item['created_at']; ?>",
  "dateModified": "<?php echo @$item['updated_at']; ?>",
  "author": {
    "@type": "Person",
    "name": "Administrator"
  },
   "publisher": {
    "@type": "Organization",
    "name": "Google",
    "logo": {
      "@type": "ImageObject",
      "url": "<?php echo $seo_logo_frontend; ?>"
    }
  },
  "description": "<?php echo @$intro; ?>"
}
</script>


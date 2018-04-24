<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model {
	protected $table 		=	"product";
	protected $fillable		=	["id","code","fullname","alias","meta_keyword","meta_description","image","status","child_image","price","sale_price","intro","detail","technical_detail","video_id","count_view","category_id","sort_order","created_at","updated_at"];		
}

<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class InvoiceModel extends Model {

	protected $table="invoice";
	protected $fillable=["code","email","fullname","address","phone","note","quantity","total_price","payment_method_id","status","created_at","updated_at"];		
}

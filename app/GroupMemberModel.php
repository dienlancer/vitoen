<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class GroupMemberModel extends Model {

	protected $table="group_member";
	protected $fillable=["fullname","alias","sort_order","created_at","updated_at"];		
}

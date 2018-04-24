@extends("adminsystem.master")
@section("content")
<?php 
$linkGetPageList		=	route('adminsystem.'.$controller.'.getPageList');
$inputFilterSearch 		=	'<input type="text" class="form-control" name="filter_search"          value="">';
$inputMenuTypeId 		=	'<input type="hidden" class="form-control" id="menu_type_id" name="menu_type_id"          value="'.@$menu_type_id.'">';
?>
<form class="form-horizontal" role="form" name="frm">	
	{{ csrf_field() }}		
	<?php echo $inputMenuTypeId; ?>
	<div class="portlet light bordered">
		<div class="portlet-title">
			<div class="alert alert-success" id="alert" style="display: none">
				<strong>Success!</strong> 
			</div>
			<div class="caption font-dark">
				<i class="{{$icon}}"></i>
				<span class="caption-subject bold uppercase">{{$title}}</span>
			</div>     
		</div>
		<div class="row">                    
                <div class="col-md-8">
                    <div><b>Bài viết</b>  </div>
                    <div><?php echo $inputFilterSearch; ?></div>
                </div>            
                <div class="col-md-4">
                    <div>&nbsp;</div>
                    <div>
                        <button type="button" class="btn dark btn-outline sbold uppercase btn-product" onclick="getList();">Tìm kiếm</button>                                         
                    </div>                
                </div>                
        </div>   
		<div class="portlet-body">		
			<table class="table table-striped table-bordered table-hover table-checkable order-column" id="tbl-page-component">
				<thead>
					<tr>	
                        
						<th>Bài viết</th>						
						<th width="1%">Hình</th>
						<th width="1%">Sắp xếp</th>              
					</tr>
				</thead>
				<tbody>                                                
				</tbody>
			</table>
		</div>
	</div>	
</form>
<script type="text/javascript" language="javascript">	
    
	function getList() {    
        var token = $('form[name="frm"] input[name="_token"]').val();         
        var filter_search=$('form[name="frm"] input[name="filter_search"]').val();
        var menu_type_id = $('form[name="frm"] input[name="menu_type_id"]').val(); 
        var dataItem={            
            '_token': token,
            'filter_search':filter_search,            
            'menu_type_id':menu_type_id            
        };
        $.ajax({
            url: '<?php echo $linkGetPageList; ?>',
            type: 'POST', 
            data: dataItem,
            success: function (data, status, jqXHR) {       
            	vPageComponentTable.clear().draw();                                   
                vPageComponentTable.rows.add(data).draw();
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
        });
    }   
    $(document).ready(function(){
        vPageComponentTable.clear().draw();  
        getList();      
    });   
</script>
@endsection()         

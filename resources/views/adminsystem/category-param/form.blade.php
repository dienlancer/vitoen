@extends("adminsystem.master")
@section("content")
<?php 
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');
$linkCreateAlias        =   route('adminsystem.'.$controller.'.createAlias');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"   onblur="createAlias()"     value="'.@$arrRowData['fullname'].'">'; 
$inputAlias             =   '<input type="text" class="form-control" name="alias"     disabled     value="'.@$arrRowData['alias'].'">';
 
$inputParamValue         =   '<input type="text" class="form-control" name="param_value"    value="'.@$arrRowData['param_value'].'">';
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"    value="'.@$arrRowData['sort_order'].'">';
$status                 =   (count($arrRowData) > 0) ? @$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");
$parent_id              =   (count($arrRowData) > 0) ? @$arrRowData['parent_id'] : null ; 
$ddlCategoryArticle     =   cmsSelectboxCategory('category_id', 'form-control', $arrCategoryRecursive, $parent_id,"",'Chọn danh mục');
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id" value="'.@$id.'" />'; 
?>
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="note"  style="display: none;"></div>
        <div class="caption">
            <i class="{{$icon}}"></i>
            <span class="caption-subject font-dark sbold uppercase">{{$title}}</span>
        </div>
        <div class="actions">
           <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <button onclick="save()" class="btn purple">Lưu <i class="fa fa-floppy-o"></i></button> 
                    <a href="<?php echo $linkCancel; ?>" class="btn green">Thoát <i class="fa fa-ban"></i></a>                    </div>                                                
                </div>
            </div>    
        </div>
    </div>
    <div class="portlet-body form">
        <form class="form-horizontal" role="form" name="frm" enctype="multipart/form-data">
            {{ csrf_field() }}                          
            <?php echo  $inputID; ?>     
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Tham số</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                       
                </div>      
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Alias</b></label>
                        <div class="col-md-10">
                            <?php echo $inputAlias; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>    
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Chủ đề cha</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlCategoryArticle; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                         
                </div>   
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Giá trị</b></label>
                        <div class="col-md-10">
                            <?php echo $inputParamValue; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>                         
                </div>                                                               
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-10">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>     
                </div>       
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Trạng thái</b></label>
                        <div class="col-md-10">                            
                            <?php echo $ddlStatus; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>                                                                 
            </div>                          
        </form>
    </div>
</div>
<script type="text/javascript" language="javascript">

    function save(){
        var id=$('input[name="id"]').val();        
        var fullname=$('input[name="fullname"]').val();
        var alias=$('input[name="alias"]').val();
        var param_value=$('input[name="param_value"]').val();        
        var category_id=$('select[name="category_id"]').val();        
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();   
        
        var dataItem={
            "id":id,
            "fullname":fullname,
            "alias":alias,     
            "param_value":param_value,       
            "category_id":category_id,            
            "sort_order":sort_order,
            "status":status,
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            
            async: false,
            success: function (data) {
                if(data.checked==1){    
                alert(data.msg.success);                      
                    window.location.href = data.link_edit;
                }else{
                    showMsg('note',data);                        
                }
                spinner.hide();
            },
            error : function (data){
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
        });
    }
    function createAlias(){
        var id=$('input[name="id"]').val();   
        var fullname    = $('input[name="fullname"]').val();
        var token       = $('form[name="frm"] > input[name="_token"]').val();     
        var dataItem={      
            "id":id,      
            "fullname":fullname,            
            "_token": token
        };   
        $('input[name="alias"]').val(''); 
            
        $.ajax({
            url: '<?php echo $linkCreateAlias; ?>',
            type: 'POST',
            data: dataItem,            
            async: false,
            success: function (data) {                
                if(data.checked==1){
                    $('input[name="alias"]').val(data.alias); 
                }else{                    
                    showMsg('note',data);                                       
                }
                spinner.hide();
            },
            error : function (data){
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
        });
    }
</script>
@endsection()            
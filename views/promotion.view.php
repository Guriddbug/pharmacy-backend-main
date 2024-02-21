<?php require'sidebar.php'; ?>

<!--Page Container--> 
<section class="page-container">
    <div class="page-content-wrapper">

<!--Main Content-->

 <div class="content sm-gutter">
            <div class="container-fluid padding-25 sm-padding-10">
                <div class="row">
                    <div class="col-12">
                                        <div class="block-heading d-flex align-items-center title-pages">
                    <h5 class="text-truncate">New Promotion</h5>
                </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-block mb-4">

<form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" novalidate>


<div class="form-row">
  <div class="form-group col-md-12">
    <div class="block col-md-12" style="padding-bottom: 35px">

   <label class="control-label">Title</label>
   <input type="text" value="" placeholder="Title" name="promotion_title" class="form-control" required="">

   <label class="control-label">Description</label>
   <textarea value="" name="promotion_description" class="advancedtinymce form-control" id="description" required=""></textarea>
   
   <label class="control-label">Discount(%)</label>
   <input type="number" value="" placeholder="Discount" id="promotion_discount" name="promotion_discount" class="form-control" required="">
   
   <label class="control-label">Price($)</label>
   <input type="number" value="" placeholder="Price" id="promotion_price" name="promotion_price" class="form-control" required="">
   
   <label class="control-label">Custom code</label>
   </br>
   <button id="generateCodeButton">Generate Code</button>
   <input type="text" id="randomCodeInput" name="randomCodeInput" required="">
	
</br>
   
   <style type="text/css">
     td{padding: 0 .5rem !important;}
   </style>


   <label class="control-label">Image</label>

<div class="new-image" id="image-preview">
  <label for="image-upload" id="image-label">Choose File</label>
  <input type="file" name="post_image" id="image-upload" required="" />
</div>

<span class="text-danger recomendedsize">Recommended size: <b>650 x 350</b> </span>
<br/>
<br/>
   <div class="action-button">
   <input type="submit" name="save" value="Submit" class="btn btn-embossed btn-primary">
   <input type="reset" name="reset" value="Reset" class="btn btn-embossed btn-danger">
   </div>

</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<script>
$(document).ready(function(){
    $('#generateCodeButton').click(function(event){
		event.preventDefault();
        var randomCode = generateRandomCode();
        $('#randomCodeInput').val(randomCode);
		$('#randomCodeInput').attr("value", randomCode);
    });

    function generateRandomCode() {
        var codeLength = 6;
        var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var code = '';
        for (var i = 0; i < codeLength; i++) {
            code += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        return code;
    }
	
            $('#promotion_discount').keypress(function(e){
                var keyCode = e.keyCode || e.which;
                // Check if the key pressed is an alphabet character
                if((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122)) {
                    e.preventDefault();
                }
            });
			
			 $('#promotion_price').keypress(function(e){
                var keyCode = e.keyCode || e.which;
                // Check if the key pressed is an alphabet character
                if((keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122)) {
                    e.preventDefault();
                }
            });
			
			
});
</script>

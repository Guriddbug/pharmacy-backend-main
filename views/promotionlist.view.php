<?php require'sidebar.php'; ?>
<?php


$connect = connect($database);
    $sentence = $connect->prepare("SELECT * FROM `promotion` ORDER BY id DESC"); 
    $sentence->execute();
 $data =  $sentence->fetchAll();

 ?>
<!--Page Container--> 
<section class="page-container">
    <div class="page-content-wrapper">

        <!--Main Content-->

 <div class="content sm-gutter">
            <div class="container-fluid padding-25 sm-padding-10">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h5>Promotion List</h5>
                        </div>
                    </div>

<div class="col-12">
                        <div class="block table-block mb-4" style="margin-top: 20px;">

                            <div class="row">
                                <div class="table-responsive">
<table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%" style="border-radius: 5px;">
    <thead>
            <tr>
                <th>Title</th>
                 <th>Description</th>
                <th>Price</th>
                <th>Precentage</th>
                <th>Code</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
        	<?php foreach($data as $datas) { 
        		$id= $datas['id'];
        		$promotion_title= $datas['promotion_title'];
        		$post_description= $datas['promotion_description'];
        		$promotion_discount= $datas['promotion_discount'];
        		$promotion_price= $datas['promotion_price'];
        		$promotioncode= $datas['promotion_code'];
        		$promotion_image= $datas['promotion_image'];
        	//	$currentDirectory = getcwd();
//$folderPath = dirname($currentDirectory);
	$image = "http://localhost/pharmacy-backend-main/assets/images/". $promotion_image;
        		?>
        	<tr>
        		
        		<td> <?php echo $promotion_title; ?> </td>
        		<td> <?php echo $post_description; ?> </td>
				<td> <?php echo $promotion_discount; ?> </td>
				<td> <?php echo $promotion_price; ?> </td>
        		<td> <?php echo $promotioncode; ?> </td>
        		<td> <img src="<?php echo $image; ?>" width="40" height="40"/>  </td>

        	</tr>
        <?php } ?>
        </tbody>

</table>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

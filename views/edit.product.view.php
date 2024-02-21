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
                              <h5 class="text-truncate">Edit Product</h5>
                          </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-block mb-4">
                            <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" id="productForm" novalidate onsubmit="return false">
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <div class="block col-md-12" style="padding-bottom: 35px">
                                            <input type="hidden" value="<?php echo $product['product_id']; ?>" name="product_id">
                                            <input type="hidden" name="product_fun" id="product_fun" value="edit">

                                            <label class="control-label">Type</label>
                                            <select class="form-control" name="product_type" id="product_type" required>
                                                <?php foreach($types_lists as $types_list): ?>
                                                    <option value="<?php echo $types_list['type_id']; ?>" <?php echo ($types_list['type_id'] == $product['product_type'] ? 'selected' : '') ?>><?php echo $types_list['type_title']; ?></option>
                                                <?php endforeach; ?>
                                            </select>

                                            <div class="skinecare">
                                                <label class="control-label">Size</label>
                                                <input type="text" value="<?php echo $product['size']; ?>" placeholder="Size" name="size" class="form-control" required="">
                                            </div>
                      
                                            <label class="control-label">Title</label>
                                            <input type="text" value="<?php echo $product['product_title']; ?>" placeholder="Title" name="product_title" class="form-control" required="">

                                            <label class="control-label">Description</label>
                                            <textarea name="product_description" class="advancedtinymce form-control" id="description" required=""><?php echo $product['product_description']; ?></textarea>

                                            <div class="devices skinecare packages">
                                                <label class="control-label">Why You'd Love It</label>
                                                <textarea name="wyslt" class="advancedtinymce form-control" id="why_love_it" required=""><?php echo $product['wyslt']; ?></textarea>
                                            </div>

                                            <div class="packages">
                                                <label class="control-label">What's included</label>
                                                <textarea name="ws_incl" class="advancedtinymce form-control" id="whats_include" required=""><?php echo $product['ws_incl']; ?></textarea>
                                            </div>
                                            <div class="skinecare">
                                                <label class="control-label">Key Ingredients</label>
                                                <input type="text" value="<?php echo $product['key_ingredient'] ?>" placeholder="Key Ingredients" name="key_ingredient" class="form-control" required="">
                                            </div>

                                            <div class="devices">
                                                <label class="control-label">Technology</label>
                                                <input type="text" value="<?php echo $product['technology'] ?>" placeholder="Technology" name="technology" class="form-control" required="">
                                            </div>

                                            <div class="devices">
                                                <label class="control-label">Benefits</label>
                                                <input type="text" value="<?php echo $product['benefits'] ?>" placeholder="Benefits" name="benefits" class="form-control" required="">
                                            </div>

                                            <div class="skinecare devices">
                                                <label class="control-label">How it works</label>
                                                <textarea name="hiworks" class="advancedtinymce form-control" id="how_it_work" required=""><?php echo $product['hiworks']; ?></textarea>
                                            </div>

                                            <div class="devices skinecare">
                                                <label class="control-label">How to Use</label>
                                                <textarea value="" name="htuse" class="advancedtinymce form-control" id="how_it_use" required=""><?php echo $product['htuse']; ?></textarea>
                                            </div>
                                            <div class="devices skinecare">
                                                <label class="control-label">Tips</label>
                                                <input type="text" value="<?php echo $product['tips']; ?>" placeholder="Tips" name="tips" class="form-control" required="">
                                            </div>

                                            <!-- <label class="control-label">Link</label>
                                            <input type="text" value="<?php echo $product['product_link']; ?>" placeholder="Link" name="product_link" class="form-control" required=""> -->

                                            <div class="devices accessories warranty packages">
                                                <label class="control-label">Price</label>
                                                <input type="text" value="<?php echo $product['product_price']; ?>" placeholder="Price" name="product_price" class="form-control" required="">
                                            </div>

                                            <div class="skinecare">
                                                <label class="control-label">One time price</label>
                                                <input type="hidden" value="<?php echo $product['one_time_price']; ?>" name="one_time_price">
                                                <input type="number" placeholder="Insert price" value="<?php echo $product['one_time_price']; ?>" name="one_time_price" class="form-control" required="">
                                            </div>

                                            <label class="control-label">Discount %</label>
                                            <input type="text" value="<?php echo $product['discount']; ?>" placeholder="Discount" name="discount" class="form-control" required="">

                                            <div class="skinecare packages">
                                                <label class="control-label">Subscription Price 30 Days</label>
                                                <input type="hidden" value="<?php echo $product['price_30_days']; ?>" name="price_30_days">
                                                <input type="number" placeholder="Insert price" value="<?php echo $product['price_30_days']; ?>" name="price_30_days" class="form-control" required="">
                                                <textarea value="" name="desc_30" class="advancedtinymce form-control" id="how_it_use" required=""><?php echo $product['desc_30']; ?></textarea>

                                                <label class="control-label">Subscription Price 60 Days</label>
                                                <input type="hidden" value="<?php echo $product['price_60_days']; ?>" name="price_60_days">
                                                <input type="number" placeholder="Insert price" value="<?php echo $product['price_60_days']; ?>" name="price_60_days" class="form-control" required="">
                                                <textarea value="" name="desc_60" class="advancedtinymce form-control" id="how_it_use" required=""><?php echo $product['desc_60']; ?></textarea>

                                                <label class="control-label">Subscription Price 90 Days</label>
                                                <input type="hidden" value="<?php echo $product['price_90_days']; ?>" name="price_90_days">
                                                <input type="number" placeholder="Insert price" value="<?php echo $product['price_90_days']; ?>" name="price_90_days" class="form-control" required="">
                                                <textarea value="" name="desc_90" class="advancedtinymce form-control" id="how_it_use" required=""><?php echo $product['desc_90']; ?></textarea>

                                            </div>
                                            <div class="skinecare">
                                                <label class="control-label">Subscription Price 120 Days</label>
                                                <input type="hidden" value="" name="price_120_days">
                                                <input type="number" placeholder="Insert price" value="<?php echo $product['price_120_days']; ?>" name="price_120_days" class="form-control" required="">
                                                <textarea value="" name="desc_120" class="advancedtinymce form-control" id="how_it_use" required=""><?php echo $product['desc_120']; ?></textarea>
                                            </div>

                                            <div class="devices skinecare">
                                                <label class="control-label">Tags for Articles</label>
                                                <input type="text" value="<?php echo $product['articles']; ?>" placeholder="Tags for Articles" name="articles" class="form-control" required="">
                                            </div>
                                                      
                                            <!-- <label>Volume</label>
                                            <textarea placeholder="" name="volume" class="form-control"><?php echo $product['volumn']; ?></textarea> -->

                                            <div class="devices skinecare">
                                                <label class="control-label">Tags for "Frequently bough with"</label>
                                                <select class="form-control" id="tags" name="tags[]" required="" multiple>
                                                    <option value="">Please Select</option> 
                                                    <?php foreach ($tags_lists as $item) : echo $product['tags'];?>
                                                        <option value="<?php echo $item['tag_id']; ?>" <?php echo (in_array($item['tag_id'], explode(',', $product['tags'])) ? 'selected' : ''); ?>>
        <?php echo $item['tag_title']; ?>
    </option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>

                                            <div class="devices skinecare accessories warranty">
                                                <label class="control-label">Featured</label>
                                                <div class="row">
                                                    <div class="col-sm-1">
                                                        <?php 
                                                            $in = '1';

                                                            if (strpos($in, $product['product_featured']) !== false) {
                                                                echo '<div class="radio radio-success"> <input type="radio" name="product_featured" id="radio3" value="'. $product['product_featured'] .'" checked=""> <label for="radio3"> Yes </label> </div>';
                                                            }else{
                                                                echo '<div class="radio radio-success"> <input type="radio" name="product_featured" id="radio3" value="' . $in .'"> <label for="radio3"> Yes </label> </div>';
                                                            }
                                                        ?>
                                                    </div>
                                                    <div class="col-sm-1">
                                                    <?php 
                                                        $out = '0';
                                                        if (strpos($out, $product['product_featured']) !== false) {
                                                            echo '<div class="radio radio-danger"> <input type="radio" name="product_featured" id="radio4" value="0" checked=""> <label for="radio4"> No </label> </div>';
                                                        }else{
                                                            echo '<div class="radio radio-danger"> <input type="radio" name="product_featured" id="radio4" value="'. $out .'"> <label for="radio4"> No </label> </div>';
                                                        }
                                                    ?>
                                                    </div>
                                                </div>
                                            </div>

                                            <label class="control-label">Status</label>
                                            <div class="row">
                                                <div class="col-sm-1">
                                                    <?php 
                                                      $in = '1';
                                                      if (strpos($in, $product['product_status']) !== false) {
                                                          echo '<div class="radio radio-success"> <input type="radio" name="product_status" id="radio5" value="'. $product['product_status'] .'" checked=""> <label for="radio5"> Active </label> </div>';
                                                      }else{
                                                          echo '<div class="radio radio-success"> <input type="radio" name="product_status" id="radio5" value="' . $in .'"> <label for="radio5"> Active </label> </div>';
                                                      }
                                                    ?>
                                                </div>
                                                <div class="col-sm-2">
                                                    <?php 
                                                        $out = '0';
                                                        if (strpos($out, $product['product_status']) !== false) {
                                                            echo '<div class="radio radio-danger"> <input type="radio" name="product_status" id="radio6" value="0" checked=""> <label for="radio6"> Inactive </label> </div>';
                                                        } else{
                                                            echo '<div class="radio radio-danger"> <input type="radio" name="product_status" id="radio6" value="'. $out .'"> <label for="radio6"> Inactive </label> </div>';
                                                        }
                                                    ?>
                                                </div>
                                            </div>

                                            <div class="devices skinecare">
                                                <label class="control-label">Video</label>
                                                <div class="d-flex gap-2">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose Video</label>
                                                        <input type="file" name="video_filw" id="video-upload" />
                                                    </div>
                                                    <div class="single_video_preview">
                                                        <?php
                                                            if($product['product_video'] != '') {
                                                                ?>
                                                                    <div id="image-preview">
                                                                        <video width="185" height="185" controls>
                                                                            <source src="../videos/<?php echo $product['product_video']; ?>" type="video/mp4" />Your browser does not support the audio element.
                                                                        </video>
                                                                        <input type="hidden" value="<?php echo $product['product_video']; ?>" name="uploaded_video" id="productimg">
                                                                    </div>
                                                                <?php
                                                            }
                                                        ?>
                                                    </div>
                                                </div>
                                            </div>
                      
                                            <?php 
                                                $img = $product['product_image'];
                                                $product['product_image'] = explode(',',$img);
                                            ?>
                                            <!-- <div class="images-per" style="display:none;">
                                                <label>Image Preview</label>
                                                <div class="preview-images"></div>
                                            </div> -->

                                            <label class="control-label">Image</label>
                                            <div class="row">
                                                <div class="row warranty pl-0" style="margin: 0px 0px 0px 22px;">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose File</label>
                                                        <input type="file" name="product_image" class="single_product_image_upload" <?php echo ((!empty($product['product_image'][0])) ? '' : 'required') ?>/>
                                                    </div>
                                                    <?php 
                                                        if(!empty($product['product_image'][0])){
                                                            foreach($product['product_image'] as $key => $image){
                                                                ?>
                                                                    <div class="new-images single_image_preview" id="image-preview" style="background: url(../images/<?php echo $image; ?>);background-size: cover; background-position: center;margin-left: 10px;"></div>
                                                                    <input type="hidden" value="<?php echo $image; ?>" name="single_uploaded_images" id="productimg">
                                                                <?php
                                                            }
                                                        } else {
                                                            ?>
                                                            <div class="new-images single_image_preview" id="image-preview" style="background-size: cover; background-position: center;display:none;margin-left: 10px;"></div>
                                                            <?php
                                                        }
                                                    ?>
                                                    
                                                </div>
                                                <div class="row devices accessories packages skinecare allimages v_image_preview pl-0" style="margin: 0px 0px 0px 22px;">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose File</label>
                                                        <input type="file" name="product_image_1[]" class="product_image_upload" multiple="multiple" id="product-image-upload" />
                                                    </div>
                                                    <?php
                                                        if(!empty($product['product_image'][0])){
                                                            foreach($product['product_image'] as $key => $image){ 
                                                                ?>
                                                                <div class="new-images already_upload_image" id="image-preview" style="background: url(../images/<?php echo $image; ?>);background-size: cover; background-position: center;">
                                                                    <div class="closeimg uploaded-remove-attach-img" id="<?php echo $key ?>" data-fileid="<?php echo $key ?>"><i class="fa fa-times"></i></div>
                                                                    <input type="hidden" value="<?php echo $image; ?>" name="uploaded_images[]" id="productimg">
                                                                </div>
                                                                <?php 
                                                            }
                                                        }
                                                    ?>
                                                </div>
                                            </div>
                                            <span class="text-danger recomendedsize length_error"></span>
                                            <span class="text-danger recomendedsize">Recommended size: <b>650 x 350</b> </span>
                                            <br/>
                                            <br/>

                                            <div class="action-button">
                                                <input type="submit" name="update" value="Update" class="btn btn-embossed btn-primary">
                                                <a onclick="alertdelete();">
                                                    <input name="trash" value="Delete" class="btn btn-embossed btn-danger" style="width: 80px;">
                                                </a>
                        
                                                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                                                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                                                <script type="text/javascript">
                                                    function alertdelete() {
                                                        swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo SITE_URL ?>/controller/delete_product.php?id=<?php echo $product['product_id']; ?>" });
                                                    }
                                                </script>
                                                <script src="../assets/js/product_js.js" type="text/javascript"></script>
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

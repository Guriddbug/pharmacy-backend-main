<?php require 'sidebar.php'; ?>

<!--Page Container-->
<section class="page-container">
    <div class="page-content-wrapper">

        <!--Main Content-->

        <div class="content sm-gutter">
            <div class="container-fluid padding-25 sm-padding-10">
                <div class="row">
                    <div class="col-12">
                        <div class="block-heading d-flex align-items-center title-pages">
                            <h5 class="text-truncate">New Product</h5>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-block mb-4">

                            <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" id="productForm" novalidate onsubmit="return false">

                                <input type="hidden" name="product_fun" id="product_fun" value="create">
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <div class="block col-md-12" style="padding-bottom: 35px">
                                            <label class="control-label">Type</label>
                                            <select class="form-control" id="product_type" name="product_type" required="">
                                                <!-- <option value="" selected disabled>Select type</option> -->
                                                <?php foreach ($types_lists as $item) : ?>
                                                    <option value="<?php echo $item['type_id']; ?>"><?php echo $item['type_title']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <div class="skinecare">
                                                <label class="control-label">Size</label>
                                                <input type="text" value="" placeholder="Size" name="size" class="form-control" required="">
                                            </div>
                                            <label class="control-label">Title</label>
                                            <input type="text" value="" placeholder="Title" name="product_title" class="form-control" required="">

                                            <label class="control-label">Description</label>
                                            <textarea value="" name="product_description" class="advancedtinymce form-control" id="description" required=""></textarea>

                                            <div class="devices skinecare packages">
                                                <label class="control-label">Why You'd Love It</label>
                                                <textarea value="" name="wyslt" class="advancedtinymce form-control" id="why_love_it" required=""></textarea>
                                            </div>
                                            <div class="packages">
                                                <label class="control-label">What's included</label>
                                                <textarea value="" name="ws_incl" class="advancedtinymce form-control" id="whats_include" required=""></textarea>
                                            </div>
                                            <div class="skinecare">
                                                <label class="control-label">Key Ingredients</label>
                                                <input type="text" value="" placeholder="Key Ingredients" name="key_ingredient" class="form-control" required="">
                                            </div>
                                            <div class="devices">
                                                <label class="control-label">Technology</label>
                                                <input type="text" value="" placeholder="Technology" name="technology" class="form-control" required="">
                                            </div>
                                            <div class="devices">
                                                <label class="control-label">Benefits</label>
                                                <input type="text" value="" placeholder="Benefits" name="benefits" class="form-control" required="">
                                            </div>
                                            <div class="skinecare devices">
                                                <label class="control-label">How it works</label>
                                                <textarea value="" name="hiworks" class="advancedtinymce form-control" id="how_it_work" required=""></textarea>
                                            </div>
                                            <div class="devices skinecare">
                                                <label class="control-label">How to Use</label>
                                                <textarea value="" name="htuse" class="advancedtinymce form-control" id="how_it_use" required=""></textarea>
                                            </div>
                                            <div class="devices skinecare">
                                                <label class="control-label">Tips</label>
                                                <input type="text" value="" placeholder="tips" name="tips" class="form-control" required="">
                                            </div>
                                            <!-- <div class="">
                                                <label class="control-label">Affiliate Link</label>
                                                <input type="text" value="" placeholder="Affiliate Link" name="product_link" class="form-control" required="">
                                            </div> -->
                                            <div class="devices accessories warranty packages">
                                                <label class="control-label">Price</label>
                                                <input type="text" value="" placeholder="Price" name="product_price" class="form-control" required="">
                                            </div>
                                            <div class="skinecare">
                                                <label class="control-label">One time Price</label>
                                                <input type="text" value="" placeholder="Price" name="one_time_price" class="form-control" required="">
                                            </div>
                                            <label class="control-label">Discount %</label>
                                            <input type="text" value="" placeholder="Discount" name="discount" class="form-control" required="">

                                            <div class="skinecare packages">
                                                <label class="control-label">Subscription Price 30 Days</label>
                                                <input type="text" value="" placeholder="Discount" name="price_30_days" class="form-control" required="">
                                                <textarea value="" name="desc_30" class="advancedtinymce form-control" id="how_it_use" required=""></textarea>
                                                <label class="control-label">Subscription Price 60 Days</label>
                                                <input type="text" value="" placeholder="Discount" name="price_60_days" class="form-control" required="">
                                                <textarea value="" name="desc_60" class="advancedtinymce form-control" id="how_it_use" required=""></textarea>
                                                <label class="control-label">Subscription Price 90 Days</label>
                                                <input type="text" value="" placeholder="Discount" name="price_90_days" class="form-control" required="">
                                                <textarea value="" name="desc_90" class="advancedtinymce form-control" id="how_it_use" required=""></textarea>
                                            </div>
                                            <div class="skinecare">
                                                <label class="control-label">Subscription Price 120 Days</label>
                                                <input type="text" value="" placeholder="Discount" name="price_120_days" class="form-control" required="">
                                                <textarea value="" name="desc_120" class="advancedtinymce form-control" id="how_it_use" required=""></textarea>
                                            </div>

                                            <div class="devices skinecare">
                                                <label class="control-label">Tags for Articles</label>
                                                <input type="text" value="" placeholder="Tags for Articles" name="articles" class="form-control" required="">
                                            </div>
                                            <div class="devices skinecare">
                                                <label class="control-label">Tags for "Frequently bough with"</label>
                                                <select class="form-control" id="tags" name="tags[]" required="" multiple>
                                                    <option value="">Please Select</option>
                                                    <?php foreach ($tags_lists as $item) : ?>
                                                        <option value="<?php echo $item['tag_id']; ?>"><?php echo $item['tag_title']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="devices skinecare accessories warranty">
                                                <label class="control-label">Featured</label>

                                                <style type="text/css">
                                                    td {
                                                        padding: 0 .5rem !important;
                                                    }
                                                </style>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <div class="radio radio-success">
                                                                <input type="radio" name="product_featured" id="radio3" value="1">
                                                                <label for="radio3">
                                                                    Yes
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="radio radio-danger">
                                                                <input type="radio" name="product_featured" id="radio4" value="0">
                                                                <label for="radio4">
                                                                    No
                                                                </label>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                </table>
                                            </div>
                                            <label class="control-label">Status</label>


                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="radio radio-success">
                                                            <input type="radio" name="product_status" id="radio5" value="1">
                                                            <label for="radio5">
                                                                Active
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="radio radio-danger">
                                                            <input type="radio" name="product_status" id="radio6" value="0">
                                                            <label for="radio6">
                                                                Inactive
                                                            </label>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </table>

                                            <div class="devices skinecare"> 
                                                <label class="control-label">Video</label>
                                                
                                                <div class="d-flex gap-2">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose Video</label>
                                                        <input type="file" name="video_filw" id="video-upload" />
                                                    </div>
                                                    <div class="single_video_preview"></div>
                                                </div>
                                            </div>
                                            <label class="control-label">Image</label>
                                            <div class="row">
                                                <div class="row warranty pl-0" style="margin: 0px 0px 0px 22px;">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose File</label>
                                                        <input type="file" name="product_image" class="single_product_image_upload" required="" />
                                                    </div>
                                                    <div class="new-images single_image_preview" id="image-preview" style="background-size: cover; background-position: center;display:none;margin-left: 10px;"></div>
                                                </div>
                                                <div class="row devices accessories packages skinecare allimages v_image_preview pl-0" style="margin: 0px 0px 0px 22px;">
                                                    <div class="new-image" id="image-preview">
                                                        <label for="image-upload" id="image-label">Choose File</label>
                                                        <input type="file" name="product_image_1[]" class="product_image_upload" multiple="multiple" id="product-image-upload" required="" />
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="text-danger recomendedsize length_error"></span>
                                            <span class="text-danger recomendedsize">Recommended size: <b>650 x 350</b> </span>
                                            <br />
                                            <br />
                                            <span class="text-danger submiterror"></span>
                                            <div class="action-button">
                                                <input type="submit" name="save" value="Submit" class="btn btn-embossed btn-primary submit_btn">
                                                <input type="reset" name="reset" value="Reset" class="btn btn-embossed btn-danger">
                                            </div>
                                            <script src="../assets/js/product_js.js" type="text/javascript"></script>
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
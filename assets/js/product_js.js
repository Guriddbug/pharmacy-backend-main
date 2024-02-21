$("#product_type").on('change', function() {
    $('input[type=text]').addClass('ignore');
    $(".devices, .skinecare,.accessories,.warranty,.packages").hide();

    if ($("#product_type").val() == 6) {
        $(".accessories input").removeClass("ignore")
        $(".accessories").show();
    }
    if ($("#product_type").val() == 8) {
        $(".devices").show();
    }
    if ($("#product_type").val() == 11) {
        $(".warranty").show();
    }
    if ($("#product_type").val() == 12) {
        $(".packages").show();
    }
    if ($("#product_type").val() == 10) {
        $(".skinecare").show();
        $(".skinecare input").removeClass("ignore")
    }
});
$(document).ready(function() {

    $("#product_type").trigger('change');

    var fileIdCounter = 0;
    var attachmentFiles = [];
    $(document).on('change', '.product_image_upload', function() {
        $(".length_error").text('');
        for (var i = 0; i < $(this).get(0).files.length; ++i) {
            var alreadyupload = $(document).find('.already_upload_image').length;
            var fileLength = attachmentFiles.length + parseInt(alreadyupload);
            if(fileLength < 5) {
                var file = $(this).get(0).files[i];
                var fileId = 'file' + fileIdCounter;
                attachmentFiles.push({
                    id: fileId,
                    file: file
                });
                fileIdCounter++;
                $(this).closest('div').find('.help-block-error').remove();
                var reader = new FileReader();
                reader.fileName = file.name;
                reader.fileId = fileId;
                reader.onload = function(e) {
                    var html = '<div class="new-images" id="image-preview" style="background: url('+e.target.result+');background-size: cover; background-position: center;">\
                                <div class="closeimg remove-attach-img" id="' + e.target.fileId + '" data-fileid="' + e.target.fileId + '"><i class="fa fa-times"></i></div>\
                                <input type="hidden" value="'+e.target.result+'" id="productimg">\
                            </div>';
                    $(".v_image_preview").append(html);
                }
                reader.readAsDataURL(file);
            } else {
                if(attachmentFiles.length <= 0) {
                    $(".product_image_upload").val('');
                }
                $(".length_error").text('You can add maximum 5 images');
            }
        }
    });

    $(document).on("click", ".remove-attach-img", function (e) {
        var fileId = $(this).data("fileid");
        for (var i = 0; i < attachmentFiles.length; ++i) {
            if (attachmentFiles[i].id === fileId) {
                attachmentFiles.splice(i, 1);
            }
        }

        $(this).parent().remove();
        if(attachmentFiles.length <= 0) {
            $(".product_image_upload").val('');
        }
    });

    $(document).on("click", ".uploaded-remove-attach-img", function (e) {
        $(this).parent().remove();
        var fileLength = $(document).find('.already_upload_image').length;
        if(fileLength <= 0 && attachmentFiles.length <= 0) {
            $(".product_image_upload").val('');
        }
    });

    $(document).on('change', '.single_product_image_upload', function() {
        var file = $(this).get(0).files[0];
        var reader = new FileReader();
        reader.onload = function(e) {
            $(".single_image_preview").css({"background-image": "url("+e.target.result+")"});
            $(".single_image_preview").show();
        }
        reader.readAsDataURL(file);
    });

    $(document).on('change', '#video-upload', function() {
        var file = $(this).get(0).files[0];
        var reader = new FileReader();
        reader.onload = function(e) {
            $(".single_video_preview").html("<div id='image-preview'><video width='185' height='185' controls><source src='" + e.target.result + "' type='" + file.type + "' />Your browser does not support the audio element.</video></div>");
            // $(".single_video_preview").show();
        }
        reader.readAsDataURL(file);
    });
  
    $("#productForm").validate({
        // Add rules and messages for each field as needed
        rules: {
            product_type: "required",
            size: "required",
            product_title: "required",
            product_description: "required",
            wyslt: "required",
            ws_incl: "required",
            key_ingredient: "required",
            technology: "required",
            benefits: "required",
            hiworks: "required",
            htuse: "required",
            tips: "required",
            product_link: {
                required: true,
                url: true
            },
            product_price: {
                required: true,
                number: true
            },
            one_time_price: {
                required: true,
                number: true
            },
            discount: {
                required: true,
                number: true
            },
            price_30_days: {
                required: true,
                number: true
            },
            desp_30: "required",
            price_60_days: {
                required: true,
                number: true
            },
            desc_60: "required",
            price_90_days: {
                required: true,
                number: true
            },
            desc_90: "required",
            price_120_days: {
                required: true,
                number: true
            },
            desc_120: "required",
            articles: "required",
            tags: "required",
            product_featured: "required",
            product_status: "required",
            video_filw: {
            //   required: true,
              accept: "video/*"
            },
            product_image: {
                // required: true,
                accept: "image/*"
            },
            product_image_1: {
                // required: true,
                accept: "image/*",
            }
        },
        messages: {
            // Add custom error messages if needed
        },
        errorPlacement: function(error, element) {
            if (element.attr("type") == "radio") {
                error.insertAfter(element.parent().parent().parent());
            } else if(element.attr("id") == "video-upload"){  
                error.insertBefore(element.parent().parent());
            }else {
                error.insertAfter(element);
            }
        },
        submitHandler: function(form) {
            $(".submit_btn").attr('disabled', true);
            var formData = new FormData($('#productForm')[0]);
            var is_error = 0;
            var type = $("#product_fun").val();
            if($("#product_type").val() != 11) {
                if (typeof attachmentFiles !== 'undefined' && attachmentFiles.length > 0) {
                    for (var i = 0, len = attachmentFiles.length; i < len; i++) {
                        formData.append("new_upload_image[]", attachmentFiles[i].file);
                    }
                } else {
                    if(type == "create") {
                        is_error = 1;
                    } else {
                        if($(document).find('.already_upload_image').length <= 0) {
                            is_error = 1;
                        }
                    }
                }
            }

            if(!is_error) {
                $.ajax({
                    type: "POST",
                    enctype: 'multipart/form-data',
                    url: 'product_save.php',
                    data: formData,
                    processData: false,
                    contentType: false,
                    cache: false,
                    timeout: 600000,
                    dataType: "json",
                success: function (data) {
                    $(".submit_btn").attr('disabled', false);
                    if(data.status) {
                        window.location.href = data.redirect;
                    } else {
                        $(".submiterror").text(data.error);
                    }
                }
                });
                // form.submit();
            } else {
                $(".submit_btn").attr('disabled', false);
                $(".length_error").text('Please uplode minimum 1 image.');
            }
        }
    });
});
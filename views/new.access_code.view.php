<?php require'sidebar.php';?>

<!--Page Container-->
<section class="page-container">
  <div class="page-content-wrapper">

    <!--Main Content-->

    <div class="content sm-gutter">
      <div class="container-fluid padding-25 sm-padding-10">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
              <h5>Create Access Code</h5>
            </div>
          </div>

            <div class="col-12">
                <!-- Alert container -->
                <div class="alert-container">
                    <!-- Display Error Message -->
                    <?php if (isset($_GET['error']) && $_GET['error'] === 'codeUsed'): ?>
                        <div class="alert alert-danger">
                            Access code already used by another user.
                        </div>
                    <?php endif; ?>

                    <!-- Display Success Message -->
                    <?php if (isset($_GET['success']) && $_GET['success'] === 'true'): ?>
                        <div class="alert alert-success">
                            Code inserted successfully.
                        </div>
                    <?php endif; ?>
                </div>
            </div>

            <div class="col-md-12">
            <div class="block form-block mb-4">

              <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                <div class="form-row">

                  <div class="form-group col-md-12">
                    <label>Code</label>
                      <input type="text" value="<?php echo isset($_SESSION['register_code']) ? htmlspecialchars($_SESSION['register_code']) : ''; ?>" placeholder="" name="access_code" class="form-control" required="required">
                  </div>

                  <hr>

                  <button class="btn btn-primary" type="submit" name="save">Save</button>

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

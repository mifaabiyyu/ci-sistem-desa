<!DOCTYPE html>
<html lang="en">
<head>
  <title>Registrasi - Sistem Pengelolaan Data Penduduk</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
  <link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/images/logo-karawang.png"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/animate/animate.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/select2/select2.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/css/util.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login_/css/main.css">
<!--===============================================================================================-->
</head>
<body>

  <div class="limiter">
    <div class="container-login100">
      <div>

        <form class="login100-form validate-form"  action="<?php echo base_url('registrasi'); ?>" method="post" class="" role="form">
          <span class="login100-form-title p-b-26">
            SISTEM PENGELOLAAN DATA PENDUDUK <BR>KECAMATAN BINANGUN 
            <BR> DESA REJOSO
          </span>

          <span class="login100-form-title p-b-48">
<img src="<?php echo base_url(); ?>/assets/images/blitar.png"  width="150" height="150">
          </span>
           <?php
if ($this->session->flashdata('message')) {
	?>
        <div class="callout callout-danger">
          <p style="font-size:15px; text-align:center; color:red;">
            <i class="fa fa-warning"></i> <?php echo $this->session->flashdata('message'); ?>
          </p>
        </div>
        <?php
}
?>
         <label>NIK</label>
         <div class="form-group validate-input" data-validate = "nik TIDAK TERDAFTAR!">
            <input class="form-control" type="text" name="nik">
            <?= form_error('nik', '<small class="help is-danger">', '</small>'); ?>
          </div>
         <label>Username</label>
         <div class="form-group validate-input" data-validate = "USERNAME TIDAK TERDAFTAR!">
            <input class="form-control" type="text" name="username">
            <?= form_error('username', '<small class="help is-danger">', '</small>'); ?>
          </div>
          <label>Password</label>
          <div class="form-group validate-input" data-validate="Enter password">
            <span class="btn-show-pass">
              <i class="zmdi zmdi-eye"></i>
            </span>
            <input class="form-control" type="password" name="password">
            <?= form_error('password', '<small class="help is-danger">', '</small>'); ?>
          </div>
            <div class="form-group">
            <div class="container-login100-form-btn">
                <div class="wrap-login100-form-btn">
                    <div class="login100-form-bgbtn"></div>
                    <button class="btn-info login100-form-btn" type="submit" alt="sign in">
                        Register
                    </button>
                </div>
            </div>
            </div>
        </form>
        <h6 class="text-center" style="padding-top: 25px;">Sudah punya akun?</h6>
          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <a class="btn-success login100-form-btn" name="Submit" alt="sign in" href="<?php echo base_url('login'); ?>">
                Login
              </a>
            </div>
          </div>
      </div>
    </div>
  </div>


  <div id="dropDownSelect1"></div>

<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/bootstrap/js/popper.js"></script>
  <script src="<?php echo base_url(); ?>assets/login_/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/daterangepicker/moment.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/login_/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="<?php echo base_url(); ?>assets/login_/js/main.js"></script>

</body>
</html>
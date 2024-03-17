<?php 
  include("connection.php");
  session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <title>
    Admin Login
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.4" rel="stylesheet" />
</head>

<body class="bg-gray-200">
  <main class="main-content  mt-0">
    <div class="page-header align-items-start min-vh-100" style="background-image: url('https://wallpaperset.com/w/full/c/a/c/530095.jpg');">
      <span class="mask bg-gradient-dark opacity-4"></span>
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-4 col-md-8 col-12 mx-auto">
            <div class="card z-index-0 fadeIn3 fadeInBottom">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div style="background-color: #006039; color: #FFFFFF; border-radius: 12px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); padding: 16px 14px;">
    <h4 class="text-white font-weight-bolder text-center mt-2 mb-0" style="letter-spacing:1px; text-transform: uppercase;">Admin Login</h4>
    <div class="row mt-3">
        <div class="col-2 text-center ms-auto">
            <a class="btn btn-link px-3" href="javascript:;">
                <i class="fa fa-facebook text-white text-lg"></i>
            </a>
        </div>
        <div class="col-2 text-center px-1">
            <a class="btn btn-link px-3" href="javascript:;">
                <i class="fa fa-github text-white text-lg"></i>
            </a>
        </div>
        <div class="col-2 text-center me-auto">
            <a class="btn btn-link px-3" href="javascript:;">
                <i class="fa fa-google text-white text-lg"></i>
            </a>
        </div>
    </div>
</div>

              <div class="card-body">
                <form role="form" class="text-start" method="post">
                  <div class="input-group input-group-outline my-3">
                    <!-- <label class="form-label">Username</label> -->
                    <input type="text" class="form-control" name="txtusername" required placeholder="Username">
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <!-- <label class="form-label">Password</label> -->
                    <input type="password" class="form-control" name="txtpassword" required placeholder="Password">
                  </div>
                  <!-- <div class="form-check form-switch d-flex align-items-center mb-3">
                    <input class="form-check-input" type="checkbox" id="rememberMe" checked>
                    <label class="form-check-label mb-0 ms-3" for="rememberMe">Remember me</label>
                  </div> -->
                  <div class="text-center">
                    <button name="btnlogin" type="submit" class="btn btn-primary w-100 my-4 mb-2">Sign in</button>
                  </div>
                  <p class="mt-4 text-sm text-center">
                    Don't have an account?
                    <a href="sign-up.php" class="text-primary text-btn-primary font-weight-bold">Sign up</a>
                  </p>
                </form>
                <?php 
                  if(isset($_POST['btnlogin']))
                  {
                    $username = $_POST['txtusername'];
                    $password = $_POST['txtpassword'];
                    $login_query = "SELECT * FROM `admin` WHERE `username`='$username' and `password`='$password'";
                    if(mysqli_query($connection,$login_query))
                    {
                      $fetch_admin_id = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM `admin` WHERE username='$username'"));
                      $_SESSION['admin_session'] = $fetch_admin_id['id'];
                      echo 
                      "<script>
                        window.location.href='index.php';
                      </script>";
                    }
                    else
                    {
                      echo "<script>alert('Incorrect Username or Password')</script>";
                    }

                  }
                ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.min.js?v=3.0.4"></script>
</body>

</html>
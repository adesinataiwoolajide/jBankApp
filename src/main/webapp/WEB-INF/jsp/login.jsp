<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Spring App</title>
    <!--favicon-->
    <link rel="icon" href="/resources/images/jlogo.jpg" type="image/x-icon">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap core CSS-->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- animate CSS-->
    <link href="/resources/css/animate.css" rel="stylesheet" type="text/css"/>
    <!-- Icons CSS-->
    <link href="resources/css/icons.css" rel="stylesheet" type="text/css"/>
    <!-- Custom Style-->
    <link href="/resources/css/app-style.css" rel="stylesheet"/>
<%--    <link rel="stylesheet" type="text/css" href="assets/Toast/css/Toast.min.css">--%>

</head>

<body>

<!-- Start wrapper-->
    <div id="wrapper">

        <div class="card card-authentication1 mx-auto my-5">

            ${SPRING_SECURITY_LAST_EXCEPTION.message}!
            <div class="card-body">


                <div class="card-content p-2">

                    <div class="text-center">
                        <a href="/">
                            <img src="/resources/images/jlogo.jpg" style="height: 100px;" alt="logo icon">
                        </a>
                    </div>

                    <div class="card-title text-uppercase text-center py-3">Sign In</div>
                    <form method="POST" action="/login">

                        <div class="form-group">
                            <div class="position-relative has-icon-left">
                                <label for="exampleInputUsername" class="sr-only">Username</label>
                                <input type="email" id="exampleInputUsername"
                                       class="form-control form-control-rounded"
                                       name="username" value=""
                                       required autofocus placeholder="Enter Your User Name">
                                <div class="form-control-position">
                                    <i class="icon-user"></i>
                                </div>


                            </div>
                        </div>
                        <div class="form-group">
                            <div class="position-relative has-icon-left">
                                <label for="exampleInputPassword" class="sr-only">Password</label>
                                <input  id="exampleInputPassword" type="password"
                                        class="form-control form-control-rounded"
                                        name="password" required placeholder="Enter Your Password">

                                <div class="form-control-position">
                                    <i class="icon-lock"></i>
                                </div>


                            </div>
                        </div>


                        <button type="submit" class="btn btn-outline-danger btn-block waves-effect waves-light">Sign In</button><hr>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--Start Back To Top Button-->
    <a href="" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->

    <!--start color switcher-->

</div>
<!--end color cwitcher-->

</div><!--wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="/resources/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="/resources/js/app-script.js"></script>
<script src="/resources/Toast/js/Toast.min.js"></script>
</body>

</html>

<%@page import="com.cafe24.ourplanners.member.dto.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	//ajax json데이터 캐쉬 방지
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js sidebar-large lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js sidebar-large lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js sidebar-large lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js sidebar-large"> <!--<![endif]-->

<head>
    <!-- BEGIN META SECTION -->
    <meta charset="utf-8">
    <title>Pixit - Responsive Boostrap3 Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="" name="description" />
    <meta content="themes-lab" name="author" />
    <link rel="shortcut icon" href="http://themes-lab.com/pixit/admin/assets/img/favicon.png">
    <!-- END META SECTION -->
    <!-- BEGIN MANDATORY STYLE -->
    <link href="http://themes-lab.com/pixit/admin/assets/css/icons/icons.min.css" rel="stylesheet">
    <link href="http://themes-lab.com/pixit/admin/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://themes-lab.com/pixit/admin/assets/css/plugins.min.css" rel="stylesheet">
    <link href="http://themes-lab.com/pixit/admin/assets/plugins/bootstrap-loading/lada.min.css" rel="stylesheet">
    <link href="http://themes-lab.com/pixit/admin/assets/css/style.css" rel="stylesheet">
    <link href="#" rel="stylesheet" id="theme-color">
    <!-- END  MANDATORY STYLE -->
    <!-- BEGIN PAGE LEVEL STYLE -->
    <link href="http://themes-lab.com/pixit/admin/assets/css/animate-custom.css" rel="stylesheet">
    <!-- END PAGE LEVEL STYLE -->
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body class="login fade-in" data-page="login">
    <!-- BEGIN LOGIN BOX -->
    <div class="container" id="login-block">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
                <div class="login-box clearfix animated flipInY">
                    <div class="page-icon animated bounceInDown">
                        <img src="http://themes-lab.com/pixit/admin/assets/img/account/user-icon.png" alt="Key icon">
                    </div>
                    <div class="login-logo">
                        <a href="#?login-theme-3">
                            <img src="http://themes-lab.com/pixit/admin/assets/img/account/login-logo.png" alt="Company Logo">
                        </a>
                    </div>
                    <hr>
                    <div class="login-form">
                        <!-- BEGIN ERROR BOX -->
                        <div class="alert alert-danger hide">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <h4>Error!</h4>
                            Your Error Message goes here
                        </div>
                        <!-- END ERROR BOX -->
                        <form action="#" method="post">
                            <input type="text" placeholder="Username" class="input-field form-control user" />
                            <input type="password" placeholder="Password" class="input-field form-control password" />
                            <div class="div-login" style="margin:auto;text-align:center">
                                <button style="display: inline;" id="submit-form" class="btn btn-login ladda-button" data-style="expand-left"><span class="ladda-label">login</span></button>
                            </div> 
                        </form>
                        <div class="login-links">
                            <a href="http://themes-lab.com/pixit/admin/password_forgot.html">Forgot password?</a>
                            <br>
                            <a href="http://themes-lab.com/pixit/admin/signup.html">Don't have an account? <strong>Sign Up</strong></a>
                        </div>
                    </div>
                </div>
                <div class="social-login row">
                    <div class="fb-login col-lg-6 col-md-12 animated flipInX">
                        <a href="#" class="btn btn-facebook btn-block">Connect with <strong>Facebook</strong></a>
                    </div>
                    <div class="twit-login col-lg-6 col-md-12 animated flipInX">
                        <a href="#" class="btn btn-twitter btn-block">Connect with <strong>Twitter</strong></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END LOCKSCREEN BOX -->
    <!-- BEGIN MANDATORY SCRIPTS -->
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/jquery-1.11.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/jquery-migrate-1.2.1.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/jquery-mobile/jquery.mobile-1.4.2.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
    <!-- END MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/backstretch/backstretch.min.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/plugins/bootstrap-loading/lada.min.js"></script>
    <script src="http://themes-lab.com/pixit/admin/assets/js/account.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->

    <script>
    $(function() {
    $('#submit-form').click(function(e){
        e.preventDefault();
        var l = Ladda.create(this);
        l.start();
        setTimeout(function () {
            window.location.href = "index.html";
        }, 2000);

    });
});
    </script>
</body>

</html>


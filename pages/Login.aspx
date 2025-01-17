﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="pages_Default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WOZ - Login</title>

        <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/grayscale.css" rel="stylesheet">

    <!-- MetisMenu CSS
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"> -->

    <!-- Social Media CSS -->
    <link href="../css/bootstrap-social.css" rel="stylesheet">

    <!-- Custom CSS
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet"> -->

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
                            <form role="form" runat="server">
    <div class="login">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
                                <fieldset>
                                    <div class="form-group" id="divEmail">
                                        <input class="form-control" placeholder="E-mail" id="email" name="email" type="email" autofocus>
                                    </div>
                                    <div class="form-group" id="divPassword">
                                        <input class="form-control" placeholder="Password" id="password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                   <a href="javascript:login()" class="btn btn-lg btn-success btn-block">Login</a> 
                                    <p class="text-center">OR</p>

                                    <!-- Facebook button -->
                                    <a class="btn btn-block btn-lg btn-social btn-facebook">
                                        <span class="fa fa-facebook"></span> Sign in with Facebook
                                    </a>
                                </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Custom JavaScript -->
    <script src="/js/Login.js"></script>
                            </form>

</body>

</html>


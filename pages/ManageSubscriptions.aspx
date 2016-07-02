<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageSubscriptions.aspx.cs" Inherits="ManageSubscriptions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My Flix - Manage Subscriptions</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/grayscale.css" rel="stylesheet">

    <!-- MetisMenu CSS 
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">-->

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS 
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">-->

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <form role="form" runat="server">
        <div class="subscriptions">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
            <div id="wrapper">

                <!-- Navigation -->
                <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                                <i class="fa fa-bars"></i>
                            </button>
                            <a class="navbar-brand page-scroll" href="#page-top">
                                <%--<i class="fa fa-play-circle"></i>--%>WOZ
                            </a>
                        </div>
                        <!-- /.navbar-header -->
                        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                            <ul class="nav navbar-nav">
                                <li><a class="page-scroll" href="/pages/ManageSubscriptions.aspx"><%--<i class="fa fa-dashboard fa-fw"></i>--%>Subscriptions</a></li>
                                <li><a class="page-scroll" href="/pages/EditProfile.aspx"><%--<i class="fa fa-bar-chart-o fa-fw"></i>--%>Profile</a></li>
                                <li><a class="page-scroll" href="/pages/index.html"><%--<i class="fa fa-table fa-fw"></i>--%>Media/Content</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle page-scroll" data-toggle="dropdown" href="#">
                                        <i class="fa fa-envelope fa-fw"></i><i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-messages">
                                        <li>
                                            <a href="#">
                                                <div>
                                                    <strong>John Smith</strong>
                                                    <span class="pull-right text-muted">
                                                        <em>Yesterday</em>
                                                    </span>
                                                </div>
                                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                            </a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <div>
                                                    <strong>John Smith</strong>
                                                    <span class="pull-right text-muted">
                                                        <em>Yesterday</em>
                                                    </span>
                                                </div>
                                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                            </a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <div>
                                                    <strong>John Smith</strong>
                                                    <span class="pull-right text-muted">
                                                        <em>Yesterday</em>
                                                    </span>
                                                </div>
                                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                            </a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a class="text-center" href="#">
                                                <strong>Read All Messages</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- /.dropdown-messages -->
                                </li>
                                <!-- /.dropdown -->
                                <li class="dropdown">
                                    <a class="dropdown-toggle page-scroll" data-toggle="dropdown" href="#">
                                        <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="/pages/EditProfile.aspx"><i class="fa fa-user fa-fw"></i>User Profile</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="/pages/Login.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                                        </li>
                                    </ul>
                                    <!-- /.dropdown-user -->
                                </li>
                                <!-- /.dropdown -->
                            </ul>
                            <!-- /.navbar-top-links -->
                        </div>
                    </div>
                </nav>

                <div id="page-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="page-header">Subscriptions</h2>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="dataTable_wrapper">
                                    <table class="table table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Provider</th>
                                                <th>Subscription</th>
                                                <th>Subscribe</th>
                                                <th>Unsubscribe</th>
                                                <th>Payment</th>
                                                <th>Old Payment</th>
                                                <th>Player</th>
                                                <th>View Contract</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbUserSubscriptions">
                                        </tbody>
                                    </table>
                                    <br />
                                    <button type="button" class="btn btn-primary btn-lg" onclick="document.location.href='LinkSubscription.aspx';">Link new subscription</button>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                    </div>
                    <%-- /container--%>
                </div>
                <!-- /#page-wrapper -->


            </div>
            <!-- Modal -->
            <div class="modal fade" id="contractModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
                        </div>
                        <div class="modal-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- Modal -->
            <div class="modal fade" id="subscribeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="subscribeModalLabel">Subscribe</h4>
                        </div>
                        <div class="modal-body">
                            Do you want to subscribe to this service or buy the content?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Subscribe</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Buy</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- /#wrapper -->
        </div>

        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="../js/jquery.easing.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/grayscale.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>
        <script src="/js/ManageSubscriptions.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true,
                    "paging": false,
                    "ordering": false,
                    "info": false,
                    "sDom": '<"top"i>rt<"bottom"i><"clear">'
                });
                getUserSubscriptions();
            });
        </script>
    </form>
</body>

</html>


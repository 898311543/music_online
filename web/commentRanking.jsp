<%--
  Created by IntelliJ IDEA.
  User: shubin
  Date: 12/22/17
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>歌曲评论数排行</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="resource/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="resource/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="resource/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="resource/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="resource/dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="resource/bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="resource/bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="resource/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="resource/bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="resource/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <link rel="stylesheet" type="text/css" href="resource/dist/css/barrager.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            在线音乐管理
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="resource/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="resource/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                AdminLTE Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="resource/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="resource/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="resource/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <ul class="dropdown-menu">
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- search form -->
            <%--<form action="#" method="get" class="sidebar-form">--%>
                <%--<div class="input-group">--%>
                    <%--<input type="text" name="q" class="form-control" placeholder="搜索歌曲...">--%>
                    <%--<span class="input-group-btn">--%>
                <%--<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>--%>
                <%--</button>--%>
              <%--</span>--%>
                <%--</div>--%>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">

                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-plus"></i>--%>
                        <%--<span>添加音乐</span>--%>

                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="resource/pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> 从网络添加</a></li>--%>
                        <%--<li><a href="resource/pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> 上传音乐</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i>
                        <span>音乐排行</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <%--<li><a href="resource/pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> 播放量</a></li>--%>
                        <li><a href="commentRanking"><i class="fa fa-circle-o"></i> 评论数</a></li>
                    </ul>
                </li>

                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-circle"></i>--%>
                        <%--<span>音乐管理</span>--%>
                    <%--</a>--%>
                <%--</li>--%>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                歌曲评论数排行
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
            </ol>
        </section>


        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">评论数排行榜</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                            <thead>
                            <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">歌曲</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">歌手</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">评论数</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">试听</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">下载</th></tr>
                            </thead>
                            <tbody>

                            <c:forEach var="music" items="${requestScope.commentRanking.music}" varStatus="status">
                            <tr role="row" class="odd" id="${music.m_id}">
                                <td class="sorting_1 m_name">${music.m_name}</td>
                                <td class="artists">${music.artists}</td>
                                <td>${music.total}</td>
                                <td><button type="button" class="btn btn-block btn-primary" onclick="listion_temp(this,${music.m_id})"> 试听</button></td>
                                <td><button type="button" class="btn btn-block btn-primary"><a href="downloadMusic?id=${music.m_id}&m_name=1234&artists=123" download="${music.m_name}.mp3" style="color: white"> 下载</a></button></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        </div>
                        </div>
                            <%--<div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div>--%>
                                <div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><ul class="pagination">
                                    <!-- 上一页 -->
                                    <c:if test="${requestScope.commentRanking.pNum == 1}">
                                        <li class="paginate_button previous disabled" id="example2_previous"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.commentRanking.pNum != 1}">
                                        <li class="paginate_button previous" id="example2_previous"><a href="commentRanking?pNum=${requestScope.commentRanking.pNum-1}" aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li>
                                    </c:if>


                                    <c:set var="begin" value="${requestScope.commentRanking.pNum-3}" scope="page" />
                                    <c:set var="end" value="${requestScope.commentRanking.pNum + 3}" scope="page" />
                                    <!-- 判断前面有没有10页 -->
                                    <c:if test="${requestScope.commentRanking.pNum-4<0}">
                                        <c:set var="begin" value="1" scope="page" />
                                        <c:set var="end" value="6" scope="page" />
                                    </c:if>

                                    <!-- 判断后面有没有10页 -->
                                    <c:if test="${requestScope.commentRanking.pNum+3 > requestScope.commentRanking.totalPageNum}">
                                        <c:set var="begin" value="${requestScope.commentRanking.totalPageNum-3}" scope="page" />
                                        <c:set var="end" value="${requestScope.commentRanking.totalPageNum}" scope="page" />
                                    </c:if>

                                    <!-- 利用foreach循环输出 -->
                                    <c:forEach begin="${begin}" end="${end}" var="i">
                                        <c:if test="${requestScope.commentRanking.pNum==i}">
                                            <li class="paginate_button active"><a href="#" aria-controls="example2" data-dt-idx="${i }" tabindex="0">${i }</a></li>
                                        </c:if>
                                        <c:if test="${requestScope.commentRanking.pNum!=i}">
                                            <li class="paginate_button "><a href="commentRanking?pNum=${i }" aria-controls="example2" data-dt-idx="${i }" tabindex="0">${i }</a></li>
                                        </c:if>
                                    </c:forEach>




                                    <!-- 上一页 -->
                                    <c:if test="${requestScope.commentRanking.pNum == requestScope.commentRanking.totalPageNum}">
                                        <li class="paginate_button next disabled" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0">Next</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.commentRanking.pNum != requestScope.commentRanking.totalPageNum}">
                                        <li class="paginate_button next" id="example2_next"><a href="commentRanking?pNum=${requestScope.commentRanking.pNum+1}" aria-controls="example2" data-dt-idx="7" tabindex="0">Next</a></li>
                                    </c:if>
                                </ul></div></div></div></div>
                    </div>
                    <!-- /.box-body -->
                    <div id="aplayer1" class="aplayer"></div>
                    <script src="node_modules/aplayer/dist/APlayer.min.js"></script>
                </div>
            </div>
        </section>

        <!-- /.content -->
    </div>
</div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 0.0.1
        </div>
        <strong>Copyright &copy; 2017-2017  All rights
            reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Other sets of options are available
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="resource/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="resource/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="resource/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="resource/bower_components/raphael/raphael.min.js"></script>
<script src="resource/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="resource/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="resource/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="resource/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="resource/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="resource/bower_components/moment/min/moment.min.js"></script>
<script src="resource/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="resource/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="resource/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="resource/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resource/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="resource/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="resource/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resource/dist/js/demo.js"></script>
<%--<script type="text/javascript" src="resource/dist/js/jquery-1.9.1.min.js"></script>--%>
<script type="text/javascript" src="resource/dist/js/jquery.barrager.js?a=1213"></script>
<script type="text/javascript">
    function setMusic(title,author,url) {
        var ap = new APlayer({
            element: document.getElementById('aplayer1'),
            music: {
                title: title,
                author: author,
                url: url,
            }
        });
        ap.pause();
        ap.play();
    }
    function listion_temp(dom,id) {
        $.ajax({
            url: 'getmusicurl',
            type: 'GET',     // 请求类型，常用的有 GET 和 POST
            data: {
                'id': id,
            },
            success: function (data) { // 接口调用成功回调函数
                console.log(data);
                var jsonarray= $.parseJSON(data);
                setMusic($("#"+id).children("td.m_name").html(),$("#"+id).children("td.artists").html(),jsonarray.url);
                TanMu(id);
            },
            async: true
        });
    }
    setMusic("暂无音乐","","");
    function TanMu(id) {
        $.ajaxSettings.async = false;
        $.getJSON('getTanMu?id='+id, function (data) {

//每条弹幕发送间隔
            var looper_time = 3 * 1000;
            var items = data;
//弹幕总数
            var total = data.length;
//是否首次执行
            var run_once = true;
//弹幕索引
            var index = 0;
//先执行一次
            barrager();

            function barrager() {


                if (run_once) {
                    //如果是首次执行,则设置一个定时器,并且把首次执行置为false
                    looper = setInterval(barrager, looper_time);
                    run_once = false;
                }
                //发布一个弹幕
                items[index].speed = 20;
                $('body').barrager(items[index]);
                //索引自增
                index++;
                //所有弹幕发布完毕，清除计时器。
                if (index == total) {

                    clearInterval(looper);
                    return false;
                }


            }


        });
    }
</script>
</body>
</html>


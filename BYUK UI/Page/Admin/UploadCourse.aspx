<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadCourse.aspx.cs" Inherits="BYUK_UI.Page.Admin.UploadCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <link rel="shortcut icon" href="src/image/logoweb.png">
    <title>Belajar Yuk!</title>
    <!-- GLOBAL MAINLY STYLES-->
    <link href="../../assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="./assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <!-- PLUGINS STYLES-->
    <link href="../../assets/vendors/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
    <link href="../../assets/vendors/summernote/dist/summernote.css" rel="stylesheet" />
    <link href="../../assets/vendors/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="../../assets/css/main.min.css" rel="stylesheet" />

    <style type="text/css">
          .side-menu li a:hover{
            background-color: #F9E4C8;
          }
          .side-menu li a.active{
            background-color: #F9E4C8; 
          }
    </style>

</head>

<body class="fixed-navbar">
    <div class="page-wrapper">
        <!-- START HEADER-->
        <header class="header">
            <div class="page-brand" style="background-color: #F9E4C8">
                <a class="link" href="dashboard.php">
                    <div>
                        <img src="../../src/image/logo1.png" width="200px"/>
                    </div>
                </a>
            </div>
            <div class="flexbox flex-1">
                <!-- START TOP-LEFT TOOLBAR-->
                <ul class="nav navbar-toolbar">
                    <li>
                        <a class="nav-link sidebar-toggler js-sidebar-toggler"><i class="ti-menu"></i></a>
                    </li>
                    <li>
                        <form class="navbar-search" action="javascript:;">
                            <div class="rel">
                                <span class="search-icon"><i class="ti-search"></i></span>
                                <input class="form-control" placeholder="Search here...">
                            </div>
                        </form>
                    </li>
                </ul>
                <!-- END TOP-LEFT TOOLBAR-->
                <!-- START TOP-RIGHT TOOLBAR-->
                <ul class="nav navbar-toolbar">
                    <li class="dropdown dropdown-user">
                        <a class="nav-link dropdown-toggle link" data-toggle="dropdown">
                            <img src="../../assets/img/admin-avatar.png" />
                            <span></span>Admin<i class="fa fa-angle-down m-l-5"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="../../Register.aspx"><i class="fa fa-power-off"></i>Logout</a>
                        </ul>
                    </li>
                </ul>
                <!-- END TOP-RIGHT TOOLBAR-->
            </div>
        </header>
        <!-- END HEADER-->
        <!-- START SIDEBAR-->
        <nav class="page-sidebar" id="sidebar" style="background-color: #F9CF93">
            <div id="sidebar-collapse">
                <div class="admin-block d-flex">
                    <div>
                        <img src="../../assets/img/admin-avatar.png" width="45px" />
                    </div>
                    <div class="admin-info">
                        <div class="font-strong" style="color: #000000">James Brown</div><small style="color: #000000">Administrator</small></div>
                </div>
                <ul class="side-menu metismenu">
                    <li>
                        <a href="dashboard.html"><i class="sidebar-item-icon fa fa-th-large" style="color: #000000"></i>
                            <span class="nav-label" style="color: #000000">Beranda</span>
                        </a>
                    </li>
                    <li>
                        <a href="formCourseUp.html"><i class="sidebar-item-icon fa fa-folder-open-o" style="color: #000000"></i>
                            <span class="nav-label" style="color: #000000">All Course</span>
                        </a>
                    </li>
                    <li>
                        <a href="myCourse.html"><i class="sidebar-item-icon fa fa-file" style="color: #000000"></i>
                            <span class="nav-label" style="color: #000000">My Course</span>
                        </a>
                    </li>
                    <li>
                        <a href="profile.html"><i class="sidebar-item-icon fa fa-user-circle" style="color: #000000"></i>
                            <span class="nav-label" style="color: #000000">Profile</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- END SIDEBAR-->
        <div class="content-wrapper">
            <!-- START PAGE CONTENT-->
            <div class="page-heading">
                <h1 class="page-title"> <i class="sidebar-item-icon fa fa-folder-open-o" style="color: #000000"></i> All Course</h1>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" style="color: #FFA45B;">All Course</li>
                </ol>
                
                <div class="box">
                    <div class="container">
                      <!--<form>
                        <i class="sidebar-item-icon fa fa-search"></i>
                        <input class="navbar-search" type="text" placeholder="Cari Judul Informasi" required> 
                        <button class="btn btn-lg" type="submit" style="margin-right: 100px; background-color: #13CEF8;width: 100px; ">Search</button>     
                        </form>-->
                        
                    </div>
                </div>
               
            </div>
            <div class="page-content fade-in-up">
                <div class="ibox">
                    <div class="ibox-head">
                        <div class="ibox-title">Basic Validation</div>
                        <div class="ibox-tools">
                            <a class="ibox-collapse"><i class="fa fa-minus"></i></a>
                        </div>
                    </div>
                    <div class="ibox-body">
                        <form class="form-horizontal" id="form-sample-1" method="post" novalidate="novalidate">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Judul Course</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" name="name">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Keterangan</label> 
                                <div class="col-sm-10">      
                                    <div class="form-control" name="keterangan" id="summernote" data-plugin="summernote" data-air-mode="true">
                                        <h3>Isi Text Disini</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Dokumen</label>
                                <div class="col-sm-10">
                                    <form action="proses.php" method="post" enctype="multipart/form-data">
                                          <p>Choose file ... <input type='file' name='foto' accept='image/*' /></p>
                                    </form>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Tingkat Kursus</label>
                                <div class="col-sm-10"> 
                                    <select class="form-control" id="option">
                                        <option value="">Mudah</option>
                                        <option value="">Menengah</option>
                                        <option value="">Sulit</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10 ml-sm-auto">
                                    <button class="btn btn-info" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT-->
            <footer class="page-footer">
                <div class="font-13">2021 © <b>Belajar Yuk!</b> - All rights reserved.</div>
                <div class="to-top"><i class="fa fa-angle-double-up"></i></div>
            </footer>
        </div>
    </div>
    <!-- BEGIN THEME CONFIG PANEL-->
    
    <!-- END THEME CONFIG PANEL-->
    
    <!-- CORE PLUGINS-->
    <script src="../../assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="../../assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="../../assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../assets/vendors/metisMenu/dist/metisMenu.min.js" type="text/javascript"></script>
    <script src="../../assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS-->
    <!-- PAGE LEVEL PLUGINS-->
    <script src="../../assets/vendors/summernote/dist/summernote.min.js" type="text/javascript"></script>
    <script src="../../assets/vendors/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="../../assets/js/app.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
    <script type="text/javascript">
        $(function() {
            $('#summernote').summernote();
            $('#summernote_air').summernote({
                airMode: true
            });
        });
    </script>
</body>
</html>

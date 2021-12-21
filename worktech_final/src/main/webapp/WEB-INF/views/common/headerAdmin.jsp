<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>관리자 예약 자산 관리</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="resources/dist/assets/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/dist/assets/modules/fontawesome/css/all.min.css">

    <!-- CSS Libraries -->

    <!-- Template CSS -->
    <link rel="stylesheet" href="resources/dist/assets/css/style.css">
    <link rel="stylesheet" href="resources/dist/assets/css/components.css">
    <!-- Start GA -->
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-94034622-3');
    </script>
    <!-- /END GA -->
    <style>
        #searchItem {
            margin-bottom: 0;
        }

        #searchIcon {
            padding: 14.9px;
        }
    </style>
</head>

<body>
    <div id="app">
        <div class="main-wrapper main-wrapper-1">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar">
                <form class="form-inline mr-auto" id="searchItem">
                    <ul class="navbar-nav mr-3">
                        <li>
                            <a href="#" data-toggle="sidebar" class="nav-link nav-link-lg">
                                <i class="fas fa-bars"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none">
                                <i class="fas fa-search"></i>
                            </a>
                        </li>
                    </ul>
                    <div class="search-element">
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search"
                            data-width="250">
                        <button class="btn" type="submit" id="searchIcon">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
                <ul class="navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <img alt="image" src="resources/dist/assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
                            <div class="d-sm-none d-lg-inline-block">관리자</div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="dropdown-title">관리자 님 환영합니다!</div>
                            <a href="#" class="dropdown-item has-icon text-danger">
                                <i class="fas fa-sign-out-alt"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="main-sidebar sidebar-style-2">
                <aside id="sidebar-wrapper">
                    <div class="sidebar-brand">
                        <a href="index.html"><img src="resources/dist/assets/img/logo.png" width="60%" height="auto"></a>
                    </div>
                    <div class="sidebar-brand sidebar-brand-sm">
                        <a href="index.html"><img src="resources/dist/assets/img/logo_small.png" width="45%" height="auto" style="padding-top: 30%;"></a>
                    </div>
                    <ul class="sidebar-menu">
                        <li class="menu-header">Admin Menu</li>
                        <li class="dropdown">
                            <a href="#" class="nav-link">
                                <i class="fas fa-user-friends"></i>
                                <span>사원 관리</span></a>
                        </li>
                        <li>
                            <a class="nav-link" href="blank.html">
                                <i class="fas fa-clock"></i>
                                <span>연장 근무 관리</span></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="nav-link">
                                <i class="fas fa-object-ungroup"></i>
                                <span>부서 관리</span></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="nav-link has-dropdown">
                                <i class="fas fa-th"></i>
                                <span>예약 관리</span></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="nav-link" href="bootstrap-breadcrumb.html">예약 자산 목록</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="bootstrap-alert.html">예약 자산 추가</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="bootstrap-badge.html">예약 자산 수정</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="nav-link has-dropdown">
                                <i class="fas fa-align-justify"></i>
                                <span>게시판 관리</span></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="nav-link" href="components-article.html">공지사항 게시판</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="components-avatar.html">일반 게시판</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="components-chat-box.html">익명 게시판</a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
                        <a href="https://getstisla.com/docs" class="btn btn-primary btn-lg btn-block btn-icon-split">
                            <i class="fas fa-comments"></i>
                            CHAT
                        </a>
                    </div>
                </aside>
            </div>
            
            </div>
            </div>

            <!-- General JS Scripts -->
            <script src="resources/dist/assets/modules/jquery.min.js"></script>
            <script src="resources/dist/assets/modules/popper.js"></script>
            <script src="resources/dist/assets/modules/tooltip.js"></script>
            <script src="resources/dist/assets/modules/bootstrap/js/bootstrap.min.js"></script>
            <script src="resources/dist/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
            <script src="resources/dist/assets/modules/moment.min.js"></script>
            <script src="resources/dist/assets/js/stisla.js"></script>

            <!-- JS Libraies -->

            <!-- Page Specific JS File -->

            <!-- Template JS File -->
            <script src="resources/dist/assets/js/scripts.js"></script>
            <script src="resources/dist/assets/js/custom.js"></script>

</body>

</html>
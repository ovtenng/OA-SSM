<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <meta charset="utf-8">

    <title> 欢迎进入EYEOA系统 </title>

    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="/assets/img/favicon.ico">
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="#">
                <b>EYE</b>OA
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="/assets/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.employee.name} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="/change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/logout" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="/assets/img/avatars/5.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">${sessionScope.employee.name}--${sessionScope.employee.post}</div>
                            <div class="media-links">
                                <a href="/logout">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt15">日常管理</li>
                <li>
                    <a class="accordion-toggle menu-open" href="#">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">报销单管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">

                        <li>
                            <a href="/claim_voucher/deal">
                                <span class="glyphicon glyphicon-book"></span>
                                <span class="sidebar-title">待处理报销单</span>
                                
                            </a>
                        </li>
                        <li>
                            <a href="/claim_voucher/self">
                                <span class="glyphicon glyphicon-home"></span>
                                <span class="sidebar-title">个人报销单</span>
                            </a>
                        </li>
                        <li>
                            <a href="/claim_voucher/add">
                                <span class="fa fa-calendar"></span>
                                <span class="sidebar-title">填写报销单</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle menu-open" href="#">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">请假单管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/leave_voucher/deal">
                                <span class="glyphicon glyphicon-book"></span>
                                <span class="sidebar-title">待处理请假单</span>
                            </a>
                        </li>
                        <li>
                            <a href="/leave_voucher/self">
                                <span class="glyphicon glyphicon-home"></span>
                                <span class="sidebar-title">个人请假单</span>
                            </a>
                        </li>
                        <li>
                            <a href="/leave_voucher/add">
                                <span class="fa fa-calendar"></span>
                                <span class="sidebar-title">填写请假单</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <c:if test="${sessionScope.employee.authority.level==10}">
                    <li class="sidebar-label pt15">基础信息管理</li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="glyphicon glyphicon-check"></span>
                            <span class="sidebar-title">员工管理</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="nav sub-nav">
                            <li>
                                <a href="/employee/list">
                                    <span class="glyphicon glyphicon-calendar"></span> 所有员工 </a>
                            </li>
                            <li class="active">
                                <a href="/employee/add">
                                    <span class="glyphicon glyphicon-check"></span> 添加员工 </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-columns"></span>
                            <span class="sidebar-title">部门管理</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="nav sub-nav">
                            <li>
                                <a href="/department/list">
                                    <span class="glyphicon glyphicon-calendar"></span> 所有部门 </a>
                            </li>
                            <li class="active">
                                <a href="/department/add">
                                    <span class="glyphicon glyphicon-check"></span> 添加部门 </a>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">
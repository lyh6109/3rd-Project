<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control", "no-cache");
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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/favicon.png">
    <!-- END META SECTION -->
    <!-- BEGIN MANDATORY STYLE -->
    <link href="${pageContext.request.contextPath}/resources/pixit/admin/assets/css/icons/icons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/pixit/admin/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/pixit/admin/assets/css/plugins.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/pixit/admin/assets/css/style.min.css" rel="stylesheet">
    <link href="#" rel="stylesheet" id="theme-color">
    <!-- END  MANDATORY STYLE -->
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body data-page="comments">
    <!-- BEGIN TOP MENU -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sidebar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a id="menu-medium" class="sidebar-toggle tooltips">
                    <i class="fa fa-outdent"></i>
                </a>
                <a class="navbar-brand" href="index.html"></a>
            </div>
            <div class="navbar-center">Comments</div>
            <div class="navbar-collapse collapse">
                <!-- BEGIN TOP NAVIGATION MENU -->
                <ul class="nav navbar-nav pull-right header-menu">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown" id="notifications-header">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="glyph-icon flaticon-notifications"></i>
                            <span class="badge badge-danger badge-header">6</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header clearfix">
                                <p class="pull-left">Notifications</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list withScroll" data-height="220">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-star p-r-10 f-18 c-orange"></i>
                                            Steve have rated your photo
                                            <span class="dropdown-time">Just now</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-heart p-r-10 f-18 c-red"></i>
                                            John added you to his favs
                                            <span class="dropdown-time">15 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-file-text p-r-10 f-18"></i>
                                            New document available
                                            <span class="dropdown-time">22 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                                            New picture added
                                            <span class="dropdown-time">40 mins</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-bell p-r-10 f-18 c-orange"></i>
                                            Meeting in 1 hour
                                            <span class="dropdown-time">1 hour</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-bell p-r-10 f-18"></i>
                                            Server 5 overloaded
                                            <span class="dropdown-time">2 hours</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-comment p-r-10 f-18 c-gray"></i>
                                            Bill comment your post
                                            <span class="dropdown-time">3 hours</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-picture-o p-r-10 f-18 c-blue"></i>
                                            New picture added
                                            <span class="dropdown-time">2 days</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-footer clearfix">
                                <a href="#" class="pull-left">See all notifications</a>
                                <a href="#" class="pull-right">
                                    <i class="fa fa-cog"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN MESSAGES DROPDOWN -->
                    <li class="dropdown" id="messages-header">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="glyph-icon flaticon-email"></i>
                            <span class="badge badge-primary badge-header">
                             8
                        </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header clearfix">
                                <p class="pull-left">
                                    Messages
                                </p>
                            </li>
                            <li class="dropdown-body">
                                <ul class="dropdown-menu-list withScroll" data-height="220">
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>Alexa Johnson</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>12 mins ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar4.png" alt="avatar 4">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>John Smith</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>47 mins ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar5.png" alt="avatar 5">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>Bobby Brown</strong>  
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>1 hour ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <span class="pull-left p-r-5">
                                            <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar6.png" alt="avatar 6">
                                        </span>
                                        <div class="clearfix">
                                            <div>
                                                <strong>James Miller</strong> 
                                                <small class="pull-right text-muted">
                                                    <span class="glyphicon glyphicon-time p-r-5"></span>2 days ago
                                                </small>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-footer clearfix">
                                <a href="mailbox.html" class="pull-left">See all messages</a>
                                <a href="#" class="pull-right">
                                    <i class="fa fa-cog"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END MESSAGES DROPDOWN -->
                    <!-- BEGIN USER DROPDOWN -->
                    <li class="dropdown" id="user-header">
                        <a href="#" class="dropdown-toggle c-white" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar2.png" alt="user avatar" width="30" class="p-r-5">
                            <span class="username">Bob Nilson</span>
                            <i class="fa fa-angle-down p-r-10"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="profil.html">
                                    <i class="glyph-icon flaticon-account"></i> My Profile
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html">
                                    <i class="glyph-icon flaticon-calendar"></i> My Calendar
                                </a>
                            </li>
                            <li>
                                <a href="profil_edit.html">
                                    <i class="glyph-icon flaticon-settings21"></i> Account Settings
                                </a>
                            </li>
                            <li class="dropdown-footer clearfix">
							<a href="javascript:;" class="toggle_fullscreen" title="Fullscreen">
								<i class="glyph-icon flaticon-fullscreen3"></i>
							</a>
							<a href="lockscreen.html" title="Lock Screen">
								<i class="glyph-icon flaticon-padlock23"></i>
							</a>
							<a href="login.html" title="Logout">
								<i class="fa fa-power-off"></i>
							</a>
						</li>
                        </ul>
                    </li>
                    <!-- END USER DROPDOWN -->

                    <!-- BEGIN CHAT HEADER -->
                    <li id="chat-header">
                        <a href="#" class="c-white" id="chat-toggle">
                            <i class="glyph-icon flaticon-speech76 f-24"></i>
                            <span id="chat-notification" class="notification notification-danger hide" data-delay="2000"></span>
                        </a>
                        <div id="chat-popup" class="chat-popup hide" data-delay="2000">
                            <div class="arrow-up"></div>
                            <div class="chat-popup-inner bg-blue">
                                <div>
                                    <div class="clearfix w-600">
                                        <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3" width="30" class="pull-left img-circle p-r-5">Alexa Johnson</div>
                                    <div class="message m-t-5">Hey you there?</div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- END CHAT HEADER -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
    </nav>
    <!-- END TOP MENU -->
    <!-- BEGIN WRAPPER -->
    <div id="wrapper">
        <!-- BEGIN MAIN SIDEBAR -->
        <nav id="sidebar">
            <div id="main-menu">
                <ul class="sidebar-nav">
                    <li>
                        <a href="index.html"><i class="fa fa-dashboard"></i><span class="sidebar-text">Dashboard</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-shopping80"></i><span class="sidebar-text">eCommerce</span>
                        <span class="fa arrow"></span><span class="label label-danger pull-right m-r-20 w-300">New</span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="ecommerce_dashboard.html"><span class="sidebar-text">Dashboard<span class="label label-dark pull-right">Hot</span></span></a>
                            </li>
                            <li>
                                <a href="ecommerce_products.html"><span class="sidebar-text">Products</span></a>
                            </li>
                            <li>
                                <a href="ecommerce_product_view.html"><span class="sidebar-text">Product View</span></a>
                            </li>
                            <li>
                                <a href="ecommerce_orders.html"><span class="sidebar-text">Orders</span></a>
                            </li>
                            <li>
                                <a href="ecommerce_order_view.html"><span class="sidebar-text">Order View</span></a>
                            </li>
                            <li>
                                <a href="ecommerce_invoice.html"><span class="sidebar-text">Invoice</span></a>
                            </li>
                            <li>
                                <a href="ecommerce_pricing.html"><span class="sidebar-text">Pricing Tables</span></a>
                            </li>
                            <li>
                                <a href="shopping_cart.html"><span class="sidebar-text">Shopping Cart<span class="label label-danger pull-right">New</span></span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit"></i><span class="sidebar-text">Blogging</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="blog_dashboard.html"><span class="sidebar-text">Dashboard<span class="label label-dark pull-right">Hot</span></span></a>
                            </li>
                            <li>
                                <a href="posts.html"><span class="sidebar-text">Articles</span></a>
                            </li>
                            <li>
                                <a href="post_edit.html"><span class="sidebar-text">Article View</span></a>
                            </li>
                            <li>
                                <a href="events.html"><span class="sidebar-text">Events</span></a>
                            </li>
                            <li>
                                <a href="event_edit.html"><span class="sidebar-text">Event View</span></a>
                            </li>
                            <li>
                                <a href="blog-list.html"><span class="sidebar-text">Blog List</span></a>
                            </li>
                            <li>
                                <a href="blog-single.html"><span class="sidebar-text">Blog Single</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../frontend/index.html" target="_blank"><i class="glyph-icon flaticon-frontend"></i><span class="sidebar-text">Frontend</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-star105"></i><span class="sidebar-text">Extra</span>
                        <span class="fa arrow"></span><span class="label label-primary pull-right m-r-20 w-300">Hot</span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="widgets.html"><span class="sidebar-text">Widgets</span></a>
                            </li>
                            <li>
                                <a href="intro.html"><span class="sidebar-text">Intro</span></a>
                            </li>
                            <li>
                                <a href="coming_soon.html"><span class="sidebar-text">Coming Soon</span></a>
                            </li>
                            <li>
                                <a href="notes.html"><span class="sidebar-text">Notes</span></a>
                            </li>
                            <li>
                                <a href="calendar.html"><span class="sidebar-text">Calendar</span></a>
                            </li>
                            <li>
                                <a href="maps.html"><span class="sidebar-text">Google Maps</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-pencil"></i><span class="sidebar-text">Colors Options</span>
                            <span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="#" data-style="dark" class="theme-color"><span class="sidebar-text">Dark Skin</span></a>
                            </li>
                            <li>
                                <a href="#" data-style="light" class="theme-color"><span class="sidebar-text">Light Skin</span></a>
                            </li>
                            <li>
                                <a href="#" data-style="cafe" class="theme-color"><span class="sidebar-text">Cafe Skin</span></a>
                            </li>
                            <li>
                                <a href="#" data-style="blue" class="theme-color"><span class="sidebar-text">Blue Skin</span></a>
                            </li>
                            <li>
                                <a href="#" data-style="red" class="theme-color"><span class="sidebar-text">Red Skin</span></a>
                            </li>
                            <li>
                                <a href="#" data-style="green" class="theme-color"><span class="sidebar-text">Green Skin</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-email"></i><span class="sidebar-text">Email</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="mailbox.html"><span class="sidebar-text">Inbox</span></a>
                            </li>
                            <li>
                                <a href="email_compose.html"><span class="sidebar-text">Write a Message</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-forms"></i><span class="sidebar-text">Forms</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="forms.html"><span class="sidebar-text">Form Elements</span></a> 
                            </li>
                            <li>
                                <a href="form_validation.html"><span class="sidebar-text">Form Validation</span></a>
                            </li>
                            <li>
                                <a href="form_wizards.html"><span class="sidebar-text">Form Wizards</span></a>
                            </li>
                            <li>
                                <a href="sliders.html"><span class="sidebar-text">Sliders</span></a>
                            </li>
                            <li>
                                <a href="wysiwyg.html"><span class="sidebar-text">Editors</span></a>
                            </li>
                            <li>
                                <a href="file_upload.html"><span class="sidebar-text">File Upload</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-ui-elements2"></i><span class="sidebar-text">UI Elements</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="components.html"><span class="sidebar-text">Components</span></a>
                            </li>
                            <li>
                                <a href="animations.html"><span class="sidebar-text">Animations CSS3</span></a>
                            </li>
                            <li>
                                <a href="buttons.html"><span class="sidebar-text">Buttons</span></a>
                            </li>
                            <li>
                                <a href="icons.html"><span class="sidebar-text">Icons</span></a>
                            </li>
                            <li>
                                <a href="typography.html"><span class="sidebar-text">Typography</span></a>
                            </li>
                            <li>
                                <a href="modals.html"><span class="sidebar-text">Modals</span></a>
                            </li>
                            <li>
                                <a href="notifications.html"><span class="sidebar-text">Notifications</span></a>
                            </li>
                            <li>
                                <a href="tabs_accordion.html"><span class="sidebar-text">Tabs &amp; Accordion</span></a>
                            </li>
                            <li>
                                <a href="nestable-list.html"><span class="sidebar-text">Nestable &amp; Sortable lists</span></a>
                            </li>
                            <li>
                                <a href="tree.html"><span class="sidebar-text">Tree View</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="active current hasSub">
                        <a href="#"><i class="glyph-icon flaticon-pages"></i><span class="sidebar-text">Pages</span><span class="fa arrow"></span>
                            <span class="label label-danger pull-right m-r-20 w-300">New</span>
                        </a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="timeline.html"><span class="sidebar-text">Timeline</span></a>
                            </li>
                            <li>
                                <a href="forum.html"><span class="sidebar-text">Forum<span class="label label-dark pull-right">New</span></span></a>
                            </li>
                            <li>
                                <a href="members.html"><span class="sidebar-text">Members</span></a>
                            </li>
                            <li>
                                <a href="search_results.html"><span class="sidebar-text">Search Results<span class="label label-danger pull-right">New</span></span></a>
                            </li>
                            <li>
                                <a href="contact.html"><span class="sidebar-text">Contact<span class="label label-danger pull-right">New</span></span></a>
                            </li>
                            <li class="current">
                                <a href="comments.html"><span class="sidebar-text">Comments</span></a>
                            </li>
                            <li>
                                <a href="faq.html"><span class="sidebar-text">FAQ</span></a>
                            </li>
                            <li>
                                <a href="404.html"><span class="sidebar-text">404 Error Page</span></a>
                            </li>
                            <li>
                                <a href="500.html"><span class="sidebar-text">500 Error Page</span></a>
                            </li>
                            <li>
                                <a href="blank_page.html"><span class="sidebar-text">Blank Page</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-panels"></i><span class="sidebar-text">Panels</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="panels.html"><span class="sidebar-text">Custom Panels</span></a>
                            </li>
                            <li>
                                <a href="panels_draggable.html"><span class="sidebar-text">Draggable Panels</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table"></i><span class="sidebar-text">Tables</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="tables.html"><span class="sidebar-text">Style Tables</span></a>
                            </li>
                            <li>
                                <a href="tables_editable.html"><span class="sidebar-text">Editable Tables</span></a>
                            </li>
                            <li>
                                <a href="tables_dynamic.html"><span class="sidebar-text">Dynamic Tables</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-account"></i><span class="sidebar-text">Account</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="profil.html"><span class="sidebar-text">User Profile</span></a>
                            </li>
                            <li>
                                <a href="profil_edit.html"><span class="sidebar-text">Profil Edit</span></a>
                            </li>
                            <li>
                                <a href="login.html"><span class="sidebar-text">Login</span></a>
                            </li>
                            <li>
                                <a href="signup.html"><span class="sidebar-text">Signup</span></a>
                            </li>
                            <li>
                                <a href="password_forgot.html"><span class="sidebar-text">Password recover</span></a>
                            </li>
                            <li>
                                <a href="lockscreen.html"><span class="sidebar-text">Lockscreen</span></a>
                            </li>
                            <li>
                                <a href="session_timeout.html"><span class="sidebar-text">Session Timeout</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="glyph-icon flaticon-gallery"></i><span class="sidebar-text">Images Manager</span><span class="fa arrow"></span></a>
                        <ul class="submenu collapse">
                            <li>
                                <a href="gallery.html"><span class="sidebar-text">Gallery</span></a>
                            </li>
                            <li>
                                <a href="medias.html"><span class="sidebar-text">Medias</span></a>
                            </li>
                            <li>
                                <a href="image_croping.html"><span class="sidebar-text">Image Croping</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="m-b-245">
                        <a href="charts.html"><i class="glyph-icon flaticon-charts2"></i><span class="sidebar-text">Charts</span><span class="pull-right label label-primary">6</span></a>
                    </li>
                </ul>
            </div>
            <div class="footer-widget">
                <div class="footer-gradient"></div>
                <div id="sidebar-charts">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Orders</div>
                            <div class="sidebar-chart-number">1,256</div>
                        </div>
                        <div class="sidebar-charts-right" data-type="bar" data-color="theme">
                            <span class="dynamicbar1"></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Income</div>
                            <div class="sidebar-chart-number">$47,564</div>
                        </div>
                        <div class="sidebar-charts-right" data-type="bar" data-color="theme">
                            <span class="dynamicbar2"></span>
                        </div>
                    </div>
                    <hr class="divider">
                    <div class="sidebar-charts-inner">
                        <div class="sidebar-charts-left">
                            <div class="sidebar-chart-title">Visits</div>
                            <div class="sidebar-chart-number" id="number-visits">147,687</div>
                        </div>
                        <div class="sidebar-charts-right" data-type="bar" data-color="theme">
                            <span class="dynamicbar3"></span>
                        </div>
                    </div>
                </div>
                <div class="sidebar-footer clearfix">
                    <a class="pull-left" href="profil_edit.html" data-rel="tooltip" data-placement="top" data-original-title="Settings"><i class="glyph-icon flaticon-settings21"></i></a>
                    <a class="pull-left toggle_fullscreen" href="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen"><i class="glyph-icon flaticon-fullscreen3"></i></a>
                    <a class="pull-left" href="lockscreen.html" data-rel="tooltip" data-placement="top" data-original-title="Lockscreen"><i class="glyph-icon flaticon-padlock23"></i></a>
                    <a class="pull-left" href="login.html" data-rel="tooltip" data-placement="top" data-original-title="Logout"><i class="fa fa-power-off"></i></a>
                </div>
            </div>
        </nav>
        <!-- END MAIN SIDEBAR -->
        <!-- BEGIN MAIN CONTENT -->
        <div id="main-content" class="page-comment">
            <div class="page-title"> <i class="icon-custom-left"></i>
                <h2>Comments <small>from users</small></h2>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row m-b-30">
                                <div class="col-md-8">
                                    <button type="button" class="btn btn-white m-b-10 m-r-10">All</button>
                                    <button type="button" class="btn btn-dark m-b-10 m-r-10">
                                        <i class="fa fa-clock-o p-r-10"></i> Waiting approval 
                                        <span class="badge badge-white m-l-10">36</span>
                                    </button>
                                    <button type="button" class="btn btn-white m-b-10 m-r-10">
                                        <i class="fa fa-check p-r-10"></i> Approved
                                    </button>
                                    <button type="button" class="btn btn-white m-b-10 m-r-10">
                                        <i class="fa fa-trash-o p-r-10"></i> Trashed
                                    </button>
                                </div>
                                <div class="col-md-4 align-right">
                                    <input type="text" id="member-finder" class="form-control" placeholder="Search a comment...">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <select class="form-control" title="Select Comments" data-width="250">
                                        <option>&nbsp;</option>
                                        <option>Approve</option>
                                        <option>Edit</option>
                                        <option>Delete</option>
                                    </select>
                                </div>
                                <div class="col-sm-6 align-right hidden-sm hidden-xs">
                                    <ul class="pagination m-t-0">
                                    <li><span><i class="fa fa-angle-left c-gray-light"></i></span></li>
                                    <li class="active"><span>1</span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><span>...</span></li>
                                    <li><a href="#">9</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                </div>
                            </div>
                        </div>
                        <!-- BEGIN COMMENTS LIST -->
                        <div class="panel-body comments-list">
                            <div class="row">
                                <div class="col-md-12 p-30 comment m-t-0">
                                    <div class="row">
                                        <div class="comment-checkbox">
                                            <input type="checkbox">
                                        </div>
                                        <div class="comment-content">
                                            <div class="comment-header f-16 clearfix">
                                                <div class="pull-left">
                                                    <a href="#">John Miller</a> <span class="c-gray">commented on</span> <a href="#">Billy Paul</a>
                                                </div>
                                                <div class="pull-right f-12">
                                                   <span class="c-gray">Monday, 04 March - 10:49</span>
                                                </div>
                                            </div>
                                            <p class="comment-text">
                                                To continue to thrive as a business over the next ten years and beyond, we must look ahead, understand the trends and forces that will shape our business in the future and move swiftly to prepare for what's to come. We must get ready for tomorrow today. That's what our 2020 Vision is all about. It creates a long-term destination for our business and provides us with a "Roadmap" for winning together with our bottling partners.
                                            </p>
                                            <div class="comment-footer">
                                                <div>
                                                    <a href="#" class="aprrove btn btn-success m-r-10" data-rel="tooltip" data-original-title="Approve"><i class="fa fa-check"></i></a>
                                                    <a href="#" class="delete btn btn-danger m-r-10" data-rel="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                    <a href="#" class="edit btn btn-default" data-rel="tooltip" data-original-title="Edit">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 p-30 comment">
                                    <div class="row">
                                        <div class="comment-checkbox">
                                            <input type="checkbox">
                                        </div>
                                        <div class="comment-content">
                                            <div class="comment-header f-16 clearfix">
                                                <div class="pull-left">
                                                    <a href="#">Mike Raynolds</a> <span class="c-gray">commented on</span> <a href="#">Ecommerce</a>
                                                </div>
                                                <div class="pull-right f-12">
                                                   <span class="c-gray">Wednesday, 01 March - 9:28</span>
                                                </div>
                                            </div>
                                            <p class="comment-text">
                                                To continue to thrive as a business over the next ten years and beyond, we must look ahead, understand the trends and forces that will shape our business in the future and move swiftly to prepare for what's to come. We must get ready for tomorrow today. That's what our 2020 Vision is all about. It creates a long-term destination for our business and provides us with a "Roadmap" for winning together with our bottling partners.
                                            </p>
                                            <div class="comment-footer">
                                                <div>
                                                    <a href="#" class="aprrove btn btn-success m-r-10" data-rel="tooltip" data-original-title="Approve"><i class="fa fa-check"></i></a>
                                                    <a href="#" class="delete btn btn-danger m-r-10" data-rel="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                    <a href="#" class="edit btn btn-default" data-rel="tooltip" data-original-title="Edit">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 p-30 comment">
                                    <div class="row">
                                        <div class="comment-checkbox">
                                            <input type="checkbox">
                                        </div>
                                        <div class="comment-content">
                                            <div class="comment-header f-16 clearfix">
                                                <div class="pull-left">
                                                    <a href="#">Nicole Smith</a> <span class="c-gray">commented on</span> <a href="#">Weather</a>
                                                </div>
                                                <div class="pull-right f-12">
                                                   <span class="c-gray">Tuesday, 30 April - 17:52</span>
                                                </div>
                                            </div>
                                            <p class="comment-text">
                                                To continue to thrive as a business over the next ten years and beyond, we must look ahead, understand the trends and forces that will shape our business in the future and move swiftly to prepare for what's to come. We must get ready for tomorrow today. That's what our 2020 Vision is all about. It creates a long-term destination for our business and provides us with a "Roadmap" for winning together with our bottling partners.
                                            </p>
                                            <div class="comment-footer">
                                                <div>
                                                    <a href="#" class="aprrove btn btn-success m-r-10" data-rel="tooltip" data-original-title="Approve"><i class="fa fa-check"></i></a>
                                                    <a href="#" class="delete btn btn-danger m-r-10" data-rel="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                    <a href="#" class="edit btn btn-default" data-rel="tooltip" data-original-title="Edit">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-t-30 align-center">
                               <ul class="pagination">
                                    <li><span><i class="fa fa-angle-left c-gray-light"></i></span></li>
                                    <li class="active"><span>1</span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><span>...</span></li>
                                    <li><a href="#">9</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- END COMMENTS LIST -->
                        <!-- BEGIN MODAL COMMENT EDIT -->
                        <div class="modal fade in" id="modal-edit-comment" aria-hidden="false">
                            <div class="modal-dialog" style="width: 55%">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title">Edit Comment</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <a href="#"><img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar7_big.png" alt="avatar 7" class="img-responsive" width="150"></a>
                                                <br>
                                                <span class="c-gray">Comments:</span> <span>65</span><br>
                                                <span class="c-gray">Member since:</span> <span>2009</span>
                                            </div>
                                            <div class="col-sm-10">
                                                <div class="row m-b-20">
                                                    <div class="col-md-12">
                                                        <p>Name: <a href="#">Steven Williams</a></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Comment</label>
                                                            <textarea class="form-control" style="min-height: 130px">To continue to thrive as a business over the next ten years and beyond, we must look ahead, understand the trends and forces that will shape our business in the future and move swiftly to prepare for what's to come. We must get ready for tomorrow today. That's what our 2020 Vision is all about. It creates a long-term destination for our business and provides us with a "Roadmap" for winning together with our bottling partners.
                                                            </textarea>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Date Added</label>
                                                            <p><strong>Wednesday, 18 May - 16:23</strong></p>
                                                        </div>  
                                                    </div>
                                                    <div class="col-md-6 align-right">
                                                        <div class="form-group">
                                                            <label class="control-label">Article</label>
                                                            <p> 
                                                                <a href="#"><strong>Ecommerce Tips</strong></a>
                                                            </p>
                                                        </div>  
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="pull-left">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-info">Update</button>              
                                        </div>
                                        <div class="pull-right">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
                                            <button type="button" class="btn btn-success">Approve</button>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END MODAL COMMENT EDIT -->
                    </div>
                </div>
            </div>

 
        </div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END WRAPPER -->
    <!-- BEGIN CHAT MENU -->
    <nav id="menu-right">
        <ul>
            <li class="mm-label label-big">ONLINE</li>
            <li class="img no-arrow have-message">
                <span class="inside-chat">
                    <i class="online"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3"/>
                    <span class="chat-name">Alexa Johnson</span>
                    <span class="pull-right badge badge-danger hide">3</span>
                    <span>Los Angeles</span>
                </span>
                <ul class="chat-messages">
                    <li class="img">
                        <span>
                            <span class="chat-detail">
                                <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3"/>
                                <span class="chat-bubble"><span class="bubble-inner">Hi you!</span></span>
                            </span>
                        </span>
                    </li>
                    <li class="img">
                        <span>
                            <span class="chat-detail">
                                <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3"/>
                                <span class="chat-bubble"><span class="bubble-inner">You there?</span></span>
                            </span>
                        </span>
                    </li>
                    <li class="img">
                        <span>
                            <span class="chat-detail">
                                <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar3.png" alt="avatar 3"/>
                                <span class="chat-bubble">
                                    <span class="bubble-inner">Let me know when you come back</span>
                                </span>
                            </span>
                        </span>
                    </li>
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="online"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar2.png" alt="avatar 2"/>
                    <span class="chat-name">Bobby Brown</span>
                    <span>New York</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="busy"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar13.png" alt="avatar 13"/>
                    <span class="chat-name">Fred Smith</span>
                    <span>Atlanta</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="away"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar4.png" alt="avatar 4"/>
                    <span class="chat-name">James Miller</span>
                    <span>Seattle</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="online"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar5.png" alt="avatar 5"/>
                    <span class="chat-name">Jefferson Jackson</span>
                    <span>Los Angeles</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="mm-label label-big m-t-30">OFFLINE</li>

            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar6.png" alt="avatar 6"/>
                    <span class="chat-name">Jordan</span>
                    <span>Savannah</span>
                </span>
                <ul class="chat-messages">
                   <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar7.png" alt="avatar 7"/>
                    <span class="chat-name">Kim Addams</span>
                    <span>Birmingham</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar8.png" alt="avatar 8"/>
                    <span class="chat-name">Meagan Miller</span>
                    <span>San Francisco</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                        <i class="offline"></i>
                        <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar9.png" alt="avatar 9"/>
                        <span class="chat-name">Melissa Johnson</span>
                        <span>Austin</span>
                    </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar12.png" alt="avatar 12"/>
                    <span class="chat-name">Nicole Smith</span>
                    <span>San Diego</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar11.png" alt="avatar 11"/>
                    <span class="chat-name">Samantha Harris</span>
                    <span>Salt Lake City</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
            <li class="img no-arrow">
                <span class="inside-chat">
                    <i class="offline"></i>
                    <img src="${pageContext.request.contextPath}/resources/pixit/admin/assets/img/avatars/avatar10.png" alt="avatar 10"/>
                    <span class="chat-name">Scott Thomson</span>
                    <span>Los Angeles</span>
                </span>
                <ul class="chat-messages">
                    <li>
                        <span class="chat-input">
                            <input type="text" class="form-control send-message" placeholder="Type your message" />
                        </span>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- END CHAT MENU -->
    <!-- BEGIN MANDATORY SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/jquery-1.11.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/jquery-migrate-1.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/jquery-mobile/jquery.mobile-1.4.2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/bootstrap-select/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/nprogress/nprogress.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/charts-sparkline/sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/breakpoints/breakpoints.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/numerator/jquery-numerator.js"></script>
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
    <!-- END MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/js/comments.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/pixit/admin/assets/js/application.js"></script>
</body>
</html>


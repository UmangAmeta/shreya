<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>SHREYA | ADVERTISMENT</title>
    <link rel="icon" type="image/x-icon" href="images/icon/favicon.ico" />
    <!--[if lt IE 9]>
        <script src="js/vendor/html5.js" type="text/javascript">
        </script>
        <![endif]-->
    <link rel='stylesheet' href='css/_packed.css' type='text/css' media='all' />
    <link rel='stylesheet' href='js/vendor/revslider/css/settings.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/fontello.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/shortcodes.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/general.css' type='text/css' media='all' />
    <style id="theme-skin-inline-css" type="text/css"></style>
    <link rel='stylesheet' href='css/responsive.css' type='text/css' media='all' />
</head>
<body class="home page wild top_panel_above top_panel_opacity_transparent theme_skin_general usermenu_show">
    <div class="main_content">
        <div class="boxedWrap">
            <header class="noFixMenu menu_right with_user_menu no_container_padding">
                <div class="topWrapFixed"></div>
                <div class="topWrap">
                             <div class="usermenu_area">
                        <div class="container">
                            <div class="menuUsItem menuItemRight">
                                <ul class="usermenu_list" id="usermenu">

                                    <li class="usermenu_login">
                                        <a href="login.aspx">Login</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="menuUsItem menuItemLeft">
                                <span class="icon-phone"></span>
                                <a href="tel:+91-9893954975">+91-9893-954-975</a>                                <span class="icon-email"></span>
                                <a href="#">
                                    <span><span class="__cf_email__">Shr.advertising@gmail.com</span></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="mainmenu_area">
                        <div class="container with_logo_left">
                            <div class="logo logo_left">
                                <a href="Default.aspx">
                                    <img src="images/logo/logonew.png" class="logo_main" alt="">
                                    <img src="images/logo/logonew.png" class="logo_fixed" alt="">
                                    <span class="logo_slogan"></span>
                                </a>
                            </div>

                            <a href="#" class="openResponsiveMenu">Menu</a>
                            <nav role="navigation" class="menuTopWrap topMenuStyleLine">
                                <ul id="mainmenu" class="">
                                    <li class="menu-item current-menu-item current_page_item menu-item-home">
                                        <a href="Default.aspx">Home</a>
                                    </li>

                                    <li class="menu-item">
                                        <a href="aboutus.aspx">About us</a>
                                    </li>

                                    <li class="menu-item menu-item-has-children">
                                        <a href="#">Our Services</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item">
                                                <a href="Advertisment.aspx">Advertisment</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="Fabrication.aspx">Fabrication</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="RoadFurniture.aspx">Road Furniture</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="EventManagement.aspx">Event Management</a>
                                            </li>
                                        </ul>
                                    </li>


                                    <li class="menu-item">
                                        <a href="Gallery.aspx">Gallery</a>
                                    </li>
                                    <li class="=menu-item">
                                        <a href="Contactus.aspx">Contact</a>
                                    </li>

                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>


            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/slider/slider3.jpg" alt="Los Angeles" style="width: 100%;">
                    </div>

                    <div class="item">
                        <img src="images/slider/slider1.jpg" alt="Chicago" style="width: 100%;">
                    </div>

                    <div class="item">
                        <img src="images/slider/slider2.jpg" alt="New York" style="width: 100%;">
                        <%--   <div class="carousel-caption">
                                <h3>New York</h3>
                                <p>We love the Big Apple!</p>
                            </div>--%>
                    </div>
                    <div class="item">
                        <img src="images/slider/slider4.jpg" alt="New York" style="width: 100%;">
                    </div>
                    <div class="item">
                        <img src="images/slider/slider5.jpg" alt="New York" style="width: 100%;">
                    </div>
                    <div class="item">
                        <img src="images/slider/slider6.jpg" alt="New York" style="width: 100%;">
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <%-- <div id="mainslider_1" class="sliderHomeBullets staticSlider slider_engine_revo slider_alias_revo-seo1">
                

                <div id="rev_slider_wrapper" class="rev_slider_wrapper fullwidthbanner-container">
                    <div id="rev_slider" class="rev_slider fullwidthabanner">

                       
                    </div>
                </div>
            </div>--%>
            <div class="mainWrap without_sidebar">
                <div class="content">

                    <section class="grey_section">
                        <div class="container">
                            <div class="row ">
                                <div class="col-sm-4">
                                    <div class="text-center animated">
                                        <a class="sc_title_linked" href="#">
                                            <div class="sc_title_icon sc_title_top sc_size_huge inherit">
                                                <img src="images/icon/featured_icon_1.png" alt="" />
                                            </div>
                                            <h3 class="sc_title sc_title_iconed sc_title_bold margin_top_small">Years of Expertise</h3>
                                        </a>
                                        <span class="sc_highlight sc_highlight_style_3">We have been on advertising for 12 years helping you compete on  your visitors into your clients.
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="text-center animated">
                                        <a class="sc_title_linked" href="#">
                                            <div class="sc_title_icon sc_title_top sc_size_huge inherit">
                                                <img src="images/icon/featured_icon_2.png" alt="" />
                                            </div>
                                            <h3 class="sc_title sc_title_iconed sc_title_bold margin_top_small">Over 2000 Clients</h3>
                                        </a>
                                        <span class="sc_highlight sc_highlight_style_3">We strive to ensure that our customers are satisfied and we work continuously to develop your projects and surpass your expectations.
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="text-center animated">
                                        <a class="sc_title_linked" href="#">
                                            <div class="sc_title_icon sc_title_top sc_size_huge inherit">
                                                <img src="images/icon/featured_icon_3.png" alt="" />
                                            </div>
                                            <h3 class="sc_title sc_title_iconed sc_title_bold margin_top_small">Advertising</h3>
                                        </a>
                                        <span class="sc_highlight sc_highlight_style_3">Rankings, links, brand, content, traffic – all you need is right here! Simply drop us a line, and you will get your conversions!
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <%--<div class="text-center animated">
                                        <div class="sc_button margin_top_big sc_button_style_dark sc_button_size_banner squareButton dark banner">
                                        </div>
                                    </div>--%>
                                    <video width="100%" height="auto" controls>
                                        <source src="images/logo/movie.mp4" type="video/mp4">
                                    </video>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="text-center animated">
                                        <h1 class="sc_title sc_title_regular margin_top_middle sc_title_big">What is Advertising?</h1>
                                        <h3 class="sc_title sc_title_regular">Shreya Advertising</h3>
                                        <div class="sc_section bg_tint_none text-center">
                                            <span class="sc_highlight">Advertising is a marketing communication that employs an openly sponsored, non-personal message to promote or sell a product, service or idea. Sponsors of advertising are typically businesses wishing to promote their products or services.
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section class="darkgrey_section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-sm-7">
                                    <div class="animated">
                                        <span class="sc_highlight sc_highlight_style_4">Not enough for your Advertising needs?</span>
                                        <span class="sc_highlight sc_highlight_style_5">shreya advetising Want to add more projects to analyze?</span>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-5">
                                    <div class="text-center">
                                        <div class="sc_button sc_button_style_dark sc_button_size_banner squareButton dark banner animated">
                                            <a href="Contactus.aspx" class="">More query Contact</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="light_section">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="text-center animated">
                                        <figure class="sc_image  sc_image_shape_square">
                                            <img src="images/Picture1.jpg" alt="" />
                                        </figure>
                                    </div>
                                </div>
                                <div class="col-sm-7 no_margin">
                                    <div class="animated">
                                        <h2 class="sc_title sc_title_regular sc_title_big">Premium Services Available in Higher Plans</h2>
                                        <div class="margin_top_small margin_bottom_middle">
                                            We are leading signage and in-shop Branding company in M.P. located at Indore. We are working through out M.P. and C.G. area.
. The premium SEO tool that is available only in paid subscription plans is the <strong>Competitor Backlink Spy Tool</strong> that will help you spy on your competitors&#8217; backlink strategies and find more link building opportunities for your site.
                                        </div>
                                        <ul class="sc_list sc_list_style_disk_style2">
                                            <li class="sc_list_item inherit">Acp acrylic board
                                            </li>
                                            <li class="sc_list_item inherit">Clip On Board
                                            </li>
                                            <li class="sc_list_item inherit">Brand Wall – Acrylic Latters 
                                            </li>
                                            <li class="sc_list_item inherit">Glow Sign Board
                                            </li>
                                            <li class="sc_list_item inherit">Double Sided GSB
                                            </li>
                                        </ul>
                                        <div class="sc_button sc_button_style_global sc_button_size_huge squareButton global huge margin_top_small">
                                            <a href="Contactus.aspx" class="">Fell Free Contact
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="red_section">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="animated text-center">
                                        <h1 class="sc_title sc_title_bold sc_title_regular">Our Customers Love us</h1>
                                        <div class="sc_testimonials sc_testimonials_style_4">
                                            <div class="sc_slider sc_slider_swiper sc_slider_nopagination sc_slider_autoheight swiper-slider-container" data-interval="7000">
                                                <ul class="sc_testimonials_items slides swiper-wrapper">

                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                        <ItemTemplate>
                                                            <li class="sc_testimonials_item swiper-slide">
                                                                <div class="sc_testimonials_item_content">
                                                                    <div class="sc_testimonials_item_quote">
                                                                        <div class="sc_testimonials_item_text">
                                                                            <%#Eval("Comment") %>
                                                                        </div>
                                                                    </div>
                                                                    <div class="sc_testimonials_item_author">
                                                                        <div class="sc_testimonials_item_avatar">
                                                                            <img src="<%#Eval("ImageUrl") %>" alt="">
                                                                        </div>
                                                                        <div class="sc_testimonials_item_name">
                                                                            <%#Eval("Customername") %>
                                                                        </div>
                                                                        <div class="sc_testimonials_item_position">
                                                                            <%#Eval("Customerdesgination") %>
                                                                        </div>
                                                                    </div>
                                                                    <div class="sc_testimonials_item_object">
                                                                        <div class="object"></div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
            <div class="footerContentWrap">
                <footer class="footerWrap footerStyleDark">
                    <div class="container footerWidget widget_area">
                        <aside class="col-md-4 col-sm-12 widgetWrap widget widget_text">
                            <h3 class="title">Follow us</h3>
                            <div class="textwidget">
                                <p>
                                    Don't miss our news, debates, and inspiring stories. Find us on social networks!
                                    <ul class="sc_social">
                                        <li>
                                            <a class="social_icons social_facebook" target="_blank" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="social_icons social_pinterest" target="_blank" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="social_icons social_twitter" target="_blank" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="social_icons social_gplus" target="_blank" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="social_icons social_linkedin" target="_blank" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="social_icons social_vimeo" target="_blank" href="#"></a>
                                        </li>
                                    </ul>
                                    <p>
                                        <a href="http://shreyaadvertising.in/">Shreya Advertisng</a>
                                        &copy; 2012 All rights reserved.
                                    <a href="#">Terms of Use</a>
                                        and
                                    <a href="#">Privacy Policy</a>
                                    </p>
                            </div>
                        </aside>
                        <aside class="col-md-4 col-sm-6 widgetWrap widget widget_nav_menu">
                            <h3 class="title">General Information</h3>
                            <div class="menu-general-information-container">
                                <ul id="menu-general-information" class="menu">
                                    <li class="menu-item ">
                                        <a href="Advertisment.aspx">Advertising &#038; Pricing</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="Fabrication.aspx">Fabrication</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="Contactus.aspx">Support and FAQ</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="Gallery.aspx">Gallery</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="aboutus.aspx">Company &#038; Contact Info</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="Default.aspx">Terms of Service</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="Contactus.aspx">Privacy Policy</a>
                                    </li>
                                </ul>
                            </div>
                        </aside>
                        <aside class="col-md-4 col-sm-6 widgetWrap widget widget_text">
                            <h3 class="title">Request a free quote</h3>
                            <div class="textwidget">
                                <p>
                                    Looking for Adevertisment?
                                    <div class="sc_button sc_button_style_global sc_button_size_huge squareButton global huge">
                                        <a href="Contactus.aspx" class="">SEND REQUEST</a>
                                    </div>
                            </div>
                        </aside>
                    </div>
                </footer>
            </div>
        </div>
    </div>

</body>

<script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script type='text/javascript' src='js/vendor/jquery.js'></script>
<script type='text/javascript' src='js/vendor/jquery-migrate.min.js'></script>
<script type='text/javascript' src='js/vendor/bootstrap.min.js'></script>
<script type='text/javascript' src='js/vendor/revslider/js/jquery.themepunch.tools.min.js'></script>
<script type='text/javascript' src='js/vendor/revslider/js/jquery.themepunch.revolution.min.js'></script>
<script type='text/javascript' src='js/custom/_main.js'></script>
<script type='text/javascript' src='js/vendor/_packed.js'></script>
<script type='text/javascript' src='js/custom/shortcodes_init.js'></script>
<script type='text/javascript' src='js/custom/_front.js'></script>
</html>

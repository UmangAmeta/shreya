<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoadFurniture.aspx.cs" Inherits="RoadFurniture" %>

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
    <link rel='stylesheet' href='custom_tools/css/custom_tools.css' type='text/css' media='all' />
</head>

<body class="wide top_panel_above top_panel_opacity_solid theme_skin_general usermenu_hide">
    <div class="main_content">
        <div class="boxedWrap">
            <header class="noFixMenu menu_right with_user_menu no_container_padding">
                <div class="topWrapFixed"></div>
                <div class="topWrap">
                    <div class="usermenu_area">
                        <div class="container">

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
                                    <li class="menu-item  menu-item-home">
                                        <a href="Default.aspx">Home</a>
                                    </li>

                                    <li class="menu-item">
                                        <a href="aboutus.aspx">About us</a>
                                    </li>

                                    <li class="menu-item  menu-item-has-children current-menu-item">
                                        <a href="#">Our Services</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item ">
                                                <a href="Advertisment.aspx">Advertisment</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="Fabrication.aspx">Fabrication</a>
                                            </li>
                                            <li class="menu-item current-menu-ancestor">
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
            <div class="mainWrap without_sidebar">
                <section class="light_section">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">

                                <section class="relatedWrap hrShadow">
                                    <h2>Road Furniture</h2>
                                    <div class="relatedPostWrap">
                                        <div class="row">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <article class="col-md-4 col-sm-6 column_item_" <%#Container.DataItem %>>
                                                        <div class="thumb hoverIncrease inited" data-image="<%#Eval("ProductLogo") %>" data-title="Advanced Guide to Google Penalty Removal">
                                                            <img alt="Advanced Guide to Google Penalty Removal" src="<%#Eval("ProductLogo") %>" style="max-height: 300px; min-height: 250px; min-width:150px; max-width:200px;">
                                                            <%--   <span class="hoverShadow"></span><a href="<%#Eval("ProductLogo") %>" title="Advanced Guide to Google Penalty Removal" rel="prettyPhoto[slideshow]" class="inited"><span class="hoverIcon"></span></a>--%>
                                                        </div>
                                                        <h4>
                                                            <a href="#"><%#Eval("Productname") %></a>
                                                        </h4>
                                                        <p><%#Eval("ProductDescription") %></p>
                                                        <div class="relatedInfo">
                                                            Posted <a href="#" class="post_date"><%#Eval("CreatedDatetime")  %></a>
                                                        </div>
                                                        <div class="relatedMore">
                                                            <ul>
                                                                <li class="squareButton light ico">
                                                                    <a class="icon-link" title="More" href='<%# "ViewDetails.aspx?id="+Eval("ProductId") %>'>More</a>
                                                                </li>
                                                                <li class="squareButton light ico">
                                                                    <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </article>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </section>
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
    <div id="preloader" class="preloader">
        <div class="preloader_image"></div>
    </div>
    <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script type='text/javascript' src='js/vendor/jquery.js'></script>
    <script type='text/javascript' src='js/vendor/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='js/vendor/bootstrap.min.js'></script>
    <script type='text/javascript' src='js/custom/_main.js'></script>
    <script type='text/javascript' src='js/vendor/_packed.js'></script>
    <script type='text/javascript' src='js/custom/shortcodes_init.js'></script>
    <script type='text/javascript' src='js/custom/_front.js'></script>

    <script type='text/javascript' src="js/vendor/mediaelement/mediaelement-and-player.min.js"></script>

</body>

</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel='stylesheet' href='css/_packed.css' type='text/css' media='all' />
    <link rel='stylesheet' href='js/vendor/mediaelement/mediaelementplayer.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/fontello.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/shortcodes.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/general.css' type='text/css' media='all' />
    <style type="text/css"></style>
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
                                    <img src="images/logo/bhopal.png" class="logo_main" alt="">
                                    <img src="images/logo/bhopal.png" class="logo_fixed" alt="">
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

                                        </ul>
                                    </li>


                                    <li class="menu-item current-menu-item current_page_item">
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
                                <div class="masonryWrap no_padding_top">
                                    <div class="isotopeFiltr">
                                        <ul>
                                            <li class="squareButton active">
                                                <a href="#" data-filter="*">All</a>
                                            </li>
                                            <li class="squareButton">
                                                <a href="#" data-filter=".flt_71">Advertisment</a>
                                            </li>
                                            <li class="squareButton">
                                                <a href="#" data-filter=".flt_66">Fabrication</a>
                                            </li>
                                            <li class="squareButton">
                                                <a href="#" data-filter=".flt_61">Road Furniture</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="masonry isotope" data-columns="4">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <article class="isotopeElement post_format_standard">

                                                    <div class="isotopePadding">
                                                        <div class="thumb hoverIncrease" data-image="<%# Eval("ImageUrl") %>" data-title="Legal Help Website">
                                                            <img alt="Legal Help Website" src="<%# Eval("ImageUrl") %>" style="max-height: 200px; max-height: 200px;">
                                                        </div>

                                                    </div>
                                                </article>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="Repeater2" runat="server">
                                            <ItemTemplate>
                                                <article class="isotopeElement post_format_standard odd flt_71">
                                                    <div class="isotopePadding">
                                                        <div class="thumb hoverIncrease" data-image="<%# Eval("ImageUrl") %>" data-title="Legal Help Website">
                                                            <img alt="Legal Help Website" src="<%# Eval("ImageUrl") %>" style="max-height: 200px; max-height: 200px;">
                                                        </div>

                                                    </div>
                                                </article>

                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
                                                <article class="isotopeElement post_format_standard odd flt_66">
                                                    <div class="isotopePadding">
                                                        <div class="thumb hoverIncrease" data-image="<%# Eval("ImageUrl") %>" data-title="Legal Help Website">
                                                            <img alt="Legal Help Website" src="<%# Eval("ImageUrl") %>" style="max-height: 200px; max-height: 200px;">
                                                        </div>

                                                    </div>
                                                </article>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <asp:Repeater ID="Repeater4" runat="server">
                                            <ItemTemplate>
                                                <article class="isotopeElement post_format_standard odd flt_61">
                                                    <div class="isotopePadding">
                                                        <div class="thumb hoverIncrease" data-image="<%# Eval("ImageUrl") %>" data-title="Legal Help Website">
                                                            <img alt="Legal Help Website" src="<%# Eval("ImageUrl") %>" style="max-height: 200px; max-height: 200px;">
                                                        </div>

                                                    </div>
                                                </article>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </div>
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
    <%--    <script type='text/javascript' src='custom_tools/js/_customizer.js'></script>--%>
    <script type='text/javascript' src="js/vendor/mediaelement/mediaelement-and-player.min.js"></script>

</body>
</html>

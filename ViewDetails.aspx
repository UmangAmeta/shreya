<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

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
    <link href="vendors/bower_components/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
    <link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css" />
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

                                    <li class="menu-item  menu-item-has-children">
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
            <section id="topOfPage" class="topTabsWrap no_container_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="speedBar">
                                <a class="home" href="Default.aspx">Home</a>
                                <span class="breadcrumbs_delimiter">
                                    <i class="icon-right-open-mini"></i>
                                </span>
                                <a class="all" href="#">All Posts</a>
                                <span class="breadcrumbs_delimiter">
                                    <i class="icon-right-open-mini"></i>
                                </span>
                                <span class="current">View Details</span>
                            </div>
                            <h3 class="pageTitle h3">View Details</h3>
                        </div>
                    </div>
                </div>
            </section>
            <div class="mainWrap without_sidebar">
                <form id="form1" runat="server">
                    <section class="light_section">
                        <div class="container">
                            <div class="row">

                                <div class="col-sm-12">

                                    <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>

                                                    <div class="panel panel-default card-view1">
                                                        <div class="panel-wrapper collapse in">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="product-detail-wrap">

                                                                            <img src='<%#Eval("ProductLogo") %>' style="min-height: 250px; max-height: 250px; margin-top: 10px;" class="img-responsive" alt="Product Image" />

                                                                            <div class="average-review inline-block mb-10 product-price head-font mb-30">&nbsp;(<span class="review-count"><%# ((Eval("CategoryId").ToString())=="1"?"Advertisment" : (Eval("CategoryId").ToString())=="2" ?"Fabrication" : "Road Furniture") %></span>)</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-9">
                                                                        <div class="product-detail-wrap">
                                                                            <div class="product-rating inline-block mb-10">
                                                                                <a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star-outline"></a>
                                                                            </div>
                                                                            <div class="average-review inline-block mb-10">&nbsp;(<span class="review-count"><%# ((Eval("CategoryId").ToString())=="1"?"Advertisment" : (Eval("CategoryId").ToString())=="2" ?"Fabrication" : "Road Furniture") %></span> )</div>
                                                                            <h3 class="mb-20 weight-500"><%#Eval("Productname") %></h3>
                                                                            <%--   <div class="product-price head-font mb-30">₹<%#Eval("Price") %></div> - <%#Eval("Brand")  --%>
                                                                            <p class="mb-50"><%#Eval("ProductDescription") %></p>


                                                                            <div class="row">
                                                                                <asp:Repeater ID="Repeater1" runat="server">


                                                                                    <ItemTemplate>
                                                                                        <div class="col-md-2">

                                                                                            <img src='<%#Eval("ImageUrl") %>' style="min-height: 100px; max-height: 100px; margin-top: 10px;" class="img-responsive" alt="Product Image" />
                                                                                        </div>
                                                                                    </ItemTemplate>

                                                                                </asp:Repeater>


                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                    </asp:GridView>

                                </div>

                            </div>
                            <%--   <div class="row">
                            <div class="col-sm-12">
                                <div class="masonry isotopeNOanim no_margin_top" data-columns="4">
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/11.jpg" data-title="Advanced Guide to Google Penalty Removal">
                                                <img alt="Advanced Guide to Google Penalty Removal" src="images/11-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Advanced Guide to Google Penalty Removal</a>
                                            </h4>
                                            <p>
                                                Many businesses are operated through a separate entity such as a corporation or a partnership (either formed with or without limited liability)...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 20, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/13.jpg" data-title="Website Speed and Search Rankings">
                                                <img alt="Website Speed and Search Rankings" src="images/13-714x714.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Website Speed and Search Rankings</a>
                                            </h4>
                                            <p>
                                                Building first evolved out of the dynamics between needs (shelter, security, worship, etc.) and means (available and attendant skills). As human...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 19, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/7.jpg" data-title="Improving SEO Rankings with Google Plus">
                                                <img alt="Improving SEO Rankings with Google Plus" src="images/7-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Improving SEO Rankings with Google Plus</a>
                                            </h4>
                                            <p>
                                                A hybrid mobile phone can hold up to four SIM cards. SIM and RUIM cards may be mixed together to allow both GSM and CDMA networks to be accessed...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 17, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 1" href="#comments">1</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/10.jpg" data-title="Importance of Using Google Webmaster Tools">
                                                <img alt="Importance of Using Google Webmaster Tools" src="images/10-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Importance of Using Google Webmaster Tools</a>
                                            </h4>
                                            <p>
                                                Nulla lacinia magna nec augue porta, sit amet porttitor tortor eleifend. Cras viverra, orci eu porta condimentum, velit libero placerat nulla, in...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 16, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/16.jpg" data-title="Top Paying Adsense Keywords List 2014">
                                                <img alt="Top Paying Adsense Keywords List 2014" src="images/16-714x1049.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Top Paying Adsense Keywords List 2014</a>
                                            </h4>
                                            <p>
                                                Morbi vel porta ante. Sed quis euismod velit. Sed ut neque ut orci scelerisque tristique sed eu magna. Quisque convallis tellus fermentum erat...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 16, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/4.jpg" data-title="How to Make Money with Google Adsense">
                                                <img alt="How to Make Money with Google Adsense" src="images/4-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">How to Make Money with Google Adsense</a>
                                            </h4>
                                            <p>
                                                Etiam faucibus feugiat sem, vel eleifend odio semper vitae. Nullam lobortis mollis justo et efficitur. Aliquam fermentum quis libero eu posuere...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 15, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/2.jpg" data-title="SEO Musts for Local Business">
                                                <img alt="SEO Musts for Local Business" src="images/2-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">SEO Musts for Local Business</a>
                                            </h4>
                                            <p>Hello All, Firstly, thank you so much for the great template! I have spent around 10hrs looking for a good template and yours was the best!</p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">August 12, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/1.jpg" data-title="How To Get Traffic From Twitter">
                                                <img alt="How To Get Traffic From Twitter" src="images/1-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">How To Get Traffic From Twitter</a>
                                            </h4>
                                            <p>
                                                Nulla dignissim at dolor quis malesuada. Integer aliquam enim sagittis ante ullamcorper dapibus. Etiam consectetur convallis lorem hendrerit...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">July 31, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/14.jpg" data-title="Search Engine Friendly Redirects">
                                                <img alt="Search Engine Friendly Redirects" src="images/14-714x714.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Search Engine Friendly Redirects</a>
                                            </h4>
                                            <p>
                                                Vivamus maximus velit in lectus eleifend efficitur. Vestibulum ac nisl vitae nisl euismod mattis. Nulla efficitur feugiat neque sed sagittis...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">July 30, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/5.jpg" data-title="Usability & Search Engine Optimization">
                                                <img alt="Usability & Search Engine Optimization" src="images/5-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Usability & Search Engine Optimization</a>
                                            </h4>
                                            <p>
                                                Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent varius neque nisl, quis lobortis nisi commodo ut...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">June 25, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/12.jpg" data-title="Online Business & Internet Marketing">
                                                <img alt="Online Business & Internet Marketing" src="images/12-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Online Business & Internet Marketing</a>
                                            </h4>
                                            <p>
                                                In sodales, purus in interdum feugiat, eros dolor suscipit tellus, at posuere justo ligula a metus. Suspendisse at augue at turpis malesuada...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">June 10, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                    <article class="isotopeElement last">
                                        <div class="isotopePadding">
                                            <div class="thumb hoverIncrease" data-image="images/6.jpg" data-title="Search Engine Marketing Strategies">
                                                <img alt="Search Engine Marketing Strategies" src="images/6-714x476.jpg">
                                            </div>
                                            <h4>
                                                <a href="#">Search Engine Marketing Strategies</a>
                                            </h4>
                                            <p>
                                                Curabitur a venenatis elit. Proin ac varius ligula. Integer porttitor eleifend euismod. Ut in nulla elementum, lacinia ex ut, egestas lacus...
                                            </p>
                                            <div class="masonryInfo">
                                                Posted
                                                <a href="#" class="post_date">June 6, 2014</a>
                                            </div>
                                            <div class="masonryMore">
                                                <ul>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-link" title="More" href="#">More</a>
                                                    </li>
                                                    <li class="squareButton light ico">
                                                        <a class="icon-comment-1" title="Comments - 0" href="#comments">0</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="inlineShadow"></span>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>--%>
                        </div>
                    </section>
                </form>
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

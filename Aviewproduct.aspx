<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Aviewproduct.aspx.cs" Inherits="Aviewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h5 class="txt-dark">products</h5>
            </div>
            <!-- Breadcrumb -->
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="AdminDefault.aspx">Dashboard</a></li>
                    <li><a href="#"><span>Shreya</span></a></li>
                    <li class="active"><span>Product</span></li>
                </ol>
            </div>
            <!-- /Breadcrumb -->
        </div>
        <!-- /Title -->

        <!-- Product Row One -->
        <div class="row">

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                <ItemTemplate>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-6">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <article class="col-item" style="min-height: 250px; max-height:300px;">
                                        <div class="photo">
                                            <div class="options">
                                                <a href='<%# "AEditproduct.aspx?id="+Eval("ProductId") %>' class="font-18 txt-grey mr-10 pull-left"><i class="zmdi zmdi-edit"></i></a>
                                                <asp:LinkButton ID="LinkButton1" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' runat="server" CssClass="font-18 txt-grey pull-left sa-warning zmdi zmdi-close"></asp:LinkButton>
                                            </div>

                                            <a href="javascript:void(0);">
                                                <img src='<%#Eval("ProductLogo") %>' style="min-height: 250px; max-height: 250px; margin-top: 10px;" class="img-responsive" alt="Product Image" />
                                            </a>
                                        </div>
                                        <div class="info">
                                            <a href='<%# "prodetail.aspx?id="+Eval("ProductId") %>'>
                                                <h6><%# Eval("Productname") %></h6>
                                                <div class="product-rating inline-block">
                                                    <%# ((Eval("CategoryId").ToString())=="1"?"Advertisment" : (Eval("CategoryId").ToString())=="2" ?"Fabrication" : "Road Furniture") %>
                                                </div>
                                                <span class="head-font block text-warning font-16"></span>
                                            </a>
                                        </div>
                                   <%--     <div class="info">
                                            
                                            <asp:CheckBox ID="CheckBox1"  Text="Hot"  runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" Checked='<%# Convert.ToBoolean((Eval("isHot"))) %>'  />
                                            <asp:HiddenField ID="HiddenField1" Value='<%#Eval("Prodid") %>' runat="server" />
                                        
                                             
                                            <asp:CheckBox ID="CheckBox2"  Text="Trending" AutoPostBack="true" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" Checked='<%# Convert.ToBoolean((Eval("isTrending"))) %>' />
                                        <br />
                                              <asp:CheckBox ID="CheckBox3"  Text="ForRent" AutoPostBack="true" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged"  Checked='<%# Convert.ToBoolean((Eval("isRent"))) %>' />
                                        
                                        </div>--%>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <!-- /Product Row Four -->

    </div>
</asp:Content>


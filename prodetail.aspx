<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="prodetail.aspx.cs" Inherits="prodetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .card-view1 {
            background: #fff;
            margin-bottom: 20px;
            border: 1px solid #e2e2e2;
            border-radius: 0;
            box-shadow: none;
            padding: 15px 15px 0;
            margin-left: -5px;
            margin-right: -5px;
            width: 1250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h5 class="txt-dark">product detail</h5>
            </div>
            <!-- Breadcrumb -->
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Dashboard</a></li>
                    <li><a href="#"><span>e-commerce</span></a></li>
                    <li class="active"><span>product detail</span></li>
                </ol>
            </div>
            <!-- /Breadcrumb -->
        </div>
        <!-- /Title -->

        <!-- Row -->


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


    </div>
</asp:Content>


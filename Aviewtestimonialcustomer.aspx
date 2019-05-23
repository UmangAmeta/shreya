<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Aviewtestimonialcustomer.aspx.cs" Inherits="Aviewtestimonialcustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h5 class="txt-dark">Gallery</h5>
            </div>
            <!-- Breadcrumb -->
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="AdminDefault.aspx">Dashboard</a></li>
                    <li><a href="#"><span>Shreya</span></a></li>
                    <li class="active"><span>Gallery</span></li>
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
                                              
                                                <asp:LinkButton ID="LinkButton1" CommandName="Remove" CommandArgument='<%# Eval("Customerid") %>' runat="server" CssClass="font-18 txt-grey pull-left sa-warning zmdi zmdi-close"></asp:LinkButton>
                                            </div>

                                            <a href="javascript:void(0);">
                                                <img src='<%#Eval("ImageUrl") %>' style="min-height: 250px; max-height: 250px; margin-top: 10px;" class="img-responsive" alt="Product Image" />
                                            </a>
                                        </div>
                                     
                              
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


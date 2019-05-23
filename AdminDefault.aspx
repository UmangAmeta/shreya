<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container-fluid pt-25">
        <div class="row">
            <div class="col-lg-12 col-md-7 col-sm-12 col-xs-12">
              <marquee>  <h3>Welcome to admin pannel</h3></marquee>
                <div class="panel panel-default card-view panel-refresh">
                    <div class="refresh-container">
                        <div class="la-anim-1"></div>
                    </div>
                    <div class="panel-heading">
                        <div class="pull-left">
                            <h6 class="panel-title txt-dark">Admin Pannel</h6>
                        </div>
                        <div class="pull-right">
                            <a href="#" class="pull-left inline-block refresh mr-15">
                                <i class="zmdi zmdi-replay"></i>
                            </a>
                            <a href="#" class="pull-left inline-block full-screen mr-15">
                                <i class="zmdi zmdi-fullscreen"></i>
                            </a>

                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="panel-wrapper collapse in">
                        <div class="panel-body row pa-0">
                            <div class="table-wrap">
                                <div class="table-responsive">





                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-hover mb-0">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr.no">
                                                <ItemTemplate>
                                                    <span class="txt-dark weight-500"><%#Container.DataItemIndex+1%></span>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product Name">
                                                <ItemTemplate>
                                                    <%#Eval("Brandname") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="TotalnoofProduct">
                                                <ItemTemplate>
                                                    <span class="label label-primary"><%#Eval("TotalProduct") %></span></a>
                                                  
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>



                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>


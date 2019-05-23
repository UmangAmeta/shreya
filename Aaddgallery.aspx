<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Aaddgallery.aspx.cs" Inherits="Aaddgallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h5 class="txt-dark">add-gallery</h5>
            </div>
            <!-- Breadcrumb -->
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="AdminDefault.aspx">Dashboard</a></li>
                    <li><a href="#"><span>shreya</span></a></li>
                    <li class="active"><span>add-gallery</span></li>
                </ol>
            </div>
            <!-- /Breadcrumb -->
        </div>
        <!-- /Title -->

        <!-- Row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default card-view">
                    <div class="panel-wrapper collapse in">
                        <div class="panel-body">
                            <div class="form-wrap">
                                <div>
                                    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-info-outline mr-10"></i>Add Gallery</h6>
                                    <hr class="light-grey-hr" />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label mb-10">Product type</label>
                                                <asp:DropDownList ID="ddlCategory" runat="server" class="form-control" data-placeholder="Choose a type">
                                                    <asp:ListItem Text="Select Category" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Advertisment" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Fabrication" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="Road Furniture" Value="3"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="0" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                  
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label mb-10">Image</label>
                                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="Fileupload1" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                      
                                    </div>

                             


                                    <div class="form-actions">
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success btn-icon left-icon mr-10 pull-left" OnClick="Button1_Click" />

                                        <button type="button" class="btn btn-warning pull-left">Cancel</button>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Row -->

    </div>


</asp:Content>


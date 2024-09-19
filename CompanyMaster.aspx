<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyMaster.aspx.cs" Inherits="CompanyMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .form-group {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 150px;">
        <div class="row" style="border: 1px solid;">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12" style="border-bottom: 1px solid;">
                        <h5 style="text-align: center; font-weight: 550; color: black; padding-top: 15px; padding-bottom: 8px;">Company Master</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-6">

                <div class="form-group">
                    <div class="row" style="margin-top: 30px;">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="lblgd" Text="Company ID" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtcompanyid" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="Label1" Text="Company Name" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtcompany" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="Label2" Text="Company GSTIN" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtgsin" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin-top: 30px;">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="Label3" Text="Contact No." ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtcontact" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="Label4" Text="Contact Person" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtcontactperson" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <asp:Label runat="server" ID="Label5" Text="Company Address" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtaddress" class="form-control" TextMode="MultiLine" Required=""></asp:TextBox>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-5"></div>
                    <div class="col-md-7">
                        <asp:Button runat="server" ID="btnsave" Text="Save" class="btn btn-success" OnClick="btnsave_Click"></asp:Button>
                        <asp:Button runat="server" ID="btncancel" Text="Cancel" class="btn btn-danger" OnClick="btncancel_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


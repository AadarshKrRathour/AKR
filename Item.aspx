<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .form-group {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 160px;">
        <div class="row">
            <div class="col-md-5" style="border: 1px solid; min-height: 270px">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-12" style="border-bottom: 1px solid;">
                            <h5 style="text-align: center; font-weight: 550; color: black; padding-top: 15px; padding-bottom: 8px;">Item Master</h5>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row" style="margin-top: 30px;">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="lblgd" Text="SKU" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtsku" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label runat="server" ID="Label1" Text="Item Name" ForeColor="Black"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="txtitemname" class="form-control" Required=""></asp:TextBox>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-5"></div>
                        <div class="col-md-6">
                            <asp:Button runat="server" ID="btnsave" Text="Save" class="btn btn-success" OnClick="btnsave_Click"></asp:Button>
                            <asp:Button runat="server" ID="btncancel" Text="Cancel" class="btn btn-danger" OnClick="btncancel_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>
            <div class="col-md-7">
                <asp:GridView runat="server" ID="gridview" AutoGenerateColumns="false" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate><%#Container.DataItemIndex+1 %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SKU">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblanme" Text='<%#Eval("sku")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item Name">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblanme" Text='<%#Eval("itemname")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Image runat="server" ID="imgbtnedit" ImageUrl="#" /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
</asp:Content>


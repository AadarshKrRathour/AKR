<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .row {
            margin-bottom: 10px;
        }

        .bd {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 155px;">
        <div class="row" style="box-shadow: 3px 11px 17px -10px black; border-radius: 18px; border: 0.2px solid;">
            <h4 style="padding-top: 12px; padding-bottom: 12px; text-align: center; font-weight: 550; border-bottom: 1px solid;">Customer Bill</h4>
            <div class="col-md-5" style="border-right:1px solid #be6c56;">
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label runat="server" ID="lbl" Text="Bill No." ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="tctbillindex" Text="" Class="form-control" Visible="false" ForeColor="Black"></asp:TextBox>
                        <asp:TextBox runat="server" ID="txtbill" Class="form-control" Required="true" Text="" ForeColor="Black"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label runat="server" ID="Label1" Text="Particulars" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:DropDownList runat="server" ID="ddlparticulars" Class="form-control" Required="true" ForeColor="Black"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label runat="server" ID="Label2" Text="Rate" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtrate" Style="padding-left: 5px;" Required="true" Text="" Class="form-control" ForeColor="Black"></asp:TextBox>
                    </div>
                    <div class="col-md-2" style="padding-left: 0px;">
                        <asp:Label runat="server" ID="Label3" Text="Unit" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:DropDownList runat="server" ID="ddlweighted" Class="form-control" ForeColor="Black" Required="true">
                            <asp:ListItem Value="0" Text="KG"></asp:ListItem>
                            <asp:ListItem Value="1" Text="PCS"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Quintal"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label runat="server" ID="Label4" Text="Weight" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtweightqty" Style="padding-left: 5px;" Text="" Required="true" Class="form-control" ForeColor="Black" OnTextChanged="txtweightqty_TextChanged" AutoPostBack="true"></asp:TextBox>
                    </div>
                    <div class="col-md-2" style="padding-left: 0px;">
                        <asp:Label runat="server" ID="Label5" Text="Amount" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtamount" Style="padding-left: 2px;" Required="true" Class="form-control" ForeColor="Black"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                        <asp:Button runat="server" ID="btnadd" Text="Add" Class="btn btn-info" ForeColor="White" OnClick="btnadd_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <asp:GridView runat="server" ID="gridview1" AutoGenerateColumns="false" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate><%#Container.DataItemIndex+1 %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bill No.">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblparticulars" Text='<%#Eval("Billno")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Particulars">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblparticulars" Text='<%#Eval("particulars")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblrate" Text='<%#Eval("rate")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Weight/Unit">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblunit" Text='<%#Eval("unit")%>'></asp:Label>
                                <asp:Label runat="server" ID="lblweight" Class="bd" Text='<%#Eval("weight")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblamt" Text='<%#Eval("amount")%>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>


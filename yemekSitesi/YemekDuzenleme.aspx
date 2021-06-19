<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenleme.aspx.cs" Inherits="YemekDuzenleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Yemek AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Tarifi:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="183px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="189px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="BtnGüncelle" runat="server" OnClick="BtnGüncelle_Click" Text="Güncelleme" Width="119px" />
            </td>
        </tr>
    </table>
</asp:Content>


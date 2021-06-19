<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 148px;
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
            <td class="auto-style11">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Icerik:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="41px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Yemek:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnay" runat="server" OnClick="BtnOnay_Click" Text="Onayla" Width="73px" />
            </td>
        </tr>
    </table>
</asp:Content>


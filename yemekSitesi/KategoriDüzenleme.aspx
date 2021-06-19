<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDüzenleme.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 153px;
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
            <td class="auto-style11">KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="157px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">KATEGORİ ADET:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="157px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">KATEGORİ RESİM:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="BtnGüncelle" runat="server" OnClick="BtnGüncelle_Click" Text="Güncelle" Width="88px" />
            </td>
        </tr>
    </table>
</asp:Content>


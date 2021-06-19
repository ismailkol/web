<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 165px;
        }
        .auto-style8{
            color:black;
        }
        .auto-style11 {
            width: 165px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <div>

        <table class="auto-style8">
            <tr>
                <td class="auto-style11"><strong>MESAJ</strong></td>
                <td>&nbsp;&nbsp; <strong>PANELİ</strong></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Width="215px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mail Adresi:</td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Width="215px" TextMode="Email" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Konu:</td>
                <td>
                    <asp:TextBox ID="TxtKonu" runat="server" Width="215px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mesaj:</td>
                <td>
                    <asp:TextBox ID="TxtMesaj" runat="server" TextMode="MultiLine" Width="215px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="75px" />
                </td>
            </tr>
        </table>

    </div>
    
</asp:Content>


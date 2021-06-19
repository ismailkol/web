<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            font-size: 20pt;
        }
           .auto-style11 {
            font-size: 15pt;
        }
             .auto-style12 {
            font-size: 13pt;
        }
               .auto-style13 {
            font-size: 11pt;
        }
               .auto-style14{
                   background-color:white;
                   color:black;
               }
               .auto-style15 {
            text-align: center;
        }
        .auto-style17 {
            text-align: right;
           background-color:orange;
        }
        .auto-style8 {
         color:black;
        }
             
               </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" ForeColor="White" Text="Label"></asp:Label>
&nbsp;
    <br />
    <br />
&nbsp;<asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server"  CssClass="auto-style11" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;--<asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #FFFFFF">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style14" >
        Yorum Yapma Paneli&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
        <div>

            <table class="auto-style8">
                <tr>
                    <td class="auto-style17">Ad Soyad:<asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="auto-style18" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Mail:<asp:TextBox ID="TxtMail" runat="server" Width="220px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Icerik:<asp:TextBox ID="Txticerik" runat="server" Width="220px" CssClass="auto-style19" Height="44px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" Width="87px" />
                    </td>
                </tr>
            </table>

        </div>

            </asp:Content>


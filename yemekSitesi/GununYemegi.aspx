<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <asp:DataList ID="DataList2" runat="server" Height="109px" Width="383px">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("GununYemekAd") %>' Font-Bold="True" Font-Size="15pt"></asp:Label>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Malzemeler: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemekMalzeme") %>'></asp:Label>
                      </td>
                </tr>
                  <tr>
                    <td>
                       Tarif: <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemekTarif") %>'></asp:Label>
                      </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="109px" Width="369px" ImageUrl="~/resim/mücver.jpg" />
                      </td>
                </tr>
                  <tr>
                    <td>
                        Puan: <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemekPuan") %>'></asp:Label>
                      </td>
                </tr>
                 <tr>
                    <td>
                       Tarih: <asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemekTarih") %>'></asp:Label>
                      </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>

</asp:Content>



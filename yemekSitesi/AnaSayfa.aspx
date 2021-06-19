<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
        
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10">


                      <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">  <asp:Label ID="Label3" runat="server" Font-Size="13pt" Text='<%# Eval("YemekAd") %>' ForeColor="Red"></asp:Label></a>
                  
                        </td>

                </tr>
                <tr>
                    <td>Malzemeler: <asp:Label ID="Label4" runat="server" Font-Size="13pt" Text='<%# Eval("YemekMalzeme") %>' ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Yemek Tarifi: <asp:Label ID="Label5" runat="server" Font-Size="13pt" Text='<%# Eval("YemekTarif") %>' ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                       Eklenme Tarihi: <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' ForeColor="White"></asp:Label>
                        - Puan: <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #808080">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
        
    
</asp:Content>


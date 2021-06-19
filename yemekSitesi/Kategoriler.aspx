<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 148px;
        }
        .auto-style12 {
            text-align: right;
        }
       
        .auto-style13{
            height:auto;
        }

       
        .auto-style19 {
            font-size: medium;
            font-weight: bold;
        }

        .auto-style20 {
            width: 135px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" Height="29px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="+" Width="28px" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" OnClick="Button3_Click" Text="-" Width="28px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
        
    </asp:Panel>

    <asp:Panel ID="Panel2"  runat="server"  CssClass="auto-style13" >
        <asp:DataList ID="DataList1" runat="server" Width="397px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                          <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete2.icon.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style12">
                           <a href="KategoriDüzenleme.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.icon.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
       </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="+" Width="28px" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="-" Width="28px" />
                    </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Kategori icon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" Text="Ekle" Width="76px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


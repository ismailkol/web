<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 158px;
        }
         .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" Height="29px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" Text="+" Width="28px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19"  Text="-" Width="28px" OnClick="Button3_Click" />
                    </strong></td>
                <td> ONAYLI YORUM LİSTESİ</td>
            </tr>
        </table>
        
    </asp:Panel>

    <asp:Panel ID="Panel2"  runat="server"  CssClass="auto-style13" >
        <asp:DataList ID="DataList1" runat="server" Width="397px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                          <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete2.icon.png" Width="30px" />
                        </td>
                        <td class="auto-style12">
                        <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.icon.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
       </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" BackColor="#CCCCCC" Height="29px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" Text="+" Width="28px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19"  Text="-" Width="28px" OnClick="Button4_Click"  />
                    </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel4"  runat="server"  CssClass="auto-style13" >
        <asp:DataList ID="DataList2" runat="server" Width="397px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                          <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete2.icon.png" Width="30px" />
                        </td>
                        <td class="auto-style12">
                        <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>" >   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.icon.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
       </asp:Panel>
</asp:Content>


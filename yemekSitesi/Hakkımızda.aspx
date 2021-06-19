<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .duzen{
           color:black;
           font-size:19px;
           text-align:center;
       }
       .renk{
           color:black;
       }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
   

    <div class="duzen">
        HAKKIMIZDA<br />
    </div>
    <div>

        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" class="renk" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

    </div>
 <br />
    <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl="~/resim/blog.jpg" Width="396px" />
    <br />
   
   


</asp:Content>


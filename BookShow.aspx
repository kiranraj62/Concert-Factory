<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="BookShow.aspx.cs" Inherits="BookShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 162px;
        }
        .style3
        {
            width: 162px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 162px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style9
        {
            width: 162px;
            height: 24px;
        }
        .style10
        {
            height: 24px;
        }
        .style11
        {
            width: 162px;
            height: 17px;
        }
        .style12
        {
            height: 17px;
        }
        .style13
        {
            width: 162px;
            height: 25px;
        }
        .style14
        {
            height: 25px;
        }
        .style15
        {
            width: 173px;
        }
        .style16
        {
            height: 26px;
            width: 173px;
        }
        .style17
        {
            height: 17px;
            width: 173px;
        }
        .style18
        {
            height: 25px;
            width: 173px;
        }
        .style19
        {
            height: 24px;
            width: 173px;
        }
        .style20
        {
            height: 23px;
            width: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                BOOK SHOW</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style20">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Event Type"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="ddEvnttyp" runat="server">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Campus</asp:ListItem>
                    <asp:ListItem>Corporate</asp:ListItem>
                    <asp:ListItem>Private Party</asp:ListItem>
                    <asp:ListItem>Concert/Festival</asp:ListItem>
                    <asp:ListItem>Wedding</asp:ListItem>
                    <asp:ListItem>Restaurent</asp:ListItem>
                    <asp:ListItem>Proffessional Hiring</asp:ListItem>
                    <asp:ListItem>Inaugration</asp:ListItem>
                    <asp:ListItem>Photo/video Shoot</asp:ListItem>
                    <asp:ListItem>Relegious</asp:ListItem>
                    <asp:ListItem>Charity</asp:ListItem>
                    <asp:ListItem>Fashion Show</asp:ListItem>
                </asp:DropDownList>
                `</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="Event Date"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtEdate" runat="server" Width="136px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Band Name"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtBand" runat="server" Width="138px"></asp:TextBox>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Venue Address"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="57px" Width="134px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Name of the Show"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label12" runat="server" Text="Full Name "></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td class="style18">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label13" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Place"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Duration"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" Text="Transportation Cost"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtTrcost" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Program RATE"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style20">
                <asp:Button ID="Button4" runat="server" Text="Payment HERE" Height="24px" 
                    onclick="Button4_Click" />
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style20">
            </td>
            <td class="style6">
            </td>
        </tr>
    </table>
</asp:Content>


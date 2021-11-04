<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UpdateUserDetails.aspx.cs" Inherits="UpdateUserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 154px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            height: 23px;
            width: 207px;
        }
        .style6
        {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="UPDATE USER"></asp:Label>
                <br />
            </td>
            <td class="style5">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Permenent Address"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtUpdteAddress" runat="server" Height="65px" Width="158px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Communication Address"></asp:Label>
                </td>
            <td class="style5">
                <asp:TextBox ID="txtUpdteAddress0" runat="server" Height="65px" Width="158px"></asp:TextBox>
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="District"></asp:Label>
                </td>
            <td class="style5">
                <asp:DropDownList ID="ddDistrict" runat="server" Height="16px" Width="137px">
                    <asp:ListItem>Kasargod</asp:ListItem>
                    <asp:ListItem>Kannur</asp:ListItem>
                    <asp:ListItem>Wayanad</asp:ListItem>
                    <asp:ListItem>Kozhikkod</asp:ListItem>
                    <asp:ListItem>Malappuram</asp:ListItem>
                    <asp:ListItem>Palakkad</asp:ListItem>
                    <asp:ListItem>Thrissur</asp:ListItem>
                    <asp:ListItem>Ernakulam</asp:ListItem>
                    <asp:ListItem>Idukki</asp:ListItem>
                    <asp:ListItem>Kottayam</asp:ListItem>
                    <asp:ListItem>Alappuzha</asp:ListItem>
                    <asp:ListItem>Pathanamthitta</asp:ListItem>
                    <asp:ListItem>Kollam</asp:ListItem>
                    <asp:ListItem>Trivandrum</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                City</td>
            <td class="style5">
                <asp:TextBox ID="txtCity" runat="server" Width="123px"></asp:TextBox>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="Pincode"></asp:Label>
                </td>
            <td class="style5">
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Mobile</td>
            <td class="style5">
                <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                E-Mail</td>
            <td class="style5">
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style5">
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
</asp:Content>


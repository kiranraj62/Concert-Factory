<%@ Page Title="" Language="C#" MasterPageFile="~/MusicBand.master" AutoEventWireup="true" CodeFile="AddMedia.aspx.cs" Inherits="AddMedia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 62px;
        }
        .style3
        {
            width: 38px;
        }
        .style4
        {
            width: 62px;
            height: 127px;
        }
        .style6
        {
            width: 38px;
            height: 127px;
        }
        .style7
        {
            width: 62px;
            height: 23px;
        }
        .style9
        {
            width: 38px;
            height: 23px;
        }
        .style13
        {
            width: 62px;
            height: 24px;
        }
        .style15
        {
            width: 38px;
            height: 24px;
        }
        .style17
        {
            width: 226px;
            height: 24px;
        }
        .style18
        {
            width: 226px;
            height: 23px;
        }
        .style19
        {
            width: 226px;
            height: 127px;
        }
        .style20
        {
            width: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                ADD PHOTOS</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style17">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style18">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" Height="243px" Width="462px" />
            </td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="215px" />
                <asp:TextBox ID="txtPath" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" Text="UPLOAD" onclick="Button1_Click" />
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


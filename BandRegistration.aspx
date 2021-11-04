<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="BandRegistration.aspx.cs" Inherits="BandRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 253px;
        }
        .style3
        {
            width: 253px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 253px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
            width: 253px;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
        .style11
        {
            width: 253px;
            height: 60px;
        }
        .style12
        {
            height: 60px;
        }
        .style13
        {
            width: 136px;
        }
        .style14
        {
            height: 26px;
            width: 136px;
        }
        .style15
        {
            height: 60px;
            width: 136px;
        }
        .style16
        {
            height: 23px;
            width: 136px;
        }
        .style18
        {
            height: 30px;
            width: 136px;
        }
        .style19
        {
            width: 250px;
        }
        .style20
        {
            height: 26px;
            width: 250px;
        }
        .style21
        {
            height: 60px;
            width: 250px;
        }
        .style22
        {
            height: 23px;
            width: 250px;
        }
        .style24
        {
            height: 30px;
            width: 250px;
        }
        .style25
        {
            width: 253px;
            height: 2px;
        }
        .style26
        {
            height: 2px;
            width: 136px;
        }
        .style27
        {
            height: 2px;
            width: 250px;
        }
        .style28
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                BAND REGISTRATION</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Band Name</td>
            <td class="style14">
                <asp:TextBox ID="txtBndNme" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtBndNme" ErrorMessage="First name cannot be blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Band Email Address"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtbndMail" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtbndMail" ErrorMessage="Enter your mail" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" Text="License NO"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtBandLicense" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtBandLicense" ErrorMessage="Enter your Lisence no" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Telephone "></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtTel" ErrorMessage="Enter your telephone number" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label3" runat="server" Text="Permenent Address"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtAddr1" runat="server" Height="56px" 
                    Width="129px"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAddr1" ErrorMessage="Enter Permenent Adreess " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Communication Address"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtAddr2" runat="server" Height="54px" Width="129px"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtAddr2" ErrorMessage="Enter Communication Adreess " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="Enter your city" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtState" ErrorMessage="Enter your State" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Post Code"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtPcode" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPcode" ErrorMessage="Enter your Pincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Country"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtCountry" ErrorMessage="Enter your Country" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Manager's Name"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="txtMNGR" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtMNGR" ErrorMessage="Cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" Text="Manager's Phone"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtmngrPHN" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmngrPHN" ErrorMessage="Cannot be empty" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="Type of Music"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="ddMusicTYP" runat="server" Height="16px" Width="125px">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Ambient</asp:ListItem>
                    <asp:ListItem>Classical</asp:ListItem>
                    <asp:ListItem>Classical Rock</asp:ListItem>
                    <asp:ListItem>Disco </asp:ListItem>
                    <asp:ListItem>Folk</asp:ListItem>
                    <asp:ListItem>Hip-Hop</asp:ListItem>
                    <asp:ListItem>Jazz</asp:ListItem>
                    <asp:ListItem>Metal</asp:ListItem>
                    <asp:ListItem>Rock</asp:ListItem>
                    <asp:ListItem>Sound Track</asp:ListItem>
                    <asp:ListItem>Sufi</asp:ListItem>
                    <asp:ListItem>A capella</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="ddMusicTYP" ErrorMessage="Select one" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" Text="Band type"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="ddBandType" runat="server">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Group</asp:ListItem>
                    <asp:ListItem>Orchestra</asp:ListItem>
                    <asp:ListItem>Solo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="ddBandType" ErrorMessage="Select band type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" Text="Number of Membors"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="ddMembers" runat="server">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="ddMembers" ErrorMessage="Select No of members " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" Text="RATE"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtRate" runat="server" Width="179px"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label19" runat="server" Text="Band Desription"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtDescprtion" runat="server" Height="69px" Width="213px"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style22">
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label16" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPwd" ControlToValidate="txtCPwd" 
                    ErrorMessage="Password miss match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label17" runat="server" Text="Logo"></asp:Label>
            </td>
            <td class="style14">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style20">
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" Height="123px" Width="136px" />
            </td>
            <td class="style13">
                <asp:TextBox ID="txtPath" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Upload Logo" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="BtnSignup" runat="server" Text="SIGNUP" 
                    onclick="Button1_Click" />
            </td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


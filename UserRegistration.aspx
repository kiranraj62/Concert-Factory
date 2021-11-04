<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 181px;
        }
        .style3
        {
            width: 181px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 181px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 181px;
            height: 20px;
        }
        .style8
        {
            height: 20px;
        }
        .style9
        {
            width: 68px;
        }
        .style10
        {
            height: 26px;
            width: 68px;
        }
        .style11
        {
            height: 23px;
            width: 68px;
        }
        .style12
        {
            height: 20px;
            width: 68px;
        }
        .style13
        {
            width: 181px;
            height: 31px;
        }
        .style14
        {
            width: 68px;
            height: 31px;
        }
        .style15
        {
            height: 31px;
        }
        .style16
        {
            width: 181px;
            height: 29px;
        }
        .style17
        {
            width: 68px;
            height: 29px;
        }
        .style18
        {
            height: 29px;
        }
        .style19
        {
            width: 181px;
            height: 41px;
        }
        .style20
        {
            width: 68px;
            height: 41px;
        }
        .style21
        {
            height: 41px;
        }
        .style22
        {
            height: 23px;
            width: 183px;
        }
        .style23
        {
            width: 183px;
        }
        .style24
        {
            height: 26px;
            width: 183px;
        }
        .style25
        {
            height: 20px;
            width: 183px;
        }
        .style26
        {
            height: 31px;
            width: 183px;
        }
        .style27
        {
            height: 41px;
            width: 183px;
        }
        .style28
        {
            height: 29px;
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                USER REGISTRATION</td>
            <td class="style11">
                </td>
            <td class="style22">
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                First Name</td>
            <td class="style10">
                <asp:TextBox ID="txtFname" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="First name cannot be blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Middle Name</td>
            <td class="style9">
                <asp:TextBox ID="txtMname" runat="server"></asp:TextBox>
            </td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Last Name</td>
            <td class="style11">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            </td>
            <td class="style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="Last name cannot be blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Permenent Address</td>
            <td class="style9">
                <asp:TextBox ID="txtPAddress" runat="server" Height="67px" Width="156px"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtPAddress" ErrorMessage="Enter Permenent Adreess " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Communication Address</td>
            <td class="style9">
                <asp:TextBox ID="txtCAddress" runat="server" Height="59px" Width="153px"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCAddress" ErrorMessage="Enter Communication Adreess " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                City</td>
            <td class="style11">
                <asp:TextBox ID="txtCity" runat="server" Width="148px"></asp:TextBox>
            </td>
            <td class="style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="Enter your city" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                District</td>
            <td class="style10">
                <asp:DropDownList ID="ddDistrict" runat="server" Height="16px" Width="137px">
                    <asp:ListItem> </asp:ListItem>
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
            <td class="style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddDistrict" ErrorMessage="Select your District" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Pincode</td>
            <td class="style12">
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
            </td>
            <td class="style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPin" ErrorMessage="Enter your Pincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                Gender</td>
            <td class="style14">
                <asp:RadioButtonList ID="RBGender" runat="server" 
                    RepeatDirection="Horizontal" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    Height="16px" Width="278px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Not willing to specify</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="RBGender" ErrorMessage="Chose your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Mobile</td>
            <td class="style9">
                <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMob" ErrorMessage="Enter Mobile number" ForeColor="Red" 
                    SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Telephone</td>
            <td class="style10">
                <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtTel" ErrorMessage="Enter your telephone number" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                E-Mail</td>
            <td class="style10">
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtMail" ErrorMessage="Enter your mail" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style9">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Password</td>
            <td class="style9">
                <asp:TextBox ID="txtCPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPass" ControlToValidate="txtCPass" 
                    ErrorMessage="Password miss match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Label ID="Label1" runat="server" Text="ID Proof"></asp:Label>
            </td>
            <td class="style20">
                <asp:Image ID="Image1" runat="server" Height="109px" Width="117px" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style27">
                <asp:TextBox ID="txtPath" runat="server"></asp:TextBox>
                <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                    onclick="btnUpload_Click" style="height: 26px" />
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtPath" ErrorMessage="Upload ID Proof" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style28">
                </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnSignUP" runat="server" Text="SIGNUP" Height="41px" 
                    onclick="btnSignUP_Click" />
            </td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style11">
&nbsp;</td>
            <td class="style22">
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BandApproval.aspx.cs" Inherits="BandApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 11px;
        }
        .style4
        {
            height: 23px;
            width: 11px;
        }
        .style5
        {
            width: 671px;
        }
        .style6
        {
            height: 23px;
            width: 671px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5">
                BAND APPROVALS</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Height="251px" Width="828px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="Band Name" DataField="band_name" />
                        <asp:BoundField HeaderText="Address" DataField="Per_Address" />
                        <asp:BoundField HeaderText="Contact Number" DataField="Telephone" />
                        <asp:BoundField HeaderText="Manager's Number" DataField="Managers_Phone" />
                        <asp:BoundField HeaderText="ID Proof" DataField="License" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="ACCEPT" 
                                    CommandArgument='<%# bind("Band_id") %>' CommandName="ACCEPT" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" 
                                    CommandArgument='<%# bind("band_id") %>' CommandName="REJECT" Text="REJECT" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style4">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style4">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


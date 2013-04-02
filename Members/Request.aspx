<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Request.aspx.vb" Inherits="Members_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 416px;
        }
        .style2
        {
            width: 65px;
        }
        .style3
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0">
    <tr>
        <td class="style1">
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>
            <br />
            If you would like a show to be added or deleted to the database, please make 
            your request here. Requests will be dealt with in timely fashion. Thanks!<br />
        </td>
        <td class="style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="style1"><b>Your Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="UsersEmail" Columns="30"></asp:TextBox>&nbsp;</b></td>
        <td class="style2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" class="style3">
            <b>Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox runat="server" ID="Subject" Columns="30"></asp:TextBox>
            <br />
            Body:&nbsp;&nbsp;</b><br />
            <asp:TextBox runat="server" ID="Body" TextMode="MultiLine" Columns="55" Rows="10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button runat="server" ID="SendEmail" Text="Send Feedback" />
        </td>
    </tr>
</table>
</asp:Content>


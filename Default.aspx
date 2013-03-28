<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="ViewShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
This is my database driven personal website. I chose to make a website that has information about my favorite tv shows. I always forget what shows are on when and on what networks. This has a very practical use because it could help me keep track of all the shows that I watch. <br/>
<br/>
There are 2 user groups, admins and members.</br>
<ul>
<li>Admins can insert, update, and delete shows whenever they like as long as they successfully login.</li> <br/>
<li>Members can request shows to be added or removed. Members can also update information about shows if they notice a mistake. Members must login to do these things as well.</li><br/>
<li>Anyone that visits the website can view the list of shows along with basic information about those shows even without logging in.</li><br/>
</ul>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="ViewShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
This is my database driven personal website. I chose to make a website that has information about my favorite tv 
shows. I always forget what shows are on when and on what networks. This has a very practical use because it could 
help me keep track of all the shows that I watch. <br/>
<br/>
There are 2 user groups, admins and members.<br/>
<ul>
<li>Admins can insert, update, and delete shows whenever they like as long as they successfully login. 
From the admin main page they can edit and delete. They can also see additional details and on the details page 
there is a link to where they can add new shows. They also have a separate page for adding shows directly that can 
be accessed from the menu bar.</li> <br/>

<li>Members can request shows to be added or removed. They can do this through the requests page. The requests page
sends an e-mail to me at andrew-williams-1@uiowa.edu. If this was a real website in a business setting this could
be set up for an automated e-mail system. The settings for this e-mail can be found in the Web.config file under
Members, here you can see the uiowa host and port along with my hawkid and password. If you change the hawkid, 
password, and the ToAddress variable in the Members/Request.aspx.vb file it can be set up for a different e-mail.
Members can also update information about shows if they notice a mistake. Members must login to do these things as 
well.</li><br/>

<li>Anyone that visits the website can view the list of shows along with basic information about those shows even 
without logging in. Everyone has the ability to sort columns however guests can see as much detail as Members and 
Admins.</li><br/>
</ul>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/breakingbad.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image3" runat="server" 
        ImageUrl="~/image/Game-Thrones-Season-3-Character-Posters-Daenerys.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/Dexter.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" ImageUrl="~/image/boardwalk_empire.jpg" />


</asp:Content>


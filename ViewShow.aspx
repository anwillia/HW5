<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewShow.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs_TVShows %>" 
    SelectCommand="SELECT * FROM [TVShows]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="tvShowID" 
    DataSourceID="SqlDataSource1" Width="994px">
    <Columns>
        <asp:BoundField DataField="ShowName" HeaderText="Show Name" 
            SortExpression="ShowName" />
        <asp:BoundField DataField="Network" HeaderText="Network" 
            SortExpression="Network" />
        <asp:BoundField DataField="CurrentlyAiring" HeaderText="Currently Airing" 
            SortExpression="CurrentlyAiring" />
        <asp:BoundField DataField="NextEpisode" HeaderText="Next Episode" 
            SortExpression="NextEpisode" />
        <asp:BoundField DataField="AirTime" HeaderText="Air Time" 
            SortExpression="AirTime" />
    </Columns>
</asp:GridView>
<br />
<br />
<br />
    
</asp:Content>


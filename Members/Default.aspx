﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Members_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_TVShows %>" 
        DeleteCommand="DELETE FROM [TVShows] WHERE [tvShowID] = @tvShowID" 
        InsertCommand="INSERT INTO [TVShows] ([tvShowID], [ShowName], [Network], [CurrentlyAiring], [NextEpisode], [AirTime]) VALUES (@tvShowID, @ShowName, @Network, @CurrentlyAiring, @NextEpisode, @AirTime)" 
        SelectCommand="SELECT * FROM [TVShows]" 
        UpdateCommand="UPDATE [TVShows] SET [ShowName] = @ShowName, [Network] = @Network, [CurrentlyAiring] = @CurrentlyAiring, [NextEpisode] = @NextEpisode, [AirTime] = @AirTime WHERE [tvShowID] = @tvShowID">
        <DeleteParameters>
            <asp:Parameter Name="tvShowID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tvShowID" Type="String" />
            <asp:Parameter Name="ShowName" Type="String" />
            <asp:Parameter Name="Network" Type="String" />
            <asp:Parameter Name="CurrentlyAiring" Type="String" />
            <asp:Parameter DbType="Date" Name="NextEpisode" />
            <asp:Parameter Name="AirTime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ShowName" Type="String" />
            <asp:Parameter Name="Network" Type="String" />
            <asp:Parameter Name="CurrentlyAiring" Type="String" />
            <asp:Parameter DbType="Date" Name="NextEpisode" />
            <asp:Parameter Name="AirTime" Type="String" />
            <asp:Parameter Name="tvShowID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="tvShowID" 
        DataSourceID="SqlDataSource1" Width="998px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
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
&nbsp;
</asp:Content>


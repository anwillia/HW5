<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ShowDetails.aspx.vb" Inherits="Admin_EditShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="tvShowID" DataSourceID="SqlDataSource1" 
        Height="106px" Width="992px">
        <Fields>
            <asp:BoundField DataField="tvShowID" HeaderText="Show ID" ReadOnly="True" 
                SortExpression="tvShowID" />
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_TVShows %>" 
        DeleteCommand="DELETE FROM [TVShows] WHERE [tvShowID] = @tvShowID" 
        InsertCommand="INSERT INTO [TVShows] ([tvShowID], [ShowName], [Network], [CurrentlyAiring], [NextEpisode], [AirTime]) VALUES (@tvShowID, @ShowName, @Network, @CurrentlyAiring, @NextEpisode, @AirTime)" 
        SelectCommand="SELECT * FROM [TVShows] WHERE ([tvShowID] = @tvShowID)" 
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
        <SelectParameters>
            <asp:QueryStringParameter Name="tvShowID" QueryStringField="tvShowID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ShowName" Type="String" />
            <asp:Parameter Name="Network" Type="String" />
            <asp:Parameter Name="CurrentlyAiring" Type="String" />
            <asp:Parameter DbType="Date" Name="NextEpisode" />
            <asp:Parameter Name="AirTime" Type="String" />
            <asp:Parameter Name="tvShowID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>


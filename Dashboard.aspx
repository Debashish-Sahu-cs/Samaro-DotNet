<%@ Page Title="" Language="C#" MasterPageFile="DashboardMaster.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="System.Web.UI.Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Your Events</h2>

<asp:Repeater ID="rpt_events" runat="server">
<ItemTemplate>
    <div class="event-card">
        <%# Eval("EventName") %> – <%# Eval("EventDate") %>
    </div>
</ItemTemplate>
</asp:Repeater>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="System.Web.UI.Page" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">

<div class="profile-container">

    <asp:Label ID="lbl_greeting" runat="server" CssClass="profile-title" />

    <asp:Label ID="lbl_subtitle" runat="server" 
        Text="Update your personal information here." 
        CssClass="profile-subtitle" />

    <!-- Photos -->
    <div class="photo-row">

        <div class="photo-box">
            <div class="circle">👤</div>
            <asp:Label ID="lbl_profilePhoto" runat="server" Text="Profile Photo" CssClass="photo-title"/>
        </div>

        <div class="photo-box">
            <div class="circle">📱</div>
            <asp:Label ID="lbl_selfiePhoto" runat="server" Text="Selfie Photo" CssClass="photo-title"/>
        </div>

    </div>

    <!-- Names -->
    <div class="form-row">
        <div class="form-group">
            <asp:Label ID="lbl_firstName" runat="server" Text="First Name" />
            <asp:TextBox ID="txt_firstName" runat="server" CssClass="input-box"/>
        </div>

        <div class="form-group">
            <asp:Label ID="lbl_lastName" runat="server" Text="Last Name" />
            <asp:TextBox ID="txt_lastName" runat="server" CssClass="input-box"/>
        </div>
    </div>

    <!-- Options -->
    <div class="form-row">
        <asp:CheckBox ID="chk_whatsapp" runat="server" Text="Whatsapp Opted In" />
        <asp:CheckBox ID="chk_facial" runat="server" Text="Facial Recognition Opted In" />
    </div>

    <asp:Button ID="btn_saveProfile" runat="server" Text="Save" CssClass="btn-save"/>

    <!-- Contact Info -->
    <div class="info-row">
        <div class="info-card">
            <asp:Label ID="lbl_phoneTitle" runat="server" Text="Phone Number"/>
            <asp:TextBox ID="txt_phone" runat="server" CssClass="readonly-box" ReadOnly="true"/>
        </div>

        <div class="info-card">
            <asp:Label ID="lbl_emailTitle" runat="server" Text="Email"/>
            <asp:TextBox ID="txt_email" runat="server" CssClass="readonly-box" ReadOnly="true"/>
        </div>
    </div>

</div>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Samaro.HomePage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>samaro.ai — AI Photo & Event Sharing</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<form runat="server">

    <!-- NAVBAR -->
    <div class="navbar">
        <img src="https://framerusercontent.com/images/QIOvgXKPEVIPMZ3GE7z6Ek32HI.png?width=7680&height=4320" ID="samaro_logo" class="main_logo" alt="Samaro Logo" />
        <div class="nav-links">
            <asp:HyperLink ID="lnk_solutions" runat="server" Text="Solutions" NavigateUrl="#solutions"/>
            <asp:HyperLink ID="lnk_galleries" runat="server" Text="Sample Galleries" NavigateUrl="#galleries"/>
            <asp:HyperLink ID="lnk_pricing" runat="server" Text="Pricing" NavigateUrl="#pricing"/>
            <asp:HyperLink ID="lnk_invites" runat="server" Text="Invites" NavigateUrl="#invites"/>
            <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn-nav"/>
            <asp:Button ID="btn_tryFree" runat="server" Text="Try for free" CssClass="btn-cta"/>
        </div>
    </div>

    <!-- HERO -->
    <div class="hero-section">
        <asp:Label ID="lbl_heroTitle" runat="server" Text="AI Photo Sharing & Event Experience Platform" CssClass="hero-title"/>
        <br />
        <asp:Label ID="lbl_heroSubtitle" runat="server" Text="Deliver photos instantly with AI & smart event features" CssClass="hero-subtitle"/>
        <div class="hero-buttons">
            <asp:Button ID="btn_bookDemo" runat="server" Text="Book a Demo" CssClass="btn-primary"/>
            <asp:Button ID="btn_businessSignup" runat="server" Text="Business Signup" CssClass="btn-secondary"/>
        </div>
    </div>

    <!-- TRUST / STATS -->
    <div class="stats-section">
        <asp:Label ID="lbl_stat1" runat="server" Text="4000+ Businesses Onboarded" CssClass="stat"/>
        <asp:Label ID="lbl_stat2" runat="server" Text="2M+ Guests Hosted" CssClass="stat"/>
        <asp:Label ID="lbl_stat3" runat="server" Text="200M+ Media Uploaded" CssClass="stat"/>
    </div>

    <!-- FEATURES SECTION -->
    <div id="features" class="features-section">
        <asp:Label ID="lbl_featuresTitle" runat="server" Text="AI-Powered Features" CssClass="section-title"/>
        <div class="features-grid">
            <div class="feature-card">
                <asp:Label ID="lbl_aiFacial" runat="server" Text="AI Facial Recognition"/>
                <p>Find guests’ photos instantly.</p>
            </div>
            <div class="feature-card">
                <asp:Label ID="lbl_camera2cloud" runat="server" Text="Camera2Cloud"/>
                <p>Upload from camera & share instantly.</p>
            </div>
            <div class="feature-card">
                <asp:Label ID="lbl_whatsappBot" runat="server" Text="Smart WhatsApp Bot"/>
                <p>Engage guests via WhatsApp.</p>
            </div>
            <div class="feature-card">
                <asp:Label ID="lbl_gallery" runat="server" Text="Cloud Galleries"/>
                <p>Beautiful shareable galleries.</p>
            </div>
        </div>
    </div>

</form>
</body>
</html>

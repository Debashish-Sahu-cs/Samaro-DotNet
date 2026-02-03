<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Samaro.Contact" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Contact – samaro.ai</title>
    <link href="site.css" rel="stylesheet" />
</head>

<body>
<form id="frm_contact" runat="server">

<div class="contact-page">
    <!-- NAVBAR -->
    <div class="navbar">
        <img src="https://framerusercontent.com/images/QIOvgXKPEVIPMZ3GE7z6Ek32HI.png?width=7680&height=4320" ID="samaro_logo" class="main_logo" alt="Samaro Logo" />
        <div class="nav-links">
            <asp:HyperLink ID="lnk_solutions" runat="server" Text="Solutions" NavigateUrl="#solutions"/>
            <asp:HyperLink ID="lnk_galleries" runat="server" Text="Sample Galleries" NavigateUrl="#galleries"/>
            <asp:HyperLink ID="lnk_pricing" runat="server" Text="Pricing" NavigateUrl="#pricing"/>
            <asp:HyperLink ID="lnk_invites" runat="server" Text="Invites" NavigateUrl="#invites"/>
            <asp:HyperLink ID="lnk_contact" runat="server" Text="Contact" NavigateUrl="Contact.aspx"/>
            <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn-nav" OnClick="btn_login_Click"/>
            <asp:Button ID="btn_tryFree" runat="server" Text="Try for free" CssClass="btn-cta"/>
        </div>
    </div>
    <div class="contact-container" >
        <div class="contact-card">

            <asp:Label ID="lbl_heading" runat="server" 
                Text="Get in touch with us for a personalized demo or any inquiries."
                CssClass="contact-title" />

            <div class="form-grid">

                <!-- First Name -->
                <div class="form-group">
                    <asp:Label ID="lbl_firstName" runat="server" Text="First Name" CssClass="form-label"/>
                    <asp:TextBox ID="txt_firstName" runat="server" CssClass="form-input" Placeholder="Enter your first name"/>
                </div>

                <!-- Last Name -->
                <div class="form-group">
                    <asp:Label ID="lbl_lastName" runat="server" Text="Last Name" CssClass="form-label"/>
                    <asp:TextBox ID="txt_lastName" runat="server" CssClass="form-input" Placeholder="Enter your last name"/>
                </div>

                <!-- Phone -->
                <div class="form-group">
                    <asp:Label ID="lbl_phone" runat="server" Text="Phone" CssClass="form-label"/>
                    <asp:TextBox ID="txt_phone" runat="server" CssClass="form-input" Placeholder="Enter your phone"/>
                </div>

                <!-- Email -->
                <div class="form-group">
                    <asp:Label ID="lbl_email" runat="server" Text="Email" CssClass="form-label"/>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="form-input" Placeholder="Enter your email"/>
                </div>

                <!-- Subject -->
                <div class="form-group full-width">
                    <asp:Label ID="lbl_subject" runat="server" Text="Subject" CssClass="form-label"/>
                    <asp:TextBox ID="txt_subject" runat="server" CssClass="form-input" Placeholder="Enter your subject"/>
                </div>

                <!-- Message -->
                <div class="form-group full-width">
                    <asp:Label ID="lbl_message" runat="server" Text="Message" CssClass="form-label"/>
                    <asp:TextBox ID="txt_message" runat="server" TextMode="MultiLine" Rows="5"
                        CssClass="form-textarea" Placeholder="Enter your message"/>
                </div>

            </div>

            <div class="btn-area">
                <asp:Button ID="btn_submit" runat="server" Text="Join waitlist" CssClass="btn-submit" />
            </div>

        </div>
    </div>

</div>

</form>
</body>
</html>

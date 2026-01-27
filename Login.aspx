<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Samaro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div style="width:500px;margin:200px auto;">
                <h2>SAMARO Login</h2>

                <asp:TextBox ID="txt_email" runat="server" Placeholder="Email" Height="30px" OnTextChanged="txt_email_TextChanged" style="margin-bottom: 20px" Width="479px" />
                <br /><br />

                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Placeholder="Password" Height="30px" Width="479px" />
                <br /><br />

                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btnLogin_Click" Width="217px"/>
                <br /><br />

                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red">_</asp:Label>
            </div>
    </form>
</body>
</html>

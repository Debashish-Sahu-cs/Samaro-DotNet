<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Samaro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #f1f1f1 ">
    <form id="form1" runat="server">
            <div style="padding: 20px; width:500px; margin:200px auto; height: 436px; background-color: #FFFFFF; border-radius:10px;">
                <br /><br />

                <img src="https://framerusercontent.com/images/QIOvgXKPEVIPMZ3GE7z6Ek32HI.png?width=7680&height=4320" alt="Samaro Logo" style="width:150px ; height:80px;" />

                <br />
                <br />

                <asp:TextBox ID="txt_email" runat="server" Placeholder="Email" Height="30px" OnTextChanged="txt_email_TextChanged" style="margin-bottom: 20px ; padding:8px; border-radius:5px; outline:none; border: 1px solid #e4e4e4 ; background-color:#f4f4f4;" Width="479px" />
                <br /><br />

                <br />
                <br />

                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Placeholder="Password" Height="30px" Width="479px" style="padding:8px; border-radius:5px; outline:none; border: 1px solid #e4e4e4 ; background-color:#f4f4f4;" />
                <br />
                <br />
                <br />
                <br />

                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btnLogin_Click" Width="217px" style="border: 2px solid transparent; background-color:#A55578; color:#ffffff; padding:10px; border-radius:5px; font-size:18px;" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="btnClear_Click" Width="217px" style="border:2px solid #A55578; background-color:#ffffff; color:#A55578; padding:10px; border-radius:5px; font-size:18px;" />
                <br /><br />

                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login Page</title>
    <style>
        body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .main {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    h2 {
        color: #333;
        text-align: center;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"], input[type="password"], select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background-color: #5cb85c;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #4cae4c;
    }

    .error-message {
        color: red;
        text-align: center;
        margin-top: 10px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <h2>登录身份</h2>
            <div class="form-group">
                <label for="DropDownList1">选择身份</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">管理员</asp:ListItem>
                    <asp:ListItem Value="2">老师</asp:ListItem>
                    <asp:ListItem Value="3">学生</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="TextBox1">账号</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">密码</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" CssClass="btn" />
                <asp:Label ID="Label1" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

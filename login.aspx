<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>登录 - 选课管理系统</title>
  <link href="/css/bootstrap.css" rel="stylesheet"/>
  <script src="/js/bootstrap.bundle.js"></script>
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
    <h2>选课管理系统</h2>
    <div class="form-group">
      <label for="DropDownList1">选择身份</label>
      <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
        <asp:ListItem Value="1">管理员</asp:ListItem>
        <asp:ListItem Value="2">老师</asp:ListItem>
        <asp:ListItem Value="3">学生</asp:ListItem>
      </asp:DropDownList>
    </div>
    <div class="form-group">
      <label for="TextBox1">账号</label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="TextBox2">密码</label>
      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
      <div class="d-grid gap-2">
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" CssClass="btn btn-primary"/>
      </div>
      <asp:Label ID="Label1" runat="server" CssClass="error-message"></asp:Label>
    </div>
  </div>
</form>
</body>
</html>
<%@ Page Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="~/student/personInfo.aspx.cs" Inherits="WebApplication2.student.personInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="container">
    <h4 style="margin-bottom: 20px;">我的个人信息</h4>
    <table class="table">
      <tbody>
      <tr>
        <th scope="row">姓名</th>
        <td>
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">性别</th>
        <td>
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">民族</th>
        <td>
          <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">出生日期</th>
        <td>
          <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">学院</th>
        <td>
          <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">专业</th>
        <td>
          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">班级</th>
        <td>
          <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">手机</th>
        <td>
          <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">邮箱</th>
        <td>
          <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      <tr>
        <th scope="row">通信地址</th>
        <td colspan="3">
          <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </td>
      </tr>
      </tbody>
    </table>
    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="修改" OnClick="Button1_Click"/>
  </div>
</asp:Content>
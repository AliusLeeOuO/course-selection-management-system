<%@ Page Language="C#" MasterPageFile="~/teacher/teacher.Master" CodeBehind="modifyPersonInfo.aspx.cs" Inherits="WebApplication2.teacher.modifyPersonInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
    <h4 style="margin-bottom: 20px;">修改个人信息</h4>
    <table class="table">
      <tbody>
      <tr>
        <th scope="row">
          <label for="lbl_xm" class="form-label">姓名</label>
        </th>
        <td>
          <asp:TextBox ID="lbl_xm" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <th scope="row">
          <label for="lbl_xb" class="form-label">性别</label>
        </th>
        <td>
          <asp:DropDownList ID="lbl_xb" runat="server" CssClass="form-control">
            <asp:ListItem Text="男" Value="男"></asp:ListItem>
            <asp:ListItem Text="女" Value="女"></asp:ListItem>
          </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <th scope="row">
          <label for="lbl_dm" class="form-label">代号</label>
        </th>
        <td>
          <asp:TextBox ID="lbl_dm" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <th scope="row">
          <label for="lbl_cs" class="form-label">出生年月</label>
        </th>
        <td>
          <asp:TextBox ID="lbl_cs" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <th scope="row">
          <label for="lbl_dh" class="form-label">电话</label>
        </th>
        <td>
          <asp:TextBox ID="lbl_dh" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
        </td>
      </tr>
      </tbody>
    </table>
    <asp:Button CssClass="btn btn-primary" ID="Button1" OnClick="UpdateInfo" runat="server" Text="修改"/>
  </div>
</asp:Content>
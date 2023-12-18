<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="~/student/modifyPersonInfo.aspx.cs" Inherits="WebApplication2.student.modifyPersonInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="container">
    <h4 style="margin-bottom: 20px;">修改个人信息</h4>
    <div class="row">
      <table class="table">
        <tbody>
        <tr>
          <th scope="row">姓名</th>
          <td>
            <asp:TextBox ID="lbl_xm" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">性别</th>
          <td>
            <asp:TextBox ID="lbl_xb" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">民族</th>
          <td>
            <asp:TextBox ID="lbl_mz" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">出生日期</th>
          <td>
            <asp:TextBox ID="lbl_csrq" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">学院</th>
          <td>
            <asp:TextBox ID="lbl_xy" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">专业</th>
          <td>
            <asp:TextBox ID="lbl_zy" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">班级</th>
          <td>
            <asp:TextBox ID="lbl_bj" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">手机</th>
          <td>
            <asp:TextBox ID="lbl_sj" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">邮箱</th>
          <td>
            <asp:TextBox ID="lbl_yx" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <th scope="row">通信地址</th>
          <td>
            <asp:TextBox ID="lbl_txdz" runat="server" CssClass="form-control"></asp:TextBox>
          </td>
        </tr>
        </tbody>
      </table>
      <asp:Button CssClass="btn btn-primary" ID="Button2" OnClick="Button1_Click" runat="server" Text="保存修改"/>
    </div>

    <!-- Bootstrap Modal -->
    <div class="modal fade" id="alertModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalLabel">提示信息</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <asp:Label ID="lblModalBody" runat="server" Text=""></asp:Label>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">关闭</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
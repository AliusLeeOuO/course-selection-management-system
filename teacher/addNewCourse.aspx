<%@ Page Title="Title" Language="C#" MasterPageFile="~/teacher/teacher.Master" CodeBehind="addNewCourse.aspx.cs" Inherits="WebApplication2.teacher.addNewCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h4 style="margin-bottom: 20px;">添加课程</h4>
  <div>
    <div class="mb-3">
      <label for="txtCourseName" class="form-label">课程名称</label>
      <asp:TextBox ID="txtCourseName" runat="server" CssClass="form-control"/>
    </div>
    <div class="mb-3">
      <label for="txtCredits" class="form-label">学分</label>
      <asp:TextBox ID="txtCredits" runat="server" CssClass="form-control" TextMode="Number"/>
    </div>
    <div class="mb-3">
      <label for="txtCredits" class="form-label">上课地点</label>
      <asp:TextBox ID="txtDirection" runat="server" CssClass="form-control"/>
    </div>
    <div class="mb-3">
      <label for="ddlCourseType" class="form-label">课程类型</label>
      <asp:DropDownList ID="ddlCourseType" runat="server" CssClass="form-select">
        <asp:ListItem Text="选修课" Value="选修课"></asp:ListItem>
        <asp:ListItem Text="必修课" Value="必修课"></asp:ListItem>
      </asp:DropDownList>
    </div>
    <div class="mb-3">
      <label for="txtUsualScorePercent" class="form-label">平时分占比</label>
      <asp:TextBox ID="txtUsualScorePercent" runat="server" CssClass="form-control" TextMode="Number"/>
    </div>
    <div class="mb-3">
      <label for="txtFinalScorePercent" class="form-label">期末分占比</label>
      <asp:TextBox ID="txtFinalScorePercent" runat="server" CssClass="form-control" TextMode="Number"/>
    </div>
    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="提交" OnClick="btnSubmit_Click"/>
  </div>
</asp:Content>
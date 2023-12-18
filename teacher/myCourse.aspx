<%@ Page Title="Title" Language="C#" MasterPageFile="~/teacher/teacher.Master" CodeBehind="myCourse.aspx.cs" Inherits="WebApplication2.teacher.myCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h4 style="margin-bottom: 20px;">我的课程</h4>
  <div style="margin-bottom: 10px;">
    <asp:Button ID="AddCourseButton" CssClass="btn btn-primary" runat="server" Text="添加课程" OnClick="AddCourseButton_Click"/>
  </div>
  <asp:GridView ID="GridViewCourses" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
    <Columns>
      <asp:BoundField DataField="kcdm" HeaderText="课程代码"/>
      <asp:BoundField DataField="kcmc" HeaderText="课程名称"/>
      <asp:BoundField DataField="xf" HeaderText="学分"/>
      <asp:BoundField DataField="kclx" HeaderText="课程类型"/>
      <asp:BoundField DataField="dd" HeaderText="地点"/>
      <asp:TemplateField HeaderText="状态">
        <ItemTemplate>
          <%# Convert.ToBoolean(Eval("status")) ? "开启" : "关闭" %>
        </ItemTemplate>
      </asp:TemplateField>
    </Columns>
  </asp:GridView>
</asp:Content>
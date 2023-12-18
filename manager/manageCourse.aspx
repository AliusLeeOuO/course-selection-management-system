<%@ Page Language="C#" CodeBehind="manageCourse.aspx.cs" MasterPageFile="~/manager/manager.Master" Inherits="WebApplication2.manager.manageCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h4>管理课程</h4>
  <asp:GridView ID="GridViewCourses" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" OnRowDataBound="GridViewCourses_RowDataBound">
    <Columns>
      <asp:BoundField DataField="kcdm" HeaderText="课程代码"/>
      <asp:BoundField DataField="kcmc" HeaderText="课程名称"/>
      <asp:BoundField DataField="TeacherName" HeaderText="教师名字"/>
      <asp:BoundField DataField="xf" HeaderText="学分"/>
      <asp:BoundField DataField="dd" HeaderText="地点"/>
      <asp:BoundField DataField="kclx" HeaderText="课程类型"/>
      <asp:BoundField DataField="bfb_ps" HeaderText="平时成绩百分比"/>
      <asp:BoundField DataField="bfb_qm" HeaderText="期末成绩百分比"/>
      <asp:TemplateField HeaderText="操作">
        <ItemTemplate>
          <asp:Button ID="btnToggleStatus" runat="server" CommandName="ToggleStatus" CommandArgument='<%# Eval("kcdm") %>'
                      Text='<%# Convert.ToBoolean(Eval("status")) ? "关闭" : "开放" %>' CssClass="btn"
                      OnCommand="btnToggleStatus_Command"/>
        </ItemTemplate>
      </asp:TemplateField>
    </Columns>
  </asp:GridView>
</asp:Content>
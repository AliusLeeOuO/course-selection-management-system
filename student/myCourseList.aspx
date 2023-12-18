<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="~/student/myCourseList.aspx.cs" Inherits="WebApplication2.student.课程查询" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <h4 style="margin-bottom: 20px;">课表查询</h4>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
      <asp:BoundField DataField="kcdm" HeaderText="课程代码"/>
      <asp:BoundField DataField="kcmc" HeaderText="课程名称"/>
      <asp:BoundField DataField="dm" HeaderText="老师代码"/>
      <asp:BoundField DataField="xm" HeaderText="老师名称"/>
      <asp:BoundField DataField="xf" HeaderText="学分"/>
      <asp:BoundField DataField="dd" HeaderText="地点"/>
    </Columns>
    <EmptyDataTemplate>
      你还没有选课！
    </EmptyDataTemplate>
  </asp:GridView>
</asp:Content>
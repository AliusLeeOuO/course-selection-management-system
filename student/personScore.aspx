<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="~/student/personScore.aspx.cs" Inherits="WebApplication2.student.personScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <h4 style="margin-bottom: 20px;">个人成绩</h4>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
      <asp:BoundField DataField="kcmc" HeaderText="课程名称"/>
      <asp:BoundField DataField="xm" HeaderText="任课老师"/>
      <asp:BoundField DataField="xf" HeaderText="学分"/>
      <asp:BoundField DataField="cj" HeaderText="成绩"/>
      <asp:TemplateField HeaderText="绩点">
        <ItemTemplate>
          <asp:Label ID="lbl_jd" runat="server" Text='<%# CjtoJd(Eval("cj")) %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
      还没有有效的成绩！
    </EmptyDataTemplate>
  </asp:GridView>
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
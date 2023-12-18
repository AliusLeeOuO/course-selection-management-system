<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="~/student/selectCourse.aspx.cs" Inherits="WebApplication2.student.selectCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <h4 style="margin-bottom: 20px;">选课</h4>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
      <asp:TemplateField HeaderText="选择项">
        <ItemTemplate>
          <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Convert.ToBoolean(Eval("flag")) %>'/>
        </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField DataField="kcdm" HeaderText="课程代码"/>
      <asp:BoundField DataField="kcmc" HeaderText="课程名称"/>
      <asp:BoundField DataField="dm" HeaderText="老师代码"/>
      <asp:BoundField DataField="xm" HeaderText="老师名称"/>
      <asp:BoundField DataField="xf" HeaderText="学分"/>
      <asp:BoundField DataField="dd" HeaderText="地点"/>
      <asp:BoundField DataField="kclx" HeaderText="课程类型"/>
    </Columns>
    <EmptyDataTemplate>
      目前还没有可选课程！
    </EmptyDataTemplate>
  </asp:GridView>
  <div style="text-align:center;">
    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" CssClass="btn btn-primary"/>
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
</asp:Content>
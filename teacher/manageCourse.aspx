<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="~/teacher/manageCourse.aspx.cs" Inherits="WebApplication2.teacher.manageCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .input-inline {
      width: 200px;
      display: inline-block;
    }
    .search-condition > div {
      margin-bottom: 10px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
    <div class="search-condition">
      <div>
        课程：<asp:DropDownList ID="ddlt_kc" runat="server" CssClass="form-select input-inline"></asp:DropDownList>
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="查询" OnClick="Button1_Click"/>
      </div>
      <asp:Panel ID="PanelPercentage" runat="server" Visible="false">
        <div>
          平时成绩占比：<asp:TextBox CssClass="form-control input-inline" ID="tbx_bfbps" runat="server"></asp:TextBox>%
          期末成绩占比：<asp:TextBox CssClass="form-control input-inline" ID="tbx_bfbqm" runat="server"></asp:TextBox>%
          <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="保存" OnClick="Button2_Click"/>
        </div>
      </asp:Panel>
    </div>
    <asp:GridView ID="GridViewCJ" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="id">
      <Columns>
        <asp:BoundField DataField="xh" HeaderText="学号"/>
        <asp:BoundField DataField="xm" HeaderText="姓名"/>
        <asp:TemplateField HeaderText="平时成绩">
          <ItemTemplate>
            <asp:TextBox ID="txb_pscj" runat="server" CssClass="form-control" Text='<%# Eval("cj_ps") %>'></asp:TextBox>
          </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="期末成绩">
          <ItemTemplate>
            <asp:TextBox ID="txb_qmcj" runat="server" CssClass="form-control" Text='<%# Eval("cj_qm") %>'></asp:TextBox>
          </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="总成绩">
          <ItemTemplate>
            <asp:Label ID="lbl_cj" runat="server" Text='<%# Eval("cj") %>'></asp:Label>
          </ItemTemplate>
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        还没有学生选课
      </EmptyDataTemplate>
    </asp:GridView>
  </div>
</asp:Content>
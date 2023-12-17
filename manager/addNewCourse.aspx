<%@ Page Title="Title" Language="C#" MasterPageFile="~/manager/manager.Master" CodeBehind="addNewCourse.aspx.cs" Inherits="WebApplication2.manager.addNewCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>添加新课程</h4>
    <table class="table">
        <tbody>
        <tr>
            <th scope="row">课程名称</th>
            <td>
                <asp:TextBox ID="txtCourseName" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">教师</th>
            <td>
                <asp:DropDownList ID="ddlTeacher" runat="server" CssClass="form-control"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th scope="row">学分</th>
            <td>
                <asp:TextBox ID="txtCredits" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">课程性质</th>
            <td>
                <asp:TextBox ID="txtCourseNature" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">地点</th>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">课程类型</th>
            <td>
                <asp:TextBox ID="txtCourseType" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">平时成绩百分比</th>
            <td>
                <asp:TextBox ID="txtUsualScorePercent" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <th scope="row">期末成绩百分比</th>
            <td>
                <asp:TextBox ID="txtFinalScorePercent" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="提交" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>
            </td>
        </tr>
        </tbody>
    </table>
</asp:Content>
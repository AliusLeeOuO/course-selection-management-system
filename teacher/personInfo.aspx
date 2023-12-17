<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="~/teacher/personInfo.aspx.cs" Inherits="WebApplication2.teacher.personInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1">
        <h4 style="margin-bottom: 20px;">我的个人信息</h4>
        <table class="table">
            <tbody>
            <tr>
                <th scope="row">姓名</th>
                <td>
                    <asp:Label ID="lbl_xm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <th scope="row">性别</th>
                <td>
                    <asp:Label ID="lbl_xb" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <th scope="row">代号</th>
                <td>
                    <asp:Label ID="lbl_dm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <th scope="row">出生年月</th>
                <td>
                    <asp:Label ID="lbl_cs" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <th scope="row">工号</th>
                <td>
                    <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <th scope="row">电话</th>
                <td>
                    <asp:Label ID="lbl_dh" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </tbody>
        </table>
        <button type="button" class="btn btn-primary" id="modifyPeronInfo">修改</button>
    </table>
    <script>
     const modifyPeronInfo = document.querySelector('#modifyPeronInfo');
     modifyPeronInfo.onclick = function () {
        window.location.href = '/teacher/modifyPersonInfo.aspx';    
     }
    </script>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="成绩.aspx.cs" Inherits="WebApplication2.teacher.成绩" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%">
        <tr>
            <td>
                课程:<asp:DropDownList ID="ddlt_kc" runat="server"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="ddlt_cj" runat="server" Width="100%">
                    <HeaderTemplate>
                        <table border="1" width="100%">
                            <tr>
                                <td width="20%">学号</td>
                                <td width="20%">姓名</td>
                                <td width="20%">平时成绩</td>
                                <td width="20%">期末成绩</td>
                                <td width="20%">总成绩</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table Width="100%">
                            <tr>
                                <td width="20%">
                                    <asp:Label ID="lbl_xh" runat="server" Text='<%#Eval("xh1") %>'></asp:Label>
                                    <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                </td>
                                <td width="20%">
                                    <asp:Label ID="lbl_xm" runat="server" Text='<%#Eval("xm") %>'></asp:Label>
                                </td>
                                <td width="20%">
                                    <asp:TextBox ID="txb_pscj" runat="server" Text='<%#Eval("cj_ps") %>'></asp:TextBox>
                                </td>
                                <td width="20%">
                                    <asp:TextBox ID="txb_qmcj" runat="server" Text='<%#Eval("cj_qm") %>'></asp:TextBox>
                                </td>
                                <td width="20%">
                                    <asp:Label ID="lbl_cj" runat="server" Text='<%#Eval("cj") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>

        </tr>
        <tr>
            <td>
                平时成绩占比:<asp:TextBox ID="tbx_bfbps" runat="server"></asp:TextBox>%
                期末成绩占比:<asp:TextBox ID="tbx_bfbqm" runat="server"></asp:TextBox>%
                <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
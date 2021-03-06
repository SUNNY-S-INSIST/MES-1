﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmMesBdMjCsList.aspx.cs" Inherits="AppMes_BaseData_frmMesBdMjCsList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>模具子表-模具参数</title>
    <link href="../../Themes/Default/eci.css" rel="stylesheet" />
    <!-- #include File="../../App/Common/PageLoad.aspx" -->
    <script type="text/javascript">

        function deleteAction(obj) {
            msg.confirm("确定要执行删除操作吗?", obj);
        }

        function addAction() {
            var url = "frmMesBdMjCsEdit.aspx";
            eci.open(url);
        }

        function editAction(obj) {
            var key = $(obj).getKey();
            var url = "frmMesBdMjCsEdit.aspx?key=" + key;
            eci.open(url);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="root">
           
           <asp:ETitle runat="server" ID="pagetitle" Title="模具子表-模具参数"></asp:ETitle>
               
            <div id="divQuery" style="width: 100%;">
                <table   id="tbQuery" class="grid" cellpadding="0" cellspacing="0">
                    <tr>
                         <th style="width: 10%"></th>
<th style="width: 20%"></th>
<th style="width: 10%"></th>
<th style="width: 20%"></th>
<th style="width: 10%"></th>
<th style="width: 20%"></th>

                    </tr>
                        <tr>
                        <td class="lbl">编号</td>
<td><asp:ETextBox runat="server" ID ="txtBh"  DataField="BH" Query="A.BH|string|like" Width="85%"></asp:ETextBox></td>
                        <td class="lbl">模具名</td>
<td><asp:EChoose runat="server" ID ="txtMjm"  DataField="MJM" Query="A.MJM|string|like" ECIType="MJ" Width="85%"></asp:EChoose></td>
                        <td class="lbl">参数名</td>
<td><asp:ETextBox runat="server" ID ="txtCsm"  DataField="CSM" Query="A.CSM|string|like" Width="85%"></asp:ETextBox></td>

               </tr>

                    <tr>
                        <td class="center" colspan="6">
                            <asp:EButton runat="server" ID="btnSearch" Text="查询"  Icon="find"   />
                            <asp:EButton runat="server" ID="btnReset" IsClient="true" Text="重置"  Icon="reset"   OnClientClick= "eci.reset('tbQuery');"/></td>
                    </tr>
                </table>
            </div>
            <div id="toolbar">
                <asp:EButton runat="server" ID="btnAdd" Text="新增" Icon="Add" OnClientClick="addAction();" IsClient="true" />
            </div>
            <div id="datagrid">

                <asp:EGridView ID="gvData" Layout="divQuery,toolbar,pagetitle" runat="server" 
                    FitWindow="true"  EnableSorting="True" EnableSelect="false"   EnablePaging="true" EnableClickSelectRow="true" 
                    Width="1000px" KeyField="GUID"  HAlign="center" OnClick="editAction"> 
                    <Columns>

                      <asp:TemplateField HeaderText="编辑" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="80">
                            <ItemTemplate>
                                <asp:EButton runat="server" ID="btnEdit" Text="编辑" IsClient="true" Icon="edit" OnClientClick="editAction(this);" />
                            </ItemTemplate>
                        </asp:TemplateField>


                          <asp:TemplateField HeaderText="删除" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="80">
                            <ItemTemplate>
                                <asp:EButton runat="server" Icon="Delete" ID="btnDelete" Text="删除" IsClient="true" OnClientClick="return deleteAction(this);"  CommandArgument='<%#Eval("GUID")%>'  OnClick="btnDelete_Click" />

                            </ItemTemplate>
                        </asp:TemplateField>


                      <asp:BoundField DataField="BH" HeaderText="编号" SortExpression="BH"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="MJM" HeaderText="模具名" SortExpression="MJM"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="CSM" HeaderText="参数名" SortExpression="CSM"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="SZ" HeaderText="数值" SortExpression="SZ"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="DZXX" HeaderText="低值下限" SortExpression="DZXX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="PDXX" HeaderText="偏低下限" SortExpression="PDXX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="ZCXX" HeaderText="正常下限" SortExpression="ZCXX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="ZCSX" HeaderText="正常上限" SortExpression="ZCSX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="PGSX" HeaderText="偏高上限" SortExpression="PGSX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="GZSX" HeaderText="高值上限" SortExpression="GZSX"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="PDYS" HeaderText="偏低颜色" SortExpression="PDYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="DYS" HeaderText="低颜色" SortExpression="DYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="CDYS" HeaderText="超低颜色" SortExpression="CDYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="ZCYS" HeaderText="正常颜色" SortExpression="ZCYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="PGYS" HeaderText="偏高颜色" SortExpression="PGYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="GYS" HeaderText="高颜色" SortExpression="GYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="CGYS" HeaderText="超高颜色" SortExpression="CGYS"  ItemStyle-Width="150"></asp:BoundField>
                      <asp:BoundField DataField="REMARK" HeaderText="备注" SortExpression="REMARK"  ItemStyle-Width="150"></asp:BoundField>

                   </Columns>
                </asp:EGridView>
            </div>
        </div>
    </form>
</body>
</html>

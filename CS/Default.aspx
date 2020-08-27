<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" KeyFieldName="ProductID" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared">
                <Settings ShowGroupPanel="True" ShowStatusBar="Visible" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" GroupIndex="0" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <GroupSummary>
                    <dx:ASPxSummaryItem FieldName="UnitPrice" ShowInColumn="CategoryID" SummaryType="Count" />
                </GroupSummary>
                <Templates>
                    <StatusBar>
                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" ForeColor="Red" Text="Red row:  more than 10 rows in group">
                        </dx:ASPxLabel>
                        <br />
                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" ForeColor="#00C000" Text="Green row:  less than 10 rows in group">
                        </dx:ASPxLabel>
                    </StatusBar>
                </Templates>
            </dx:ASPxGridView>

            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products]"></asp:AccessDataSource>
        </div>
    </form>
</body>
</html>

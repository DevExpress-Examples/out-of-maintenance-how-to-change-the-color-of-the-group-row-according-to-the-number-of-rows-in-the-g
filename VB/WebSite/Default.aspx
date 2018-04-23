<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication4._Default" %>

<%@ register Assembly="DevExpress.Web.ASPxEditors.v8.2" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<%@ register Assembly="DevExpress.Web.ASPxGridView.v8.2" Namespace="DevExpress.Web.ASPxGridView"
	TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwgv:aspxgridview ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="ProductID" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared">
			<columns>
				<dxwgv:gridviewdatatextcolumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					<editformsettings Visible="False" />
				</dxwgv:gridviewdatatextcolumn>
				<dxwgv:gridviewdatatextcolumn FieldName="ProductName" VisibleIndex="1">
				</dxwgv:gridviewdatatextcolumn>
				<dxwgv:gridviewdatatextcolumn FieldName="CategoryID" VisibleIndex="2">
				</dxwgv:gridviewdatatextcolumn>
				<dxwgv:gridviewdatatextcolumn FieldName="UnitPrice" VisibleIndex="3">
				</dxwgv:gridviewdatatextcolumn>
			</columns>
			<settings ShowGroupPanel="True" ShowStatusBar="Visible" />
			<groupsummary>
				<dxwgv:aspxsummaryitem FieldName="UnitPrice" ShowInColumn="CategoryID" SummaryType="Count" />
			</groupsummary>
			<templates>
				<statusbar>
		<dxe:aspxlabel ID="ASPxLabel1" runat="server" ForeColor="Red" Text="Red row:  more than 10 rows in group">
		</dxe:aspxlabel><br />
		<dxe:aspxlabel ID="ASPxLabel2" runat="server" ForeColor="#00C000" Text="Green row:  less than 10 rows in group">
		</dxe:aspxlabel>
				</statusbar>
			</templates>
		</dxwgv:aspxgridview>
		<asp:accessdatasource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products]">
		</asp:accessdatasource>
		&nbsp;&nbsp;<br />
		<br />

	</div>
	</form>
</body>
</html>

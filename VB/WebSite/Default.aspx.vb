Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports System.Collections.Generic

Namespace WebApplication4
	Partial Public Class _Default
		Inherits System.Web.UI.Page

		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			ASPxGridView1.GroupBy(ASPxGridView1.Columns("CategoryID"))

		End Sub

		Protected Sub ASPxGridView1_HtmlRowPrepared(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewTableRowEventArgs)

			Dim rowCount As Integer = Convert.ToInt32(ASPxGridView1.GetGroupSummaryValue(e.VisibleIndex,ASPxGridView1.GroupSummary(0)))
			If e.RowType = DevExpress.Web.ASPxGridView.GridViewRowType.Group Then

				If rowCount > 10 Then
					e.Row.BackColor = System.Drawing.Color.Red
				Else
					e.Row.BackColor = System.Drawing.Color.Green
				End If
			End If
		End Sub
	End Class
End Namespace

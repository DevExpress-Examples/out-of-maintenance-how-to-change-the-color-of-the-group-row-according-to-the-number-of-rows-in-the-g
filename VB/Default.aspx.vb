Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxGridView1_HtmlRowPrepared(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewTableRowEventArgs)
        Dim rowCount As Integer = Convert.ToInt32(ASPxGridView1.GetGroupSummaryValue(e.VisibleIndex, ASPxGridView1.GroupSummary(0)))
        If e.RowType = DevExpress.Web.GridViewRowType.Group Then

            If rowCount > 10 Then
                e.Row.BackColor = System.Drawing.Color.Red
            Else
                e.Row.BackColor = System.Drawing.Color.Green
            End If
        End If
    End Sub
End Class
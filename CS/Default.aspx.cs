using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxGridView1_HtmlRowPrepared(object sender, DevExpress.Web.ASPxGridViewTableRowEventArgs e) {
        int rowCount = Convert.ToInt32(ASPxGridView1.GetGroupSummaryValue(e.VisibleIndex, ASPxGridView1.GroupSummary[0]));
        if(e.RowType == DevExpress.Web.GridViewRowType.Group) {

            if(rowCount > 10) {
                e.Row.BackColor = System.Drawing.Color.Red;
            } else {
                e.Row.BackColor = System.Drawing.Color.Green;
            }
        }
    }
}
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using System.Collections.Generic;

namespace WebApplication4
{
    public partial class _Default : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxGridView1.GroupBy(ASPxGridView1.Columns["CategoryID"]);
           
        }

        protected void ASPxGridView1_HtmlRowPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableRowEventArgs e)
        {
            
            int rowCount = Convert.ToInt32(ASPxGridView1.GetGroupSummaryValue(e.VisibleIndex,ASPxGridView1.GroupSummary[0]));
            if (e.RowType == DevExpress.Web.ASPxGridView.GridViewRowType.Group)
            {
                
                if (rowCount > 10)
                {
                    e.Row.BackColor = System.Drawing.Color.Red;
                }
                else
                {
                    e.Row.BackColor = System.Drawing.Color.Green;
                }
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AplicacaoTesteFront
{
    
    public partial class CadastroProd : System.Web.UI.Page
    {
        public double total;
        public int? i;
        public int j;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            if(i == null)
            {
                i = 0;
            }            
            i += 1;
            j = i.GetValueOrDefault();
            if (txtCod.Text == "" || txtDesc.Text == "")
            {
                lblErro.Visible = true;
            }
            else
            {
                tblCad.Visible = true;
                lblErro.Visible = false;
                

                HtmlTableRow row = new HtmlTableRow();
                HtmlTableCell cellCod = new HtmlTableCell();
                HtmlTableCell cellDesc = new HtmlTableCell();
                HtmlTableCell cellQuant = new HtmlTableCell();
                HtmlTableCell cellVal = new HtmlTableCell();
                HtmlTableCell cellValTot = new HtmlTableCell();
                cellCod.Controls.Add(new LiteralControl(txtCod.Text));
                cellDesc.Controls.Add(new LiteralControl(txtDesc.Text));
                cellQuant.Controls.Add(new LiteralControl(txtQuant.Text));
                cellVal.Controls.Add(new LiteralControl(txtVal.Text));
                if (Convert.ToDouble(txtQuant.Text) == 0 || Convert.ToDouble(txtVal.Text) == 0)
                {
                    total = Convert.ToDouble(txtVal.Text);
                }
                else
                {
                    total = Convert.ToDouble(txtVal.Text) * Convert.ToDouble(txtQuant.Text);
                }
                cellValTot.Controls.Add(new LiteralControl(total.ToString()));
                row.Cells.Insert(0, cellCod);
                row.Cells.Insert(1, cellDesc);
                row.Cells.Insert(2, cellQuant);
                row.Cells.Insert(3, cellVal);
                row.Cells.Insert(4, cellValTot);
                tblCad.Rows.Insert(j,row);
                
                
            }
        }
    }
}

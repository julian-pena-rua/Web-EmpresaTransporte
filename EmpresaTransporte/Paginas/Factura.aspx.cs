using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpresaTransporte.Paginas
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbCliente.Text = Request.QueryString["Parameter"].ToString();
            lbAuto.Text = Request.QueryString["Parameter2"].ToString();
            LbFecha.Text = Request.QueryString["Parameter3"].ToString();
            lbValor.Text = Request.QueryString["Parameter4"].ToString();
            LbConductor.Text = Request.QueryString["Parameter5"].ToString();
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpresaTransportes.aspx");
        }
    }
}
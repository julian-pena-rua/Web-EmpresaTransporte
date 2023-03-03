using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpresaTransporte.Paginas
{
    public partial class Vehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clientes.aspx");
        }

        protected void BtnVehiculo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vehiculos.aspx");
        }

        protected void BtnServicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Servicio.aspx");
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
           
        }
    }
}
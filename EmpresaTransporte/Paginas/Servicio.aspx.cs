using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpresaTransporte.Paginas
{
    public partial class Servicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtFecha.Text = DateTime.Now.ToString();
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {

            BD objcliente = new BD();

            string id = TxtID.Text;
            string Cliente = DdCliente.SelectedItem.Text;
            string auto = DdAuto.SelectedItem.Text;
            string servicio = TxtServicio.Text;
            string fecha = TxtFecha.Text;
            string valor = TxtValor.Text;
            string conductor = TxtConductor.Text;

            int regnew = objcliente.guardarServicio(id, Cliente, auto, servicio, fecha, valor, conductor);
            Response.Write("Servicio guardado");
        }


        protected void BtnVolver_Click1(object sender, EventArgs e)
        {
            
        }


        protected void BtnPago_Click(object sender, EventArgs e)
        {
            Response.Redirect("Factura.aspx?Parameter=" + DdCliente.SelectedItem.Text + "&Parameter2=" + DdAuto.SelectedItem.Text + "&Parameter3=" + TxtFecha.Text + "&Parameter4=" + TxtValor.Text + "&Parameter5=" + TxtConductor.Text) ;
        }

        protected void BtnMostrar_Click(object sender, EventArgs e)
        {
            BD objcliente = new BD();
            GridView1.DataSource = objcliente.consultarVehiculo();
            GridView1.DataBind();
        }

        protected void BtnCancelar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("EmpresaTransportes.aspx");
        }
    }
}
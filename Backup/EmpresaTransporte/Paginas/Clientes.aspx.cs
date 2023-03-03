using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpresaTransporte.Paginas
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            BD objcliente = new BD();

            string Identificacion = TxtID.Text;
            string nombre = TxtNombre.Text;
            string apellido = TxtApellido.Text;
            string direccion = TxtDireccion.Text;

            int regnew = objcliente.guardarcliente(Identificacion, nombre, apellido, direccion);
            Response.Write("Cliente guardado");
        }

        protected void BtnMostrar_Click(object sender, EventArgs e)
        {
            BD objcliente = new BD();
            GridView1.DataSource = objcliente.consultarcliente();
            GridView1.DataBind();
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpresaTransportes.aspx");
        }
    }
}
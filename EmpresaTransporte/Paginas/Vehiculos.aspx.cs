using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpresaTransporte.Paginas
{
    public partial class Transportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            BD objcliente = new BD();

            string Tipo = DdAuto.SelectedItem.Text;
            string Marca = TxtMarca.Text;
            string Modelo = TxtModelo.Text;
            string Placa = TxtPlaca.Text;

            int regnew = objcliente.guardarAuto(Tipo, Marca, Modelo, Placa);
            Response.Write("Vehiculo guardado");
        }

        protected void BtnMostrar_Click(object sender, EventArgs e)
        {
            BD objcliente = new BD();
            GridView1.DataSource = objcliente.consultarVehiculo();
            GridView1.DataBind();
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpresaTransportes.aspx");
        }


    }
}
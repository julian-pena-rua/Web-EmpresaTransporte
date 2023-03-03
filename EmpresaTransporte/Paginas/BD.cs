using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace EmpresaTransporte.Paginas
{
    public class BD
    {
        private OleDbConnection getConnections()
        {
            OleDbConnection conn = new
            OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; data source = F:\\Universidad\\WEB\\Proyecto WEB\\EmpresaTransporte\\EmpresaTransporte\\Resources\\TrasnporteDB.mdb;User Id= admin; Password=;");

            conn.Open();
            return conn;
        }
        public int guardarcliente(string identificacion, string nombre, string apellidos, string direccion)
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "insert into Clientes values ( @Identificacion, @Nombre, @Apellido, @Direccion)";
            comando.Parameters.AddWithValue("@Identificacion", identificacion);
            comando.Parameters.AddWithValue("@Nombre", nombre);
            comando.Parameters.AddWithValue("@Apellido", apellidos);
            comando.Parameters.AddWithValue("@Direccion", direccion);

            int reg = comando.ExecuteNonQuery();
            return reg;
        }

        public int guardarAuto(string tipoAuto, string marca, string modelo, string placa)
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "insert into Vehiculos values ( @Tipo, @Marca, @Modelo, @Placa)";
            comando.Parameters.AddWithValue("@Tipo", tipoAuto);
            comando.Parameters.AddWithValue("@Marca", marca);
            comando.Parameters.AddWithValue("@Modelo", modelo);
            comando.Parameters.AddWithValue("@Placa", placa);

            int reg = comando.ExecuteNonQuery();
            return reg;
        }

        public int guardarServicio(string Id, string Cliente, string auto, string servicio, string fechaServicio, string valorServicio, string conductor)
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "insert into Servicio values ( @Id, @Cliente, @Auto, @Servicio, @Fecha_Servicio, @Valor_Servicio, @Conductor)";
            comando.Parameters.AddWithValue("@Id", Id);
            comando.Parameters.AddWithValue("@Cliente", Cliente);
            comando.Parameters.AddWithValue("@Auto", auto);
            comando.Parameters.AddWithValue("@Servicio", servicio);
            comando.Parameters.AddWithValue("@Fecha_Servicio", fechaServicio);
            comando.Parameters.AddWithValue("@Valor_Servicio", valorServicio);
            comando.Parameters.AddWithValue("@Conductor", conductor);
            int reg = comando.ExecuteNonQuery();
            return reg;
        }

        public DataTable consultarVehiculo()
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "select * from Vehiculos";
            OleDbDataAdapter da = new
            OleDbDataAdapter(comando);
            DataTable dt = new DataTable();
            da.Fill(dt); //pasar lo que se recoge en acces a un data table (.net)
            return dt;

        }

        public DataTable consultarcliente()
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "select * from Clientes";
            OleDbDataAdapter da = new
            OleDbDataAdapter(comando);
            DataTable dt = new DataTable();
            da.Fill(dt); //pasar lo que se recoge en acces a un data table (.net)
            return dt;

        }

        public DataTable consultarServicio()
        {
            OleDbCommand comando = new OleDbCommand();
            comando.Connection = getConnections();
            comando.CommandType = CommandType.Text;
            comando.CommandText = "select * from Servicio";
            OleDbDataAdapter da = new
            OleDbDataAdapter(comando);
            DataTable dt = new DataTable();
            da.Fill(dt); //pasar lo que se recoge en acces a un data table (.net)
            return dt;

        }
    }
}
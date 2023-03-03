<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicio.aspx.cs" Inherits="EmpresaTransporte.Paginas.Servicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/Resources/Imagenes/transportador LOGO 1 copia.jpg" />

    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
            Text="Matricula Servicio"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
               <td>
                    Id</td>
               <td>
                    <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TxtID" ErrorMessage="Debe dar una ID">*</asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td>
                    Cliente</td>
                <td>
                    <asp:DropDownList ID="DdCliente" runat="server" DataSourceID="BDatos" 
                        DataTextField="Identificacion" DataValueField="Identificacion">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DdCliente" ErrorMessage="Seleccionar un cliente">*</asp:RequiredFieldValidator>
                    <asp:AccessDataSource ID="BDatos" runat="server" 
                        DataFile="~/Resources/BD/TrasnporteDB.mdb" 
                        SelectCommand="SELECT [Identificacion], [Nombre], [Apellido] FROM [Clientes]">
                    </asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Auto</td>
                <td>
                    <asp:DropDownList ID="DdAuto" runat="server" DataSourceID="Autos" 
                        DataTextField="Placa" DataValueField="Placa">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DdAuto" ErrorMessage="Seleccionar un auto">*</asp:RequiredFieldValidator>
                    <asp:AccessDataSource ID="Autos" runat="server" 
                        DataFile="~/Resources/BD/TrasnporteDB.mdb" 
                        SelectCommand="SELECT [Placa] FROM [Vehiculos]"></asp:AccessDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Servicio</td>
                <td>
                    <asp:TextBox ID="TxtServicio" runat="server" Height="93px" TextMode="MultiLine" 
                        Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TxtServicio" ErrorMessage="Llenar el servicio que necesita">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Fecha Servicio</td>
                <td>
                    <asp:TextBox ID="TxtFecha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Valor Servicio</td>
                <td>
                    <asp:TextBox ID="TxtValor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TxtValor" ErrorMessage="Se requiere Valor">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Conductor</td>
                <td>
                    <asp:TextBox ID="TxtConductor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TxtConductor" ErrorMessage="Se requiere Conductor">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="BtnAgregar" runat="server" onclick="BtnAgregar_Click" 
            Text="Agregar" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnMostrar" runat="server" onclick="BtnMostrar_Click" 
            Text="Mostrar" CausesValidation="False" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnPago" runat="server" Text="Pago" onclick="BtnPago_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnVolver" runat="server" Text="Volver" 
            onclick="BtnCancelar_Click1" CausesValidation="False" />
        <br />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />

    
    </div>
    </form>
</body>
</html>

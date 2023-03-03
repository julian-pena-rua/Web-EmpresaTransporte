<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpresaTransportes.aspx.cs" Inherits="EmpresaTransporte.Paginas.Vehiculos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>

    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Resources/Imagenes/transportador LOGO 1 copia.jpg" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Size="XX-Large" 
        Font-Strikeout="False" Font-Underline="False" 
        Text="Menu"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="¿Que desea Hacer?"></asp:Label>
    <br />
    <br />
    <asp:Button ID="BtnCliente" runat="server" onclick="BtnCliente_Click" 
        Text="Registrar Cliente" Width="160px" />
&nbsp;
    <br />
    <asp:Button ID="BtnVehiculo" runat="server" onclick="BtnVehiculo_Click" 
        Text="Registrar Vehiculo" Width="160px" />
&nbsp;
    <br />
    <asp:Button ID="BtnServicio" runat="server" Text="Registrar Servicio" 
        Width="160px" onclick="BtnServicio_Click" />
&nbsp;
    <br />
    <asp:Button ID="BtnSalir" runat="server" Text="Salir" Width="160px" 
        onclick="BtnSalir_Click" onclientclick="javascript:self.close()" />
&nbsp;<br />
    <br />

</div>
    </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="EmpresaTransporte.Paginas.Factura" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 425px;
        }
        .style2
        {
            width: 214px;
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
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Factura"></asp:Label>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Fecha Servicio</td>
                <td id="lbFecha">
                    <asp:Label ID="LbFecha" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Valor Servicio</td>
                <td>
                    <asp:Label ID="lbValor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Auto</td>
                <td>
                    <asp:Label ID="lbAuto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Cliente</td>
                <td>
                    <asp:Label ID="lbCliente" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Conductor</td>
                <td>
                    <asp:Label ID="LbConductor" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="BtnVolver" runat="server" onclick="BtnVolver_Click" 
            Text="Volver" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="EmpresaTransporte.Paginas.Clientes" %>

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
            Text="Matricula Clientes"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    Identificacion</td>
                <td>
                    <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TxtID" ErrorMessage="Se requiere CC/TI">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Nombre</td>
                <td>
                    <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TxtNombre" ErrorMessage="Se requiere Nombre">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Apellido</td>
                <td>
                    <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TxtApellido" ErrorMessage="Se requiere Apellido">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Direccion</td>
                <td>
                    <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TxtDireccion" ErrorMessage="Se requiere Direccion">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="BtnAgregar" runat="server" onclick="BtnAgregar_Click" 
            Text="Agregar" />
&nbsp;&nbsp;
        <asp:Button ID="BtnVolver" runat="server" Text="Volver" 
            onclick="BtnVolver_Click" CausesValidation="False" />
&nbsp;&nbsp;
        <asp:Button ID="BtnMostrar" runat="server" Text="Mostrar" 
            onclick="BtnVolver_Click" CausesValidation="False" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehiculos.aspx.cs" Inherits="EmpresaTransporte.Paginas.Transportes" %>

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
        <br />
        <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Size="XX-Large" 
            Font-Strikeout="False" Font-Underline="False" Text="Matricula Vehiculos"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    Tipo de auto</td>
                <td>
                    <asp:DropDownList ID="DdAuto" runat="server">
                        <asp:ListItem>Elegir Auto</asp:ListItem>
                        <asp:ListItem>Campero</asp:ListItem>
                        <asp:ListItem>Sedan</asp:ListItem>
                        <asp:ListItem>Camion</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DdAuto" ErrorMessage="Se debe de elegir un auto">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Marca</td>
                <td>
                    <asp:TextBox ID="TxtMarca" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TxtMarca" ErrorMessage="Se requiere Marca">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Modelo</td>
                <td>
                    <asp:TextBox ID="TxtModelo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Placa</td>
                <td>
                    <asp:TextBox ID="TxtPlaca" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TxtPlaca" ErrorMessage="Se requiere Placa">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="BtnAgregar" runat="server" onclick="BtnAgregar_Click" 
            Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnMostrar" runat="server" onclick="BtnCancelar_Click" 
            Text="Mostrar Datos" CausesValidation="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnVolver" runat="server" onclick="BtnVolver_Click" 
            Text="Volver" CausesValidation="False" />
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
    
    </div>
    </form>
</body>
</html>

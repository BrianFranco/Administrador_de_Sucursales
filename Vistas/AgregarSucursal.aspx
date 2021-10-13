<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Vistas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TP n°8 - Agregar Sucursal</title>
    <link rel="stylesheet" href="Estilos.css" />
</head>
<body>
    
    <header class="header">
        <a href="AgregarSucursal.aspx" class="HyperLink" >Agregar sucursal</a>
        <a href="ListadoSucursales.aspx" class="HyperLink" >Listado de sucursales</a>
        <a href="EliminarSucursales.aspx" class="HyperLink" >Eliminar sucursal</a>
    </header>
    <main>
    <form id="form1" runat="server">
        <div class="flex">
            <div class="titulo">
                <h1>GRUPO N°4</h1>
            </div>
            <div class="formulario">
                <h2>Agregar Sucursal</h2>
                <hr class="hr" />
                <div class="form-input">
                    <asp:Label ID="LBLNombreSucursal" runat="server" Text="Nombre sucursal:"></asp:Label>
                    <asp:TextBox ID="TXTNombreSucursal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVCampoIncompleto1" runat="server" ControlToValidate="TXTNombreSucursal" ErrorMessage="Ingrese un nombre de sucursal" ForeColor="Red" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-input">
                    <asp:Label ID="LBLDescripcionSucursal" runat="server" Text="Descripción:"></asp:Label>
                    <asp:TextBox ID="TXTDescripcionSucursal" CssClass="input-descripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVCampoIncompleto2" runat="server" ControlToValidate="TXTDescripcionSucursal" ErrorMessage="Ingrese una descripción" ForeColor="Red" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-input">
                    <asp:Label ID="LBLProvinciaSucursal" runat="server" Text="Provincia:"></asp:Label>
                    <asp:DropDownList ID="DDLProvinciaSucursal" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="form-input">
                    <asp:Label ID="LBLDireccionSucursal" runat="server" Text="Dirección:"></asp:Label>
                    <asp:TextBox ID="TXTDireccionSucursal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVCampoIncompleto3" runat="server" ControlToValidate="TXTDireccionSucursal" ErrorMessage="Ingrese una dirección" ForeColor="Red" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-btn">
                    <asp:Button ID="BTNAceptar" CssClass="btn" OnClick="BTNAceptar_Click" runat="server" Text="Aceptar" ValidationGroup="G1" />
                </div>
            </div>
            <div class="validacion">
                <div class="form-mensaje">
                    <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="VSTextboxs" runat="server" ForeColor="Red" HeaderText="Campos incompletos" ValidationGroup="G1" />
                </div>
            </div>
        </div>
    </form>
        </main>
</body>
</html>

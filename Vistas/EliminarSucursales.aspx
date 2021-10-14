<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="Vistas.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="Estilos.css" />
    <title>TP n°8 - Eliminar Sucursales</title>
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
                <div class="formulario-eliminar">
                    <h2>Eliminar Sucursales</h2>
                    <hr class="hr"/>
                    <div class="form-input">
                        <asp:Label ID="LblIdSucursal" runat="server" Text="Ingrese ID sucursal:"></asp:Label>
                        <asp:TextBox ID="TxbIdSucursal" TextMode="SingleLine" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-btn">
                            <asp:Button  CssClass="btn" ID="BtnEliminar" OnClick="BtnEliminar_Click" runat="server" Text="Eliminar" />
                     </div>
                </div>
                <div class="validacion">
                        <asp:RequiredFieldValidator ID="RfvTxbIdSucursal" ControlToValidate="TxbIdSucursal" runat="server" ErrorMessage="No se puede ingresar campos vacios."></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CvTxbIdSucursal" ControlToValidate="TxbIdSucursal" runat="server" ErrorMessage="Debe Ingresar Numeros Enteros y mayores a cero." Type="Integer" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                    <div class="form-mensaje">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </div>    
                </div>
            </div>
        </form>
    </main>
</body>
</html>

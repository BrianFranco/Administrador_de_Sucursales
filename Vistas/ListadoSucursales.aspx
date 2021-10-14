<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="Vistas.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP n°8 - Listado de Sucursales</title>
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
                    <div class="formulario-eliminar">
                        <h2>Listado de Sucursales</h2>
                        <hr class="hr" />
                        <div class="form-input">
                            <asp:Label ID="LlbIdSucursal" runat="server" Text="Buscar por ID de Sucursal:"></asp:Label>
                            <asp:TextBox ID="TxbIdSucursal" TextMode="SingleLine" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-btn">
                            <asp:Button ID="BtnFiltrar" CssClass="btn" runat="server" Text="Filtrar" OnClick="BtnFiltrar_Click" />
                            <asp:Button ID="BtnMostrarTodos" CssClass="btn" runat="server" Text="Mostrar Todos" OnClick="BtnMostrarTodos_Click" />
                        </div>
                    </div>
                    <div class="validacion">
                            <asp:CompareValidator ID="CvTxbIdSucursal" ControlToValidate="TxbIdSucursal" runat="server" Operator="GreaterThan" ValueToCompare="0" Type="Integer" ErrorMessage="Debe Ingresar Numeros Enteros y mayores a cero."></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RfvTxbIdSucursal" runat="server" ErrorMessage="No se puede ingresar campos vacios." ControlToValidate="TxbIdSucursal"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="flex">
                    <asp:GridView ID="GvSucursales"  runat="server"></asp:GridView>
                </div>
            </form>
    </main>
</body>
</html>

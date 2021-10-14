using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidad;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProvincia negocioProvincia;
        NegocioSucursal negocioSucursal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDDLProvincias();
            }
        }

        protected void BTNAceptar_Click(object sender, EventArgs e)
        {
            negocioSucursal = new NegocioSucursal();
            if (RFVCampoIncompleto1.IsValid && RFVCampoIncompleto2.IsValid && RFVCampoIncompleto3.IsValid)
            {
                if (negocioSucursal.InsertarSucursal(GetSucursalCargada()))
                {
                    LblMensaje.Text = "La sucursal se ha agregado con éxito.";
                    LimpiarCampos();
                }
                else
                {
                    LblMensaje.Text = "No se logro agregar la sucursal.";
                }
            }
            
        }

        void CargarDDLProvincias()
        {
            negocioProvincia = new NegocioProvincia();
            DDLProvinciaSucursal.DataSource = negocioProvincia.GetTablaProvincia();
            DDLProvinciaSucursal.DataTextField = "DescripcionProvincia";
            DDLProvinciaSucursal.DataValueField = "Id_Provincia";
            DDLProvinciaSucursal.DataBind();
        }

        protected Sucursal GetSucursalCargada()
        {
            Sucursal sucursal = new Sucursal
            {
                NombreSucursal = TXTNombreSucursal.Text,
                DescripcionSucursal = TXTDescripcionSucursal.Text,
                DireccionSurcursal = TXTDireccionSucursal.Text,
                Id_ProvinciaSucursal = int.Parse(DDLProvinciaSucursal.SelectedValue)
            };

            return sucursal;
        }
        protected void LimpiarCampos()
        {
            TXTNombreSucursal.Text = String.Empty;
            TXTDescripcionSucursal.Text = String.Empty;
            TXTDireccionSucursal.Text = String.Empty;
            DDLProvinciaSucursal.SelectedIndex = 0;
        }
    }
}
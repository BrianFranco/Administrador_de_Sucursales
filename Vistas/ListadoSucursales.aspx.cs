using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        NegocioSucursal neg = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSucursalesGrid();
            }
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            if (CvTxbIdSucursal.IsValid)
            {
                GvSucursales.DataSource = neg.FiltrarSucursalesxId(TxbIdSucursal.Text);
                GvSucursales.DataBind();
                TxbIdSucursal.Text = String.Empty;
            }
        }

        protected void BtnMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarSucursalesGrid();
        }

        void CargarSucursalesGrid()
        {
            GvSucursales.DataSource = neg.GetTablaSucursales();
            GvSucursales.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entidad;

namespace Dao
{
    public class DaoSucursal
    {
        SqlConexion Cn = new SqlConexion();

        public DataTable GetTablaSucursales()
        {
            DataTable tabla =
            Cn.ObtenerTablaxConsulta("SELECT Id_Sucursal AS 'ID Sucursal', NombreSucursal AS 'Nombre', DescripcionSucursal AS 'Descripcion', DescripcionProvincia AS 'Provincia', DireccionSucursal AS 'Direccion' FROM Sucursal INNER JOIN Provincia on Id_ProvinciaSucursal = Id_Provincia");
            return tabla;
        }

        public DataTable GetTablaSucursalesxId(String id)
        {
            DataTable tabla =
            Cn.ObtenerTablaxConsulta("SELECT Id_Sucursal AS 'ID Sucursal', NombreSucursal AS 'Nombre', DescripcionSucursal AS 'Descripcion', DescripcionProvincia AS 'Provincia', DireccionSucursal AS 'Direccion' FROM Sucursal INNER JOIN Provincia on Id_ProvinciaSucursal = Id_Provincia Where Id_Sucursal= "+id);
            return tabla;
        }

        public bool InsertarSucursal(Sucursal sucursal)
        {
            StringBuilder consulta =
            new StringBuilder("INSERT INTO Sucursal(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) VALUES ('");

            consulta.Append($"{sucursal.NombreSucursal}','");
            consulta.Append($"{sucursal.DescripcionSucursal}',");
            consulta.Append($"{sucursal.Id_ProvinciaSucursal},'");
            consulta.Append($"{sucursal.DireccionSurcursal}')");

            if (Cn.EjecutarTransaccion(consulta.ToString()) != 0)
            {
                return true;
            }
            return false;
        }

    }
}

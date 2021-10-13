using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Dao
{
    public class DaoProvincia
    {
        SqlConexion Cn = new SqlConexion();
        public DataTable GetTablaProvincia()
        {
            DataTable tabla = Cn.ObtenerTablaxConsulta("SELECT * FROM Provincia");

            return tabla;
        }
    }
}

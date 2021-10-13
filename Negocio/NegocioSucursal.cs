using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dao;
using Entidad;

namespace Negocio
{
    public class NegocioSucursal
    {
        DaoSucursal dao = new DaoSucursal();
        public DataTable GetTablaSucursales()
        {
            return dao.GetTablaSucursales();
        }

        public bool InsertarSucursal(Sucursal sucursal)
        {
            
            return dao.InsertarSucursal(sucursal);
        }

        public DataTable FiltrarSucursalesxId(String id)
        {
            return dao.GetTablaSucursalesxId(id);
        }
    }
}

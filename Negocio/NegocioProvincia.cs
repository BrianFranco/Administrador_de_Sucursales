using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dao;

namespace Negocio
{
    public class NegocioProvincia
    {
        public DataTable GetTablaProvincia()
        {
            DaoProvincia dao = new DaoProvincia();
            return dao.GetTablaProvincia();
        }
    }
}

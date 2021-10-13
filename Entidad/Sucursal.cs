using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Sucursal
    {
        //Attributes
        private int id_Sucursal;
        private string nombreSucursal;
        private string descripcionSucursal;
        private int id_HorarioSucursal;
        private int id_ProvinciaSucursal;
        private string direccionSurcursal;
        private string url_Imagen_Sucursal;
        //Constructors
        public Sucursal() { }
        public Sucursal(int id_Sucursal, string nombreSucursal, string descripcionSucursal, int id_HorarioSucursal,
            int id_ProvinciaSucursal, string direccionSurcursal, string url_Imagen_Sucursal)
        {
            this.Id_Sucursal = id_Sucursal;
            this.NombreSucursal = nombreSucursal;
            this.DescripcionSucursal = descripcionSucursal;
            this.Id_HorarioSucursal = id_HorarioSucursal;
            this.Id_ProvinciaSucursal = id_ProvinciaSucursal;
            this.DireccionSurcursal = direccionSurcursal;
            this.Url_Imagen_Sucursal = url_Imagen_Sucursal;
        }
        //Getters and Setters
        public int Id_Sucursal { get => id_Sucursal; set => id_Sucursal = value; }
        public string NombreSucursal { get => nombreSucursal; set => nombreSucursal = value; }
        public string DescripcionSucursal { get => descripcionSucursal; set => descripcionSucursal = value; }
        public int Id_HorarioSucursal { get => id_HorarioSucursal; set => id_HorarioSucursal = value; }
        public int Id_ProvinciaSucursal { get => id_ProvinciaSucursal; set => id_ProvinciaSucursal = value; }
        public string DireccionSurcursal { get => direccionSurcursal; set => direccionSurcursal = value; }
        public string Url_Imagen_Sucursal { get => url_Imagen_Sucursal; set => url_Imagen_Sucursal = value; }
    }
}

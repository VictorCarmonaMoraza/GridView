using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPGRIDVIEWS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            //Asignamos el valor del input nombre a la variable nombre
            String nombre = this.txtnombre.Text;
            String modelo = this.txtmodelo.Text;

            Auto auto = new Auto();
            auto.nombre = nombre;
            auto.modelo = modelo;

            List<Auto> autos = new List<Auto>();
            if(string.IsNullOrEmpty(auto.nombre) && string.IsNullOrEmpty(auto.modelo))
            {
                return;
            }
            autos.Add(auto);

            if (autos.Count != 0){
                //Llenamos el GridView
                this.gvAutos.DataSource = autos;
                //Generamos el GirdView
                this.gvAutos.DataBind();
            }
            else
            {
                return;
            }

            
        }
        
    }
}
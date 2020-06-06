using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FormulariosWeb
{
    public partial class Registro : System.Web.UI.Page
    {
        Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                String sql = "INSERT INTO Usuarios VALUES('"
                    + txtUsuario.Text
                    + "','"
                    + txtPass.Text
                    + "','"
                    + txtCorreo.Text
                    + "','"
                    + txtNombre.Text
                    + "','"
                    + ddlPais.Text
                    + "')";
                con.insertar(sql);
                if (sql != null)
                {
                    string script = "alert('Se ha registrado correctamente');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Exito", script, true);
                    borrar();
                }
            }
            catch (Exception ex)
            {
                //string script = "alert('No se ha podido registrar');";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", ex.Message, true);
                borrar();
            }
        }
        //Creamos método borrar para limpiar las cajas de texto de nuestro formulario
        public void borrar()
        {
            txtUsuario.Text = "";
            txtPass.Text = "";
            txtPass2.Text = "";
            txtCorreo.Text = "";
            txtNombre.Text = "";
            ddlPais.Text = "";
        }
    }
}
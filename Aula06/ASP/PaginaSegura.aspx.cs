using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaSegura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Esta parte deverá estar em todos as suas páginas que passam pelo login
        if (Session["New"] != null)
        {
            // Se entrar aqui significa que ele foi autenticado, que ele passou pelo Login
            lblUsuario.Text += Session["New"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message : System.Web.UI.Page
{
    private string msg;
    public string R_esult { get { return msg; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["message"] != null)
        {
            msg = Session["message"].ToString();
        }
        else
        {
            Response.Redirect("Student.aspx");
        }

    }
}
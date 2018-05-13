using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class MyLogin : System.Web.UI.Page
{

    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            Response.Redirect("~/Default");
        }
        try
        {
            conn = new OracleConnection();
            string conString = "Data Source=(DESCRIPTION =" + "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" + "(CONNECT_DATA =" + "(SERVER = DEDICATED)" + "(SERVICE_NAME = ORCLPDB)));" + "User Id=Student123; Password=Rajat123;";
            conn.ConnectionString = conString;
            conn.Open();
            cmd = conn.CreateCommand();
        }
        catch (Exception excep) { Console.WriteLine("Fail"); }

    }

    protected void LogIn(object sender, EventArgs e)
    {
        String uname;
        String pass;
        String Loginas;
        try
        {
            uname = username.Text;
            pass = password.Text;
            Loginas = loginas.Text;

            Console.Write(Loginas);

            if(Loginas.Equals("Admin"))
            {
                if (uname == "admin" && pass == "admin")
                {
                    Session["uname"] = uname;
                    Response.Redirect("~/Default");
                }
            }
            else if(Loginas.Equals("Teacher"))
            {
                cmd.CommandText = "select name from teacher where name = '" + uname + "'and pass ='" + pass + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["uname"] = uname;
                    Session["as"] = "Teacher";
                    error.Text = "Login Successfull";
                    Response.Redirect("~/Teacher");
                }
                else
                {
                    error.Text = "User Not Found" + dr.Read();
                }
            }
            else if (Loginas.Equals("Student"))
            {
                cmd.CommandText = "select name from student where name = '" + uname + "'and pass ='" + pass + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["uname"] = uname;
                    Session["as"] = "Student";
                    error.Text = "Login Successfull";
                    Response.Redirect("~/Student");
                }
                else
                {
                    error.Text = "User Not Found" + dr.Read();
                }
            }
            else
            {
                error.Text = "User Not Found"+dr.Read();
            }
        }
        catch (Exception excep) { }

        
    }
}
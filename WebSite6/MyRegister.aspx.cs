using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class MyRegister : System.Web.UI.Page
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

    protected void id_TextChanged(object sender, EventArgs e)
    {

    }

    protected void name_TextChanged(object sender, EventArgs e)
    {

    }

    protected void password_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dept_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void CreateUser_Click(object sender, EventArgs e)
    {
        String ID, uname, pass, dept_name;
        int tot_cred;
        try
        {
            ID = id.Text;
            uname = name.Text;
            pass = password.Text;
            dept_name = dept.SelectedValue;
            tot_cred = 0;

            cmd.CommandText = "insert into student values('" + ID + "','" + uname + "','" + pass + "','" + dept_name + "'," + tot_cred + ")";
            cmd.ExecuteNonQuery();
            id.Text = "";
            name.Text = "";
            password.Text = "";
            result.Text = "Success";
            Response.Redirect("MyLogin.aspx");
        }
        catch (Exception excep) { result.Text = "Fail" + excep; Console.WriteLine("Fail"); }


    }

   
}
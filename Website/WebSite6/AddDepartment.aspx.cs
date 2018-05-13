using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AddDepartment : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null && Session["uname"].Equals("admin"))
        {

        }
        else
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
        catch (HttpException ex)
        {
            Console.WriteLine("Fail");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String dept_name, established, mbudget;
        try
        {
            dept_name = deptname.Text;
            established = est.Text;
            mbudget = budget.Text;
            cmd.CommandText = "insert into department values('" + dept_name + "', " + established + ", " + mbudget + ")";
            cmd.ExecuteNonQuery();
            deptname.Text = "";
            est.Text = "";
            budget.Text = "";
            Label5.Text = "success";
            Console.WriteLine("Success");
        }
        catch (Exception excep) { Label5.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AddTeacher : System.Web.UI.Page
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

    protected void addT_Click(object sender, EventArgs e)
    {
        String ID, name, pass, dept_name, salary;
        try
        {
            ID = t_id.Text;
            name = t_name.Text;
            pass = t_pass.Text;
            dept_name = t_dept.SelectedValue;
            salary = t_salary.Text;
            cmd.CommandText = "insert into teacher values('" + ID + "','" + name + "','" + pass + "','" + dept_name + "'," + salary + ")";
            cmd.ExecuteNonQuery();

            t_id.Text = "";
            t_name.Text = "";
            t_pass.Text = "";
            t_salary.Text = "";
            Label7.Text = "success";
            Console.WriteLine("Success");
        }
        catch (Exception excep) { Label7.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
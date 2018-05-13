using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AddCourse : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["uname"] == null && !Session["uname"].Equals("admin"))
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        String course_id, title, dept_name, credits, TeacherID, prereq_id;
        try
        {
            course_id = tcid.Text;
            title = ttitle.Text;
            dept_name = tdept.SelectedValue;
            TeacherID = t_tid.SelectedValue;
            credits = tcredits.Text;

            cmd.CommandText = "insert into course values('" + course_id + "', '" + title + "', '" + dept_name + "'," + credits + ")";
            cmd.ExecuteNonQuery();

            Label5.Text = "Success";
            cmd.CommandText = "insert into teaches values('" + TeacherID + "','" + course_id + "')";
            cmd.ExecuteNonQuery();

            if (t_pre.Checked)
            {
                prereq_id = t_precourse.SelectedValue;
                cmd.CommandText = "insert into prereq values('" + course_id + "','" + prereq_id + "')";
                cmd.ExecuteNonQuery();
            }
            t_pre.Checked = false;
            Label5.Text = "Success Yet Again";
            tcid.Text = "";
            ttitle.Text = "";
            tcredits.Text = "";

            Console.WriteLine("Success");
        }
        catch (Exception excep) { t_pre.Checked = false; Label5.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
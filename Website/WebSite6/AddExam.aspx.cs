using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AddExam : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            conn = new OracleConnection();
            string conString = "Data Source=(DESCRIPTION =" + "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" + "(CONNECT_DATA =" + "(SERVER = DEDICATED)" + "(SERVICE_NAME = ORCLPDB)));" + "User Id=Student123; Password=Rajat123;";
            conn.ConnectionString = conString;
            conn.Open();
            cmd = conn.CreateCommand();
        }
        catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }

        if (Session["uname"] != null)
        {
            String uname = Session["uname"].ToString();

            try
            {
                cmd.CommandText = "select name from teacher where name ='" + uname + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read());
                else
                    Response.Redirect("MyLogin.aspx");
            }
            catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }

        }
        else
        {
            Response.Redirect("MyLogin.aspx");
        }
    }

    protected void add_exam_Click(object sender, EventArgs e)
    {
        String Exam_id, Course_id;
        try
        {
            Exam_id = examid.Text;
            Course_id = courseID.SelectedValue;
            cmd.CommandText = "insert into exam values('" + Exam_id + "','" + Course_id + "')";
            cmd.ExecuteNonQuery();

            examid.Text = "";
            error.Text = "success";
            Console.WriteLine("Success");
            Session["examid"] = Exam_id;
            Response.Redirect("AddQuestions.aspx");
        }
        catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
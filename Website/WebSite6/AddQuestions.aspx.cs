using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AddQuestions : System.Web.UI.Page
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
                if (dr.Read()) ;
                else;
                //Response.Redirect("MyLogin.aspx");
            }
            catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }
        }
        else
        {
            Response.Redirect("MyLogin.aspx");
        }

        if (Session["examid"] != null)
        {
            examid.Text = Session["examid"].ToString();
        }
    }

    protected void add_q_Click(object sender, EventArgs e)
    {
        String QID, Exam_id, Question, Opt_a, Opt_b, Opt_c, Correct;
        try
        {
            QID = q_id.Text;
            Exam_id = examid.Text;
            Question = question.Text;
            Opt_a = oA.Text;
            Opt_b = oB.Text;
            Opt_c = oC.Text;
            Correct = corec.Text;
            cmd.CommandText = "insert into question values('" + QID + "','" + Exam_id + "','" + Question + "','" + Opt_a + "','" + Opt_b + "','" + Opt_c + "','" + Correct + "')";
            cmd.ExecuteNonQuery();

            q_id.Text = "" + (Int32.Parse(QID) + 1);
            question.Text = "";
            oA.Text = "";
            oB.Text = "";
            oC.Text = "";
            corec.Text = "";
            error.Text = "success";
            Console.WriteLine("Success");
        }
        catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;

public partial class Teacher : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    static String uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Session["as"].Equals("Teacher"))
        {
            Response.Redirect("~/Default");
        }
        else
        {
            try
            {
                uname = Session["uname"].ToString();
                conn = new OracleConnection();
                string conString = "Data Source=(DESCRIPTION =" + "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" + "(CONNECT_DATA =" + "(SERVER = DEDICATED)" + "(SERVICE_NAME = ORCLPDB)));" + "User Id=Student123; Password=Rajat123;";
                conn.ConnectionString = conString;
                conn.Open();
                cmd = conn.CreateCommand();

                cmd.CommandText = "select * from teacher where name ='" + uname + "'";
                dr = cmd.ExecuteReader();
                dr.Read();
                id.Text = dr.GetString(0);
                name.Text = dr.GetString(1);
                dept.Text = dr.GetString(3);
                salary.Text = "" + dr.GetValue(4);


                cmd.CommandText = "select course.course_id ,course.title,course.credits from course inner join teaches on  course.course_id=teaches.course_id AND teaches.ID='" + id.Text + "' ";
                dr = cmd.ExecuteReader();


                DataTable dt = new DataTable();
                dt.Load(dr);
                courses.DataSource = dt;
                courses.DataBind();


                cmd.CommandText = "select exam.exam_id,exam.course_id from exam inner join teaches on exam.course_id = teaches.course_id and teaches.ID='" + id.Text + "' order by exam.exam_id ";
                dr = cmd.ExecuteReader();

                DataTable dt2 = new DataTable();
                dt2.Load(dr);
                My_Exams.DataSource = dt2;
                My_Exams.DataBind();

            }
            catch (Exception excep) { Console.WriteLine("Fail"); }
        }
    }

    protected void GoToExam_Click(object sender, EventArgs e)
    {
        Session["examid"] = exams.Text;
        try
        {
            cmd.CommandText = "select * from exam where exam_id = '" + exams.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("~/AddQuestions");
            }
            else
            {
                error.Text = "Exam not Available";
            }
        }
        catch(Exception excep)
        {
            Console.WriteLine("Fails");
        }
        
        //Response.Redirect("~/AddQuestions");
    }

    protected void AddExam(object sender, EventArgs e)
    {
        Response.Redirect("~/AddExam");
    }
}
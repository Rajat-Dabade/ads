using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Data.SqlClient;

public partial class Student : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    static String uname;
    static String uid;
    private Object se;
    private EventArgs ee;
    protected void Page_Load(object sender, EventArgs e)
    {
        se = sender;
        ee = e;
        if (Session["uname"] != null)
        {
            uname = Session["uname"].ToString();
        }
        else
        {
            Response.Redirect("MyLogin.aspx");
        }
        try
        {
            conn = new OracleConnection();
            string conString = "Data Source=(DESCRIPTION =" + "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" + "(CONNECT_DATA =" + "(SERVER = DEDICATED)" + "(SERVICE_NAME = ORCLPDB)));" + "User Id=Student123; Password=Rajat123;";
            conn.ConnectionString = conString;
            conn.Open();
            cmd = conn.CreateCommand();

            cmd.CommandText = "select * from student where name ='" + uname + "'";
            dr = cmd.ExecuteReader();
            dr.Read();                               //teacher Login
            id.Text = dr.GetString(0);
            name.Text = dr.GetString(1);
            dept.Text = dr.GetString(3);
            credits.Text = "" + dr.GetValue(4);
            cmd.CommandText = null;
            cmd.CommandText = "select sum(course.credits) from course inner join takes on  course.course_id=takes.course_id AND takes.ID='" + id.Text + "' ";
            dr = cmd.ExecuteReader();
            dr.Read();
            credits.Text = "" + dr.GetValue(0);


            cmd.CommandText = "select course.course_id ,course.title,course.credits,takes.grade from course inner join takes on  course.course_id=takes.course_id AND takes.ID='" + id.Text + "' ";
            dr = cmd.ExecuteReader();


            DataTable dt = new DataTable();
            dt.Load(dr);
            mycourses.DataSource = dt;
            mycourses.DataBind();

            cmd.CommandText = "select course_id from course minus (select course_id from takes where ID='" + id.Text + "')";
            dr = cmd.ExecuteReader();


            DataTable dt2 = new DataTable();
            dt2.Load(dr);
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            cmd.CommandText = "select exam.course_id,exam.exam_id from exam where exam.course_id in (select course_id as cis from takes where takes.ID='" + id.Text + "') order by course_id, exam_id";
            dr = cmd.ExecuteReader();

            DataTable dt3 = new DataTable();
            dt3.Load(dr);
            My_exams.DataSource = dt3;
            My_exams.DataBind();
        }
        catch (Exception excep) { Response.Write("" + excep); Console.WriteLine("Fail"); }
    }

    protected void Register_course(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "insert into takes values('" + id.Text + "','" + course.Text + "','A')";
            cmd.ExecuteNonQuery();
            Page_Load(se, ee);
        }
        catch (Exception excep) { Console.WriteLine("Fail"); }
    }

    protected void attempt_exam(object sender, EventArgs e)
    {
        String Exam_id, ID;
        try
        {
            Exam_id = EXAM_ID.Text;
            ID = id.Text;
            // cmd.CommandText = "insert into exam values('" + Exam_id + "','" + ID + "')";
            cmd.ExecuteNonQuery();
            Session["examid"] = Exam_id;
            Session["studid"] = ID;
            Response.Redirect("~/AttemptExam");
        }
        catch (Exception excep) { error.Text = "Fail" + excep; Console.WriteLine("Fail"); }
    }
}
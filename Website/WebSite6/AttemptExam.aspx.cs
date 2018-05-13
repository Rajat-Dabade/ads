using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;


public partial class AttemptExam : System.Web.UI.Page
{
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    private TextBox[] tb;
    protected int Index { get; set; }

    private String ID, Exam_id;
    private int Questions;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null && Session["studid"] != null && Session["examid"] != null)
        {
            ID = Session["studid"].ToString();
            Exam_id = Session["examid"].ToString();
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

            cmd.CommandText = "select * from question where exam_id ='" + Exam_id + "'";
            dr = cmd.ExecuteReader();

            tb = new TextBox[100];
            Label q;
            int i = 0;
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    q = new Label();
                    q.Text = " ";
                    q.CssClass = "label col-md-12";
                    Form1.Controls.Add(q);
                    q = new Label();
                    q.Text = " ";
                    q.CssClass = "label col-md-12";
                    Form1.Controls.Add(q);

                    q = new Label();
                    q.Text = "Q" + (i + 1) + ":" + dr.GetValue(2);
                    q.CssClass = "well panel-heading  col-md-11 ";
                    Form1.Controls.Add(q);

                    q = new Label();
                    q.Text = "" + dr.GetValue(3);
                    q.CssClass = "btn btn-primary col-md-2";
                    Form1.Controls.Add(q);

                    q = new Label();
                    q.Text = "" + dr.GetValue(4);
                    q.CssClass = "btn btn-primary col-md-offset-1 col-md-2";
                    Form1.Controls.Add(q);

                    q = new Label();
                    q.Text = "" + dr.GetValue(5);
                    q.CssClass = "btn  btn-primary col-md-offset-1 col-md-2";
                    Form1.Controls.Add(q);

                    tb[i] = new TextBox();
                    tb[i].CssClass = "textbox col-md-offset-1 col-md-2";
                    Form1.Controls.Add(tb[i]);

                    q = new Label();
                    q.Text = " ";
                    q.CssClass = "label col-md-12";
                    Form1.Controls.Add(q);
                    i++;
                }

                q = new Label();
                q.Text = " ";
                q.CssClass = "label col-md-12";
                Form1.Controls.Add(q);
                i++;

                q = new Label();
                q.Text = " ";
                q.CssClass = "label col-md-12";
                Form1.Controls.Add(q);
                i++;

                q = new Label();
                q.Text = " ";
                q.CssClass = "label col-md-12";
                Form1.Controls.Add(q);
                i++;
                Button btn = new Button();
                btn.ID = "Button1";
                btn.CssClass = "btn col-md-2 col-md-offset-5 btn-success";

                btn.Text = "Finish";
                btn.Click += new EventHandler(Finish_Click);
                Form1.Controls.Add(btn);
                Questions = i;
            }
        }
        catch (Exception excep) { Response.Write("" + excep); Console.WriteLine("Fail"); }
    }

    protected void Finish_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select correct from question where exam_id ='" + Exam_id + "'";
        dr = cmd.ExecuteReader();
        int i = 0;
        int Correct = 0;
        if (dr.HasRows)
        {

            while (dr.Read())
            {
                if (dr.GetString(0) == tb[i].Text)
                {
                    Correct++;
                }
                i++;
            }
        }
        Questions = i;

        Session["message"] = "Your Score: " + Correct + " out of " + Questions;

        Response.Redirect("Message.aspx");


    }
}
using System;
using System.Data.SqlClient;
using System.Web;

namespace GatePassManagementSystem
{
    public partial class CreateGatePass : System.Web.UI.Page
    {
        string q = "select * from users where id = ";
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectModels; Database=gpms; Integrated Security=SSPI");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            setBtn();
            if (!IsPostBack)
            {
                setData();
            }
        }
        private void setBtn()
        {
            btn.BackColor = System.Drawing.Color.LightBlue;
            btn.BorderWidth = 5;
            btn.BorderColor = System.Drawing.Color.FromArgb(1,1,138,189);
        }
        private void setData()
        {
            if (Request["Username"] == null)
            {
                Response.Redirect("LoginPage.html");
            }
            else if (Request.Cookies["Username"].Value == "" || Request.Cookies["Username"].Value.Length != 16)
            {
                Response.Redirect("LoginPage.html");
            }
            else if (Request.Cookies["Username"].Value.Length == 16)
            {
                SqlCommand cmd = new SqlCommand(q + Request.Cookies["Username"].Value, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    sdr.Read();
                    Session["sid"] = PRN.Text = sdr["id"].ToString();
                    Session["fname"] = fname.Text = sdr["fname"].ToString();
                    Session["mname"] = mname.Text = sdr["mname"].ToString();
                    Session["sname"] = sname.Text = sdr["sname"].ToString();
                    Session["CCG"] = sdr["ccg"].ToString();
                }
                ddr.SelectedIndex = 0;
                sdr.Close();
                con.Close();

            }

        }
        protected void changeLabel(object sender, EventArgs e)
        {
            Session["reason"] = ddr.SelectedIndex;
            pl.Text = Session["reason"].ToString();
        }
        protected void GeneratePass(object sender, EventArgs e)
        {
            if (ddr.SelectedIndex == 0)
            {
                pl.Text = "select reason";
            }
            else if (ddr.SelectedIndex > 0)
            {
                {
                    if (DateTime.Now.DayOfWeek == DayOfWeek.Sunday || DateTime.Now.DayOfWeek == DayOfWeek.Saturday)
                    {
                        pl.Text = "Today is holiday";
                    }
                    else
                    {
                        if (DateTime.Now.Hour > 9 && DateTime.Now.Hour < 16)
                        {
                            if (Session["CCG"].ToString() == "true")
                            {
                               DateTime d=DateTime.Now.AddDays(-1);
                                Boolean b = false;
                                SqlCommand cmd = new SqlCommand("select max(ctime) from gatepass where sid = " + Request.Cookies["Username"].Value, con);
                                con.Open();
                    string s = "";
                    s = cmd.ExecuteScalar().ToString();
                    con.Close();            
                    if (s!="")
                                {
                                    d = DateTime.Parse(s);
                                    b = true;
                                }
                                if (b == true)
                                {
                                    int a = DateTime.Now.Subtract(d).Minutes;
                                    if (a <= 30)
                                    {
                            int temp = 30 - a;
                                        pl.Text = "you have created pass recently , so wait for "+ temp+"minutes";
                                    }
                                    else
                                    {
                                        b = false;
                                    }
                                }
                                 if(b==false)
                                {
                                    cmd = new SqlCommand("Insert into gatepass (sid,rid,ctime) values (@sid,@rid,@dt)", con);
                                    cmd.Parameters.AddWithValue("sid", Request.Cookies["Username"].Value.ToString());
                                    cmd.Parameters.AddWithValue("rid", int.Parse(Session["reason"].ToString()));
                                    cmd.Parameters.AddWithValue("dt", DateTime.Now);
                                    con.Open();
                                    int a = cmd.ExecuteNonQuery();
                                    con.Close();
                        pl.Text = "" + a;
                                }

                            }
                            else if(Session["CCG"].ToString() == "false")
                            {
                                pl.Text = "you are not permitted";
                            }
                        }
                        else if (DateTime.Now.Hour < 9)
                        {
                            pl.Text = "before college time";
                        }
                        else if (DateTime.Now.Hour > 15)
                        {
                            pl.Text = "after college time";
                        }

                    }
                }
            }
        }
    }
}
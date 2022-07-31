using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GatePassManagementSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }
        /*
        string s = "";

            un.BorderStyle = BorderStyle.Solid;
            un.BorderWidth = 2;
            un.BorderColor = System.Drawing.Color.Red;
            un.ForeColor = System.Drawing.Color.Green;
            un.BackColor = System.Drawing.Color.AntiqueWhite;

        }

        protected void transferControl(object sender, EventArgs e)
        {
            if (un.Text == "")
                ulbl.Text = "enter username";

            else if (un.Text.Length != 16)
                ulbl.Text = "Invalid Username";

            else if (un.Text.Length == 16)
            {
                ulbl.Text = "";
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectModels; Database=gpms; Integrated Security=SSPI");

                string q = "select accesstype from users where id = '" + un.Text + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                con.Open();
                s = (string)cmd.ExecuteScalar();
                con.Close();
                if (s != "" && s != null)
                {
                    createCookie("AccessType", s);
                    createCookie("Username", un.Text);
                    q = "select ccg from users where id = '" + un.Text + "'";
                    cmd = new SqlCommand(q, con);
                    con.Open();
                    Boolean b = (bool)cmd.ExecuteScalar();
                    con.Close();
                    createCookie("CCG", b.ToString());
                   actualTransfer();
                }
                else
                    ulbl.Text = "valid Username";
            }

        }
       
        private void actualTransfer()
        {
            if (s.Equals("s") && DateTime.Now.Hour > 9 && DateTime.Now.Hour < 17)
                Response.Redirect("~/CreateGatePass.aspx");
            else if (s.Equals("p"))
                Response.Redirect("~/Professor/Professor.aspx");
            else if (s.Equals("g"))
                Response.Redirect("~/Gaurd/Gaurd.aspx");
            else
            {
                ulbl.Text = "Time is Over";
            }
        }

    }*/
    }
}
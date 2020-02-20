using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class adlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uname = txtName.Text;
        string pwd = txtPass.Text;
        string unam = "admin";
        string upwd = "admin";

        if (unam.Trim() == uname)
        {
            if (upwd.Trim() == pwd)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('login successfull...');window.location='" + "" + "admin.aspx';", true);
            }
            else
            {
                Response.Write("<script>alert('Invalid Password...')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Name...')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPass.Text = "";
    }
}

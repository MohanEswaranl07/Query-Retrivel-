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
using System.Data.SqlClient;

public partial class ViewResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
         string bbb = Request.QueryString["ImgBhr"];
         Label1.Text = bbb.ToString();
         string cmdstr1 = "Select * from AddImage where ImgBhr='" + bbb.ToString() + "' ORDER BY count DESC";
         SqlCommand cmd1 = new SqlCommand(cmdstr1, con);
         SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
         DataTable dt = new DataTable();
         adp1.Fill(dt);
         adp1.Dispose();
         DataList1.DataSource = dt;
         DataList1.DataBind();
         Session["behav"] = Label1.Text;
    }

    protected void HyperLinkItemCommand_Click(object source, DataListCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.Item.ItemIndex);
        LinkButton lnkid = (LinkButton)e.Item.FindControl("LinkButton1");
        Label2.Text = lnkid.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE AddImage SET count=count+1 WHERE Image=@Name", con);

        //update where Name is 'Default' which corresponds to this page
        cmd.Parameters.AddWithValue("@Name", Label2.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        SqlCommand cd = new SqlCommand("select ImgClr from AddImage where Image='" + Label2.Text + "'", con);
        SqlDataReader dr = cd.ExecuteReader();
        dr.Read();
        string bhr = dr["ImgClr"].ToString();

        Response.Redirect("intern.aspx?ImgClr=" + bhr.ToString());
        dr.Close();
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {

    }
}

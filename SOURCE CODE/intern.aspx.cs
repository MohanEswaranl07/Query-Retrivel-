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

public partial class intern : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string beh = Session["behav"].ToString(); 
        string bbb = Request.QueryString["ImgClr"];
        string cmdstr1 = "Select * from AddImage where ImgClr='" + bbb.ToString() + "'and ImgBhr='"+beh.ToString() +"' ORDER BY count DESC";
        SqlCommand cmd1 = new SqlCommand(cmdstr1, con);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        adp1.Fill(dt);
        adp1.Dispose();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void HyperLinkItemCommand_Click(object source, DataListCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.Item.ItemIndex);
        LinkButton lnkid = (LinkButton)e.Item.FindControl("HyperLink1");
        Label1.Text = lnkid.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE AddImage SET count=count+1 WHERE Image=@Name", con);

        //update where Name is 'Default' which corresponds to this page
        cmd.Parameters.AddWithValue("@Name", Label1.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        SqlCommand cd = new SqlCommand("select ImgBhr from AddImage where Image='" + Label1.Text + "'", con);
        SqlDataReader dr = cd.ExecuteReader();
        dr.Read();
        string bhr = dr["ImgBhr"].ToString();

        //Response.Redirect("ViewResult.aspx?ImgBhr=" + bhr.ToString());
        dr.Close();
        con.Close();
    }
}

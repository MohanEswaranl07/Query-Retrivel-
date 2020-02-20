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
using System.IO;

public partial class search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('Please Enter any Keyword')</script>");
        }
        else
        {
            con.Open();
            string name1 = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("Select ImgName from AddImage", con);
            SqlDataAdapter objadapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            objadapter.Fill(dataset, "AddImage");
            DataTable datatable = dataset.Tables[0];
            foreach (DataRow row in datatable.Rows)
            {
                string name = (string)row["ImgName"];

                if (name.ToString() == name1.ToString())
                {
                    string cmdstr1 = "select*from AddImage ORDER BY count DESC(Select * from AddImage where ImgName='" + TextBox1.Text + "')";
                    SqlCommand cmd1 = new SqlCommand(cmdstr1, con);
                    SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    adp1.Fill(dt);
                    adp1.Dispose();
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
            }
        }
   }
    protected void LinkButton1ItemCommand_Click(object source, DataListCommandEventArgs e)
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
        SqlCommand cd = new SqlCommand("select ImgBhr from AddImage where Image='" + Label2.Text + "'", con);
        SqlDataReader dr = cd.ExecuteReader();
        dr.Read();
        string bhr = dr["ImgBhr"].ToString();

        Response.Redirect("ViewResult.aspx?ImgBhr=" + bhr.ToString());
        dr.Close();
        con.Close();
    }
}

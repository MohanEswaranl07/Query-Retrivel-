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

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string id;
        int fid;
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select max(Imgid) from AddImage", con);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
            
        }
        Label5.Text = fid.ToString();
        con.Close();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (FileUpload1.PostedFile == null || String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) || FileUpload1.PostedFile.InputStream == null)
        {
            Response.Write("<br />Error - unable to upload file. Please try again.<br />");
        }
        else
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            
            HttpPostedFile file = FileUpload1.PostedFile;
            byte[] buffer = new byte[file.ContentLength];
            int bytesReaded = file.InputStream.Read(buffer,0,FileUpload1.PostedFile.ContentLength);

            SqlCommand cmd = new SqlCommand("insert into AddImage(Imgid,ImgName,ImgClr,ImgBhr,ImgBry,Image,count ) values('" + Label5.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "',@file,@name,@cunt)", con);
            cmd.Parameters.AddWithValue("@file",buffer);
            cmd.Parameters.AddWithValue("@name", filename);
            cmd.Parameters.AddWithValue("@cunt", "0");


            con.Open();
            try
            {
               cmd.ExecuteNonQuery();
               con.Close();
              
                string pathToCreate1 = "~/Images/";
                if (Directory.Exists(Server.MapPath(pathToCreate1)))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));
                    string fname = Server.MapPath("~/Images/" + filename);
                    SqlCommand cmd1 = new SqlCommand("update AddImage set ImgPath='" + fname + "'where Imgid='" + Label5.Text + "'", con);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    Directory.CreateDirectory(Server.MapPath(pathToCreate1));
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));
                    string fname = Server.MapPath("~/Images/" + filename);
                    SqlCommand cmd2 = new SqlCommand("update AddImage set ImgPath='" + fname + "'where Imgid='" + Label5.Text + "'", con);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
                string pathToCreate = "~/" + TextBox2.Text + "/";
                if (Directory.Exists(Server.MapPath(pathToCreate)))
                {
                   FileUpload1.SaveAs(Server.MapPath("~/" + TextBox2.Text + "/" + filename));
                }
               else
               {
                  Directory.CreateDirectory(Server.MapPath(pathToCreate));
                  FileUpload1.SaveAs(Server.MapPath("~/" + TextBox2.Text + "/" + filename));
               }

                cmd.Dispose();


                FileUpload1.Dispose();
                Label7.Text = "Status: Uploaded Successfully";

            }
            catch (SqlException ex)
            {
                Label7.Text = "error" + ex.Message.ToString();
            }

           
       
        }
    }
}

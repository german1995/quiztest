using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

public partial class add_subcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        Response.Write("sdfsdfsd");
        if (FileUpload1.HasFile)
        {
            try
            {

                sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);


                string name = FileUpload1.FileName;
                string fileName = Path.Combine(Server.MapPath("~/subcat"), FileUpload1.FileName);

                FileUpload1.SaveAs(fileName);

                //Showing the file information
                sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
                sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
                sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
                sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);
                string catname = cat_name.Value;
                string subcat = sub_cat.Value;
                string description = desc.Value;


                String constring = "Server=127.0.0.1;database=gs;Port=7172;Uid=root;password=root";
                MySqlConnection conn = new MySqlConnection(constring);
                MySqlCommand command = conn.CreateCommand();
                command.CommandText = "INSERT INTO subcategory(cat_name,subcat_name,photo) values(@cname,@subcat,@photo)";


                command.Parameters.AddWithValue("@cname", catname);
                command.Parameters.AddWithValue("@subcat", subcat);
                 
                command.Parameters.AddWithValue("@photo", fileName);


                conn.Open();


                command.ExecuteNonQuery();



                conn.Close();


            }
            catch (Exception ex)
            {
                sb.Append("<br/> Error <br/>");
                sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
            }
        }
        else
        {
            lblmessage.Text = sb.ToString();
        }
    }
}
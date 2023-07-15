using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _24Hr_Vigil_SIgn_up_Form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MMConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            Label1.Text = "";
            Label2.Text = "";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int CHKCOUNT = 0;
            foreach (ListItem item in CheckBoxList1.Items)
                if (item.Selected == true)
                {
                    CHKCOUNT += 1;
                }
            if (TextBox1.Text == "")
            {
                Label1.Text = "* Please enter your name before submitting.";
            }
            if (CHKCOUNT == 0)
            {
                Label2.Text = "* Please select a slot before submitting.";
            }
            else
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected == true)
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO VIGIL VALUES(CASE WHEN LEFT('" + item.Value + "',3) = 'Fri' THEN '2023-07-21' ELSE '2023-07-22' END,CONVERT(Time,SUBSTRING('" + item.Value + "',CHARINDEX('-','" + item.Value + "')+1, CHARINDEX('-','" + item.Value + "',CHARINDEX('-','" + item.Value + "')+1)-5)),DATEADD(Hour,1,CONVERT(Time,SUBSTRING('" + item.Value + "',CHARINDEX('-','" + item.Value + "')+1, CHARINDEX('-','" + item.Value + "',CHARINDEX('-','" + item.Value + "')+1)-5))),'" + TextBox1.Text + "')", conn);
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Redirect(Request.RawUrl);
            }

            conn.Close();
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
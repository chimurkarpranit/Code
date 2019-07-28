using System;

namespace Excercise_5
{

    public partial class Choice : System.Web.UI.Page
    {
        string selectText = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i <= CheckItem.Items.Count - 1; i++)
                {
                    if (CheckItem.Items[i].Selected)
                    {
                        selectText += CheckItem.Items[i].Text + ",";
                    }
                }
                if (selectText == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('Please select atleast one option');", true);
                }
                else
                {
                    Response.Redirect("Topics.aspx" + "?Selected=" + selectText);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}
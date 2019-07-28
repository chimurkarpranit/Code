using System; 
namespace Exercise_4
{
    public partial class Default : System.Web.UI.Page
    {
        string selectText = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                RangeDOB.MaximumValue = DateTime.Today.ToShortDateString();
                RangeDOB.MinimumValue = DateTime.MinValue.ToShortDateString();
                Page.Form.DefaultButton = Submit.UniqueID;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i <= Language.Items.Count - 1; i++)
                {
                    if (Language.Items[i].Selected)
                    {
                        selectText += Language.Items[i].Text + " ";
                    }
                }
                Response.Redirect("Information.aspx" + "?Name=" + Name.Text + "&Sex=" + TextSex.Text + "&Email=" + Email.Text + "&DOB=" + DOB.Text + "&FaxNo=" + FaxNo.Text + "&Married=" + Married.SelectedItem.Text + "&LanguageKnown=" + selectText);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
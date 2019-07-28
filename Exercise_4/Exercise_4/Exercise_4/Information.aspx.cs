using System;
using System.Text;

namespace Exercise_4
{
    public partial class Information : System.Web.UI.Page
    {
        string Langknow;
        string[] splitVal;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                TextName.Text = Request.QueryString["Name"];
                TextSex.Text = Request.QueryString["Sex"];
                TextEmail.Text = Request.QueryString["Email"];
                TextDOB.Text = Request.QueryString["DOB"];
                TextFaxNo.Text = Request.QueryString["FaxNo"];
                TextMarried.Text = Request.QueryString["Married"];
                Langknow = Request.QueryString["LanguageKnown"];
                splitVal = Langknow.Split(',');
                TextLanguage.Text = string.Join(",", splitVal);
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}
using System;
using System.Web.UI.WebControls;

namespace Excercise_5
{

    public partial class Topics : System.Web.UI.Page
    {

        string QueryRequest;
        string[] splitVal;
        LinkButton link;
        TableRow row;
        TableCell cell;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                QueryRequest = Request.QueryString["Selected"];
                splitVal = QueryRequest.Split(',');  //Split using delimeter
                for (int i = 0; i < splitVal.Length; i++)
                {
                    row = new TableRow();
                    TableServer.Rows.Add(row);
                    cell = new TableCell();
                    row.Cells.Add(cell);  //Add Cell                 
                    link = new LinkButton();
                    link.Text = splitVal[i];
                    link.OnClientClick = "window.open('https://www.w3schools.com/')";
                    cell.Controls.Add(link);  //Add Hyperlink in cell 
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
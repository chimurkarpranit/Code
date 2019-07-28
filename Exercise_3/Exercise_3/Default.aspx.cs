using System;
using System.Web.UI.WebControls;
namespace Exercise_3
{
    public partial class Default : System.Web.UI.Page
    {
        DropDownList objDropDown;
        string[] obArray;  //array object created   
        protected void Page_Load(object sender, EventArgs e)
        {
            obArray = (TextBox1.Text).Split(',');  //Items accepted and stored into comma separated value
            if (IsPostBack)// After post back request from Create DropDown Button and changes in textbox
            {
                ShowTable();  //Showtable function called
            }
        }
        public void ShowTable()
        {
            Array.Sort(obArray);   //Items Sorted
            try
            {
                if (TextBox1.Text != "")
                {
                    for (int i = 0; i < obArray.Length; i++)
                    {
                        TableRow row = new TableRow();  //New Row added to table
                        TableServer.Rows.Add(row);
                        for (int j = 1; j < 2; j++)
                        {
                            TableCell cell = new TableCell();
                            row.Cells.Add(cell);//Cell Added
                            objDropDown = new DropDownList(); //object of the dropdown list objDropDwon created on runtime
                            objDropDown.AutoPostBack = true;
                            objDropDown.DataSource = obArray;  //fill its items from objArray
                            objDropDown.DataBind();
                            objDropDown.SelectedIndexChanged += OnSelectedIndexChanged; //On selecting item from drop down list
                            cell.Controls.Add(objDropDown);//Add Dropdownlist In Cell
                            cell = new TableCell();
                            row.Cells.Add(cell);//Add Cell
                        }
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('Enter the Item in textbox');", true);
                }
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('Error has occured');", true);
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < TableServer.Rows.Count; i++)
                {
                    DropDownList dl = (DropDownList)sender;
                    if (TableServer.Rows[i].Cells[0].Controls.Contains((DropDownList)dl))
                    {
                        TableServer.Rows[i].Cells[1].Text = "You have selected " + dl.SelectedItem;
                    }
                }
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('Error has occured');", true);
            }
        }
    }
        
}
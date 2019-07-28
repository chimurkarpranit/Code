<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choice.aspx.cs" Inherits="Excercise_5.Choice" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Choice</title>
    <style type="text/css">
                td
                {
                    padding: 10px;
                    text-align: left;
                    background-color:White;
                }
                th
                {
                    padding: 10px;
                    text-align: center;
                    background-color:White;
                }
                </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container jumbotron form-group d-flex justify-content-center align-items-center">
    <form id="ChoicePage" runat="server" class = "form-horizontal">
    <div class=" table-responsive-xl">
    <table class="table table-borderless">
        <tr>      
            <td><asp:Label runat="server" CssClass="col-form-label-lg" ID="LblHeader" Text="Select Multiple Options" ></asp:Label></td>
       </tr>
        <tr>
            <td>
                <div class="checkbox checkboxlist col-lg-12">
                <asp:CheckBoxList runat="server" CssClass="col-lg-auto" ID="CheckItem">
                <asp:ListItem Text=".NET Framework" Value="0"></asp:ListItem>
                <asp:ListItem Text="ASP.NET" Value="1"></asp:ListItem>
                <asp:ListItem Text="VB.NET" Value="2"></asp:ListItem>
                <asp:ListItem Text="C-Sharp.NET" Value="3"></asp:ListItem>
                <asp:ListItem Text="AJAX" Value="4"></asp:ListItem>                
                </asp:CheckBoxList>
                </div>
            </td>
        </tr>
        <tr>     
            <th><asp:Button runat="server" class="btn btn-primary" ID="Submit" Text="Submit" Width="130px" style="font-weight: 700" onclick="Submit_Click"/></th>
        </tr>                    
       </table>
    </div>
    </form>
    </div>
</body>
</html>
<%@ Page Title="Exercise_3" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise_3.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dropdown List</title>
    <style>
    .vertical-center 
    {
        min-height: 100%;  
        min-height: 100vh;

        display: flex;
        align-items: center;
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
    <div class="container d-flex justify-content-center vertical-center">   
    <div class="row"> 
         <div class="col-lg-12"> 
        <form id="Exercise_3" runat="server" defaultfocus="TextBox1">
        <table class="table-responsive">
            <tr><td><asp:TextBox CssClass="form-control" runat="server" ID="TextBox1" Width="400px"></asp:TextBox></td>
                <td><asp:Button runat="server" ID="ButtonCreateDD" Class="btn btn-primary" Text="Create DropDown"/></td>
            </tr>
            <tr><td colspan="2"><asp:Table ID="TableServer" runat="server"></asp:Table></td></tr>
        </table>                 
      </form>
    </div>
  </div>
 </div>
 </body>
</html>
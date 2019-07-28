<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Topics.aspx.cs" Inherits="Excercise_5.Topics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Topics</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container jumbotron form-group d-flex justify-content-center align-items-center">
   <form id="form1" runat="server">
    <asp:Table runat="server" ID="TableServer" CellPadding="10">
    <asp:TableRow TableSection="TableHeader" BackColor="LightBlue">
            <asp:TableCell Text="Selected Topics Are:" Font-Size="Large"/>
        </asp:TableRow>
    </asp:Table>    
   </form>
</div>
</body>
</html>
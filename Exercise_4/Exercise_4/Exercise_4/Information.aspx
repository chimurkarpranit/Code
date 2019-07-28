<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Exercise_4.Information" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head runat="server">
<style type="text/css">
                td
                {
                    padding: 10px;
                    vertical-align: top;
                    text-align: left;
                    border: 1px solid black;
                    background-color:White;
                }
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
  <title>Information</title>
</head>
<body>
    <div class="container form-group jumbotron d-flex justify-content-center vertical-center table-responsive align-items-center">
    <form id="UserInformation" runat="server">
    <h1 class="display-3 justify-content-center">Information of User</h1>
    <table class="table table-borderless">
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelName" Text="Name"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextName"></asp:Label></td>                       
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelSex" Text="Sex"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextSex"></asp:Label></td>                        
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelEmail" Text="Email Id"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextEmail"></asp:Label></td>                       
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelDOB" Text="DOB"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextDOB"></asp:Label></td>             
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelFaxNo" Text="Fax No."></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextFaxNo"></asp:Label></td>                         
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelMarried" Text="Married"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextMarried"></asp:Label></td>                        
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelLanguage" Text="Languages Known"></asp:Label></td>
            <td><asp:Label runat="server" CssClass="form-control" ID="TextLanguage"></asp:Label></td>                     
        </tr>
        </table>
        </form>
    </div>
</body>
</html>
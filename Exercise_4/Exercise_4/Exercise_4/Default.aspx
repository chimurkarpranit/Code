<%@ Page Title="Exercise_4" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise_4.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>User Details</title>
            <style type="text/css">
                td
                {
                    padding: 10px;
                    vertical-align: top;
                    text-align: left;
                    border: 1px solid black;
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
    <form id="UserDetails" runat="server" defaultfocus="Name">
    <h1 class="display-3 justify-content-center">User Details</h1>
    <div class=" table-responsive-xl">
    <table class="table table-bordered">        
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelName" Text="Name"></asp:Label></td>
            <td>
                <asp:TextBox CssClass="form-control" runat="server" ID="Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="ReqName" ControlToValidate="Name" ErrorMessage="Enter Name" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="RegName" ControlToValidate="Name" ValidationExpression="^[^0-9]+$" ErrorMessage="Digit Not Allowed as Name" Display="None"></asp:RegularExpressionValidator>
            </td>            
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelSex" Text="Sex"></asp:Label></td>
            <td><asp:TextBox runat="server" CssClass="form-control" Width="50px" ID="TextSex" MaxLength="1"></asp:TextBox>                          
                    <asp:RegularExpressionValidator runat="server" ID="RegSex" ControlToValidate="TextSex" ValidationExpression="^[MmFf]+$" ErrorMessage="Enter Sex as M/F" Display="None"></asp:RegularExpressionValidator>
            </td>            
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelEmail" Text="Email Id"></asp:Label></td>
            <td><asp:TextBox runat="server" CssClass="form-control" ID="Email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="ReqEmailID" ControlToValidate="Email" ErrorMessage="Enter Email ID" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="RegEmailID" ControlToValidate="Email" ErrorMessage="Invalid EmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
            </td>            
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelDOB" Text="DOB"></asp:Label></td>
            <td><asp:TextBox runat="server" CssClass="form-control" ID="DOB" Width="120px" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegDOB" runat="server" ControlToValidate="DOB" ValidationExpression="^\d{4}[\-\/\s]?((((0[13578])|(1[02]))[\-\/\s]?(([0-2][0-9])|(3[01])))|(((0[469])|(11))[\-\/\s]?(([0-2][0-9])|(30)))|(02[\-\/\s]?[0-2][0-9]))$" SetFocusOnError="true" ErrorMessage="Date is Invalid" Display="None"></asp:RegularExpressionValidator>
                <asp:RangeValidator ID="RangeDOB" runat="server" ControlToValidate="DOB" Display="None" ErrorMessage="Birth Date cannot be greater than current date" Type="Date"></asp:RangeValidator>
            </td>            
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelPassword" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox runat="server" CssClass="form-control" ID="Password" Width="120px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="ReqPassword" ControlToValidate="Password" ErrorMessage="Enter Password" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="RegPassword" ControlToValidate="Password" ErrorMessage="Password Content minimum 8 characters with two Digit" ValidationExpression="^(?=(.*\d){2})[0-9a-zA-Z!@#$%]{8,}$" Display="None"></asp:RegularExpressionValidator>
            </td>           
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelFaxNo" Text="Fax No."></asp:Label></td>
            <td><asp:TextBox runat="server" CssClass="form-control" ID="FaxNo" Width="120px" MaxLength="13"></asp:TextBox>
                
                <asp:RegularExpressionValidator runat="server" ID="RegFaxNo" ControlToValidate="FaxNo" ErrorMessage="Valid Format for Fax No: (###)###-####" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Display="None"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelMarried" Text="Married"></asp:Label></td>
            <td>
                <asp:DropDownList runat="server" CssClass="form-control" ID="Married">
                    <asp:ListItem Value="0">SELECT</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="2">No</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="ReqMarried" ControlToValidate="Married" InitialValue="0" ErrorMessage="Please Select Married" Display="None"></asp:RequiredFieldValidator>                
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server" CssClass="form-control" ID="LabelLanguage" Text="Languages Known"></asp:Label></td>
            <td>
                <asp:ListBox runat="server" CssClass="form-control" ID="Language" SelectionMode="Multiple" Width="130px">
                    <asp:ListItem Value="0">English</asp:ListItem>
                    <asp:ListItem Value="1">Hindi</asp:ListItem>
                    <asp:ListItem Value="2">Marathi</asp:ListItem>
                    <asp:ListItem Value="3">Japanese</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator runat="server" ID="ReqLang" ControlToValidate="Language" InitialValue="" ErrorMessage="Please Select at least One Language" Display="None"></asp:RequiredFieldValidator>
                <asp:Button runat="server" class="btn btn-primary" ID="Submit" Text="Submit" Width="130px" style="font-weight: 700" onclick="Submit_Click"/>
            </td>
        </tr>
        </table>
        <br />
        <table width="80%" class="table table-bordered">
        <tr><td class="td1" colspan="2">
            <asp:Label runat="server"  ID="ErrorSummary" Text="Please Fix The Following Errors:" Width="260px" style="font-weight: 700"></asp:Label>
            <asp:ValidationSummary runat="server" ID="ValErrorSummary"/></td>
        </tr>
        </table>
        </div>
        </form>
        </div>
</body>
</html>
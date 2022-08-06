<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateGatePass.aspx.cs" Inherits="GatePassManagementSystem.GenerateGatePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div id="dv">
            <fieldset>
           <legend>Create GatePass</legend>
                <table>
                    <tr><td>
            <b>PRN No. :- </b></td>
               <td> <asp:TextBox runat="server" Enabled="false" ID="PRN" Text=""></asp:TextBox></td></tr>
           <tr><td><b>First Name :- </b></td><td> <asp:Label runat="server" ID="fname" Text=""></asp:Label></td></tr>
           <tr><td><b>Middle Name :- </b></td><td> <asp:Label runat="server" ID="mname" Text=""></asp:Label></td></tr>
           <tr><td><b>Surname :- </b></td><td> <asp:Label runat="server" ID="sname" Text=""></asp:Label></td></tr>
           <tr><td><b>Semester :- </b></td><td> <asp:Label runat="server" ID="sem" Text=""></asp:Label></td></tr>
           <tr><td><b>Branch :- </b></td><td> <asp:Label runat="server" ID="branch" Text=""></asp:Label></td></tr>
           <tr><td>Date created :-</td><asp:Label runat="server" ID="doc" Text=""></asp:Label></tr></table>
</fieldset>
        </div>
    </form>
</body>
</html>

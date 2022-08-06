<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateGatePass.aspx.cs" Inherits="GatePassManagementSystem.CreateGatePass" StylesheetTheme="Skin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
       @import url("https://fonts.googleapis.com/css2? family=Muli&display=swap");

       *{
           box-sizing: border-box;

            }

    body {
           font-family: "Muli", sans-serif;
           background-color: #e8e6e7;
           color: #fff;
           display: flex;
           flex-direction: column;
           align-items: center;
           justify-content: center;
           height: 100vh;
           overflow: hidden;
           margin: 0;
       font-size:22px;
           }
    .container {
    background-color: #cfb79f;
    padding: 20px 40px;
    border-radius: 5px;
    color: #4c7972;
}
    #fs{
        border-color:black;
        border-width:3px;
    }
   </style>
    <div class="container">

                <fieldset id="fs">
           <legend>Create GatePass</legend>
                <table >
           <tr><td ><b>PRN No. :- </b></td><td> <asp:TextBox SkinID="sk" runat="server" Enabled="false" ID="PRN" Text=""></asp:TextBox></td></tr>
           <tr><td><b>First Name :- </b></td><td> <asp:Label runat="server" ID="fname" Text=""></asp:Label></td></tr>
           <tr><td><b>Middle Name :- </b></td><td> <asp:Label runat="server" ID="mname" Text=""></asp:Label></td></tr>
           <tr><td><b>Surname :- </b></td><td> <asp:Label runat="server" ID="sname" Text=""></asp:Label></td></tr>
           <tr><td><b>Semester :- </b></td><td> <asp:Label runat="server" ID="sem" Text=""></asp:Label></td></tr>
           <tr><td><b>Branch :- </b></td><td> <asp:Label runat="server" ID="branch" Text=""></asp:Label></td></tr>
           <tr><td><b>Leaving reason :- </b></td><td><asp:DropDownList OnSelectedIndexChanged="changeLabel"  ID="ddr" runat="server" DataSourceID="gpmsref" DataTextField="code" DataValueField="code"></asp:DropDownList>  
               <asp:XmlDataSource ID="gpmsref" runat="server" DataFile="~/data/data.xml" XPath="/gpms/reasons/reason"></asp:XmlDataSource>  

         <tr><td style="align-content:end" colspan="2">       <asp:Button SkinID="sk1" Width="300px" ID="btn" runat="server" OnClick="GeneratePass" Text="Create GatePass"/></td></tr>
    <tr><td colspan="2"><asp:Label runat="server" Text="" ID="pl">&nbsp</asp:Label></td></tr></table>

</fieldset>
        </div>
</asp:Content>

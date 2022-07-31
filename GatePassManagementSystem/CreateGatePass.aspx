<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateGatePass.aspx.cs" Inherits="GatePassManagementSystem.CreateGatePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="" ID="pl"></asp:Label>

                <fieldset>
           <legend>Create GatePass</legend>
                <table>
           <tr><td><b>PRN No. :- </b></td><td> <asp:TextBox runat="server" Enabled="false" ID="PRN" Text=""></asp:TextBox></td></tr>
           <tr><td><b>First Name :- </b></td><td> <asp:Label runat="server" ID="fname" Text=""></asp:Label></td></tr>
           <tr><td><b>Middle Name :- </b></td><td> <asp:Label runat="server" ID="mname" Text=""></asp:Label></td></tr>
           <tr><td><b>Surname :- </b></td><td> <asp:Label runat="server" ID="sname" Text=""></asp:Label></td></tr>
           <tr><td><b>Semester :- </b></td><td> <asp:Label runat="server" ID="sem" Text=""></asp:Label></td></tr>
           <tr><td><b>Branch :- </b></td><td> <asp:Label runat="server" ID="branch" Text=""></asp:Label></td></tr>
           <tr><td><b>Leaving reason :- </b></td><td><asp:DropDownList  AutoPostBack="true" OnSelectedIndexChanged="changeLabel"  ID="ddr" runat="server" DataSourceID="gpmsref" DataTextField="code" DataValueField="code"></asp:DropDownList>  
               <asp:XmlDataSource ID="gpmsref" runat="server" DataFile="~/data/data.xml" XPath="/gpms/reasons/reason"></asp:XmlDataSource>  
</td></tr></table>
                <asp:Button runat="server" OnClick="GeneratePass" Text="Create GatePass"/>
</fieldset>
</asp:Content>

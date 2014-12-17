<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="entrar.aspx.vb" Inherits="FirstWeb.entrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="principal">
            <h2>Entrar</h2>
            Usuario:
            <p><asp:TextBox ID="txtUsuario" runat="server" Width="300px"></asp:TextBox></p>
            Senha:
            <p><asp:TextBox ID="txtSenha" runat="server" Width="300px" TextMode="Password"></asp:TextBox></p>
            <p><asp:Button ID="btnEntrar" runat="server" Text="Entrar" /></p> 
            <p><asp:Label ID="lblMsg" runat="server" Width="100%"></asp:Label></p>           
        </div>
        
    </form>
</asp:Content>

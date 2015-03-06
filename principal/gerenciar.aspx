<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/principal/Site.Master" CodeBehind="gerenciar.aspx.vb" Inherits="FirstWeb.gerenciar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
        <div class="principal" style="width: 19%">
            <table border="0">
                <tr>
                    <td><a href="../cadastros/clientes.aspx"><asp:ImageButton ID="imgCliente" runat="server" ImageUrl="~/images/icons/clientes.png" /></a></td>
                    <td><a href="../cadastros/produtos.aspx"><asp:ImageButton ID="imgProdutos" runat="server" ImageUrl="~/images/icons/produtos.png" /></a></td>
                    <td><a href="../pdv/pedidos.aspx"><asp:ImageButton ID="imgPedidos" runat="server" ImageUrl="~/images/icons/pedidos.png" /></a></td>
                </tr>
                <tr>
                    <td>Clientes</td>
                    <td>Produtos</td>
                    <td>Pedidos</td>
                </tr>
                <tr>
                    <td><a href="../pdv/entrega.aspx"><asp:ImageButton ID="imgEntrega" runat="server" ImageUrl="~/images/icons/entrega.png" /></a></td>
                    <td><a href="../relatorios/aniversariantes.aspx"><asp:ImageButton ID="imgAniversarios" runat="server" ImageUrl="~/images/icons/aniversarios.png" /></a></td>
                    <td><a href="../relatorios/estoque.aspx"><asp:ImageButton ID="imgEstoque" runat="server" ImageUrl="~/images/icons/estoque.png" /></a></td>
                </tr>
                <tr>
                    <td>Entrega</td>
                    <td>Aniversarios</td>
                    <td>Estoque</td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:ImageButton ID="imgSair" runat="server" ImageUrl="~/images/icons/sair.png" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>Sair</td>
                    <td></td>
                </tr>
            </table>
        </div>
</asp:Content>

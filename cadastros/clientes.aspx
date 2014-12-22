<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/principal/Site.Master" CodeBehind="clientes.aspx.vb" Inherits="FirstWeb.clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="height: 100%">
        <div style="width: 85px; float: left; height: 540px; margin-right: 10px">
             <table style="text-align:center; width: 75px;">
                 <tr><td><asp:ImageButton ID="imgbtnAdicionar" runat="server"  ImageUrl="~/images/icons/acao_adicionar.png"/>Adicionar</td></tr>
                 <tr><td><asp:ImageButton ID="imgbtnRemover" runat="server"  ImageUrl="../images/icons/acao_remover.png" />Remover</td></tr>
                 <tr><td><asp:ImageButton ID="imgbtnEditar" runat="server"  ImageUrl="../images/icons/acao_editar.png" />Editar</td></tr>
                 <tr><td><asp:ImageButton ID="imgbtnCancelar" runat="server"  ImageUrl="../images/icons/acao_cancelar.png" />Cancelar</td></tr>
                 <tr><td><asp:ImageButton ID="imgbtnPesquisar" runat="server"  ImageUrl="../images/icons/acao_pesquisar.png" />Pesquisar</td></tr>
                 <tr><td><asp:ImageButton ID="imgbtnVoltar" runat="server"  ImageUrl="../images/icons/sair.png" />Voltar</td></tr>
             </table>
         </div>

        <div style="width: 280px; float: left;">
            <h4>Tipo</h4>
            
            <table style="text-align:right;">
                <tr>
                    <td><asp:Label ID="lblDocumento" runat="server" Text="Documento:"></asp:Label></td>
                    <td><asp:DropDownList ID="ddlDocumento" class="drop" runat="server" Width="175px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label></td>
                    <td><asp:DropDownList ID="ddlStatus" class="drop" runat="server" TabIndex="1" Width="175px"></asp:DropDownList></td>
                </tr>
            </table>
        </div>

        <div style="width: 859px; float: left;">
            <h4>Identificação</h4>
            <table style="text-align:right; width: 750px" >
                <tr>
                    <td><asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label></td>
                    <td><asp:TextBox ID="txtCodigo" runat="server" Width="450px" TabIndex="2" type="number"></asp:TextBox></td>        
                    <td><asp:Label ID="lblCPF" runat="server" Text="CPF:"></asp:Label></td>         
                    <td><asp:TextBox ID="txtCPF" runat="server" Width="200px" TabIndex="3"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label></TD>
                    <td colspan="4"><asp:TextBox ID="txtNome" runat="server" TabIndex="4" Width="767px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblApelido" runat="server" Text="Apelido:"></asp:Label></td>
                    <td><asp:TextBox ID="txtApelido" runat="server" Width="450px" TabIndex="5"></asp:TextBox></td>
                    <td><asp:Label ID="lblNascimento" runat="server" Text="Nascimento:"></asp:Label></td>
                    <td><asp:TextBox ID="txtNascimento" runat="server" Width="200px" TabIndex="6" type="date"></asp:TextBox></td>
                </tr>
            </table>
        </div>

        <div style="width: 990px; float: left;">
            <h4>Endereço</h4>
            <table style="text-align:right; width: 750px">
                <tr>
                    <td><asp:Label ID="lblEndereco" runat="server" Text="Código:"></asp:Label></td>
                    <td><asp:TextBox ID="txtEndereco" runat="server" Width="230px" TabIndex="7" type="number"></asp:TextBox></td>                    
                    <td><asp:Label ID="lblCEP" runat="server" Text="CEP:"></asp:Label></td>
                    <td><asp:TextBox ID="txtCEP" runat="server" Width="230px" TabIndex="8"></asp:TextBox></td> 
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblLogradouro" runat="server" Text="Logradouro:"></asp:Label>
                    <td colspan="5"><asp:TextBox ID="txtLogradouro" runat="server" Width="846px" TabIndex="9"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblComplemento" runat="server" Text="Complemento:"></asp:Label></td>
                    <td colspan="3"><asp:TextBox ID="txtComplemento" runat="server" Width="530px" TabIndex="10"></asp:TextBox></td>
                    <td><asp:Label ID="lblNumero" runat="server" Text="Numero:"></asp:Label></td>
                    <td><asp:TextBox ID="txtNumero" runat="server" Width="230px" TabIndex="11"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCidade" runat="server" Text="Cidade:"></asp:Label></td>
                    <td><asp:TextBox ID="txtCidade" runat="server" Width="230px" TabIndex="12"></asp:TextBox></td>
                    <td><asp:Label ID="lblBairro" runat="server" Text="Bairro:"></asp:Label></td>
                    <td><asp:TextBox ID="txtBairro" runat="server" Width="230px" TabIndex="13"></asp:TextBox></td>
                    <td><asp:Label ID="lblUF" runat="server" Text="UF:"></asp:Label></td>
                    <td><asp:TextBox ID="txtUF" runat="server" Width="230px" TabIndex="14"></asp:TextBox></td>
                </tr>
            </table>
        </div>
 
        <div style="width: 990px; float: left;">
            <br />
            <h4>Contato</h4>
            <table style="text-align:right; width: 750px">
                <tr>
                    <td><asp:Label ID="lblContato" runat="server" Text="Código:"></asp:Label></td>
                    <td><asp:TextBox ID="txtContato" runat="server" Width="235px" TabIndex="15" type="number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblRepresentante" runat="server" Text="Representante:"></asp:Label></td>
                    <td colspan="5"><asp:TextBox ID="txtRepresentante" runat="server" Width="830px" TabIndex="16"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
                    <td colspan="5"><asp:TextBox ID="txtEmail" runat="server" Width="830px" TabIndex="17"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label></td>
                    <td><asp:TextBox ID="txtTelefone" runat="server" Width="235px" TabIndex="18"></asp:TextBox></td>
                    <td><asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label></td>
                    <td><asp:TextBox ID="txtCelular" runat="server" Width="235px" TabIndex="19"></asp:TextBox></td>
                    <td><asp:Label ID="lblFax" runat="server" Text="Fax:"></asp:Label></td>
                    <td><asp:TextBox ID="txtFax" runat="server" Width="230px" TabIndex="20"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>

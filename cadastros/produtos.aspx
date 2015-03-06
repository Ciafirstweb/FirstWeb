<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/principal/Site.Master" CodeBehind="produtos.aspx.vb" Inherits="FirstWeb.produtos" %>

<asp:Content ID="HeadContent1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
         $(function () {
             $('input#ContentPlaceHolder1_txtModelo').quicksearch('table#ContentPlaceHolder1_dgvProduto tbody tr');
         })
      </script> 
    <script>
        function CalculaValores() {
            custo = (document.getElementById("ContentPlaceHolder1_txtCusto").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtCusto").value);
            desconto = (document.getElementById("ContentPlaceHolder1_txtDesconto").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtDesconto").value);
            ipi = (document.getElementById("ContentPlaceHolder1_txtIPI").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtIPI").value);
            icms = (document.getElementById("ContentPlaceHolder1_txtICMS").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtICMS").value);
            substri = (document.getElementById("ContentPlaceHolder1_txtSubsTri").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtSubsTri").value);
            venda = (document.getElementById("ContentPlaceHolder1_txtVenda").value = "" ? 0 : document.getElementById("ContentPlaceHolder1_txtVenda").value);

            custo = custo - desconto;
            ipi = (ipi * custo) / 100;
            icms = (icms * custo) / 100;
            substri = (substri * custo) / 100;
            imposto = custo + ipi + icms + substri;
            lucro = (venda - imposto) * 100 / imposto;

            document.getElementById("ContentPlaceHolder1_txtComImp").value = imposto.toFixed(2);
            document.getElementById("ContentPlaceHolder1_txtLucro").value = lucro.toFixed(2);
        };
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblErro" runat="server" Text=""></asp:Label>


    <div style="width: 85px; float: left; height: 540px; margin-right: 10px">
        
        <table style="text-align: center; width: 75px;">
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnAdicionar" runat="server" ImageUrl="~/images/icons/acao_adicionar.png" />Adicionar</td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnRemover" runat="server" ImageUrl="../images/icons/acao_remover.png" />Remover</td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnEditar" runat="server" ImageUrl="../images/icons/acao_editar.png" />Editar</td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnCancelar" runat="server" ImageUrl="../images/icons/acao_cancelar.png" />Cancelar</td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnPesquisar" runat="server" ImageUrl="../images/icons/acao_pesquisar.png" />Pesquisar</td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="imgbtnVoltar" runat="server" ImageUrl="../images/icons/sair.png" />Voltar</td>
            </tr>
        </table>
            
    </div>
    <asp:Panel ID="pnlProduto" runat="server" Height="138px" ScrollBars="Auto" Visible="False">
    
    <asp:GridView ID="dgvProduto" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField HeaderText="Sel" ShowCancelButton="False" ShowSelectButton="True" SelectText="Sel" />
            <asp:BoundField DataField="Cod" HeaderText="Cod" />
            <asp:BoundField DataField="Barras" HeaderText="Barras" Visible="False" />
            <asp:BoundField DataField="Produto" HeaderText="Produto" />
            <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
            <asp:BoundField DataField="Cor.Nome" HeaderText="Cor" />
            <asp:BoundField DataField="Tamanho.Nome" HeaderText="Tamanho" />
            <asp:BoundField DataField="Est_Atual" HeaderText="Est. Atual" />
            <asp:BoundField DataField="Est_Fisico" HeaderText="Est. Fisico" />
            <asp:BoundField DataField="Venda" HeaderText="Venda" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
        </Columns>
    </asp:GridView>
        </asp:Panel>
    <br />
    <div style="width: 325px; float: left;">
        <h4>Identificação</h4>
        <table style="text-align: right;">
            <tr>
                <td>
                    <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="230px" TabIndex="1"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblBarras" runat="server" Text="Barras:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtBarras" runat="server" Width="230px" TabIndex="1" BackColor="#CCCCCC"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblRef" runat="server" Text="Ref:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtRef" runat="server" Width="230px" TabIndex="2"></asp:TextBox></td>
            </tr>
        </table>
    </div>

    <div style="width: 665px; float: left;">
        <h4>Informações</h4>
        <table style="text-align: right;">
            <tr>
                <td>
                    <asp:Label ID="lblFornecedor" runat="server" Text="Fornecedor:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlFornecedor" class="drop" runat="server" TabIndex="3" Width="565px">
                        <asp:ListItem Value="0"> </asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProduto" runat="server" Text="Produto:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlProduto" class="drop" runat="server" TabIndex="4" Width="565px" BackColor="#CCCCCC">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Cama</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblModelo" runat="server" Text="Modelo:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtModelo" runat="server" Width="550px" BackColor="#CCCCCC"></asp:TextBox>
                    <input id="TxtModelo0" TYPE="hidden" />
                </td>
            </tr>
        </table>
    </div>

    <div style="width: 325px; float: left;">
        <h4>Categorias</h4>
        <table style="text-align: right;">
            <tr>
                <td>
                    <asp:Label ID="lblCor" runat="server" Text="Cor:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlCor" class="drop" runat="server" TabIndex="6" Width="230px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTamanho" runat="server" Text="Tamanho:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlTamanho" class="drop" runat="server" TabIndex="7" Width="230px"></asp:DropDownList></td>
            </tr>
        </table>
    </div>

    <div style="width: 660px; float: left;">
        <h4>Valores</h4>
        <table style="text-align: right;">
            <tr>
                <td>
                    <asp:Label ID="lblCusto" runat="server" Text="$ Custo:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtCusto" runat="server" Width="200px" TabIndex="8" onblur="CalculaValores()"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDesconto" runat="server" Text="$ Desconto:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtDesconto" runat="server" Width="200px" TabIndex="9" onblur="CalculaValores()"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblIPI" runat="server" Text="% IPI:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtIPI" runat="server" Width="200px" TabIndex="10" onblur="CalculaValores()"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblComImp" runat="server" Text="$ Com Imposto:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtComImp" runat="server" Width="200px" TabIndex="11" Enabled="False" onblur="CalculaValores()"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblICMS" runat="server" Text="% ICMS:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtICMS" runat="server" Width="200px" TabIndex="12" onblur="CalculaValores()"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblVenda" runat="server" Text="$ Venda:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtVenda" runat="server" Width="200px" TabIndex="14" onblur="CalculaValores()"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSubsTri" runat="server" Text="% SubsTri:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtSubsTri" runat="server" Width="200px" TabIndex="13" onblur="CalculaValores()"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblLucro" runat="server" Text="% Lucro:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtLucro" runat="server" Width="200px" TabIndex="15" onblur="CalculaValores()"></asp:TextBox></td>
            </tr>
        </table>
    </div>

    <div style="width: 990px; float: left;">
        <h4>Outros</h4>
        <table style="text-align: right; width: 930px">
            <tr>
                <td>
                    <asp:Label ID="lblDtCadastro" runat="server" Text="Dt. Cadastro:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtDt_Cadastro" runat="server" Width="200px" TabIndex="16"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblEstMin" runat="server" Text="Est. Min:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEst_Min" runat="server" Width="200px" TabIndex="19"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlStatus" class="drop" runat="server" Width="200px" TabIndex="22" BackColor="#CCCCCC">
                        <asp:ListItem Selected="True" Value="1">Ativo</asp:ListItem>
                        <asp:ListItem Value="0">Inativo</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDtAtualização" runat="server" Text="Dt. Atualização:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtDt_Atualizacao" runat="server" Width="200px" TabIndex="17"></asp:TextBox></td>

                <td>
                    <asp:Label ID="lblEstAtual" runat="server" Text="Est. Atual:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEst_Atual" runat="server" Width="200px" TabIndex="20"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEntrega" runat="server" Text="Entrega:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlEntrega" class="drop" runat="server" Width="200px" TabIndex="18">
                        <asp:ListItem Value="1">Pronta Entrega</asp:ListItem>
                        <asp:ListItem Selected="True" Value="2">Encomenda</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblEstFisico" runat="server" Text="Est. Fisico:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEst_Fisico" runat="server" Width="200px" TabIndex="21"></asp:TextBox></td>
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/principal/Site.Master" CodeBehind="pedidos.aspx.vb" Inherits="FirstWeb.pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $('#ContentPlaceHolder1_txtCEP').cep({
            done: function (endereco) {
                endereco.tipo_logradouro = endereco.tipo_logradouro + " " + endereco.logradouro + " / " + endereco.bairro + " / " + endereco.cidade + " / " + endereco.uf;
                document.getElementById("ContentPlaceHolder1_txtEndereco").value = endereco.tipo_logradouro;
                document.getElementById("ContentPlaceHolder1_txtNumero").focus();
            },

            // Outras opções, caso você queira
            autofill: false,
            cache: false
        });
    });
</script>
 <script>
     !function (t) {
         function n(t) {
             return t.toString().replace(/\D/g, "").substr(0, 8)
         } function a(t) {
             var a = "", e = n(t);
             return a = e.length > 5 ? e.substr(0, 5) + "-" + e.substr(5, 3) : e
         } function e(n, a) {
             t("[" + a + "]").each(function () {
                 var e = t(this), o = e.attr(a); n[o] && e.val(n[o])
             })
         } var o = "http://cep.republicavirtual.com.br/web_cep.php?formato=json&cep=";
         t.fn.cep = function (r) {
             var u = {
                 autofill: !0, autofill_attr: "data-cep", done: function () { }
             }; return "object" == typeof r ? u = t.extend(u, r) : "function" == typeof r && (u.done = r), this.each(function () {
                 var r = t(this); r.on("keyup change", function () {
                     var i = n(r.val()); r.val(a(i)), 8 === i.length && (r.attr("disabled", !0), t.get(o + i, function (t) {
                         u.autofill && e(t, u.autofill_attr), u.done(t)
                     }).always(function () { r.attr("disabled", !1) }))
                 })
             }), this
         }
     }(jQuery)
</script>
    <script src="../js/jquery.quicksearch.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('input#ContentPlaceHolder1_txtModelo').quicksearch('table#ContentPlaceHolder1_dgvProduto tbody tr');
        })
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblErro" runat="server" Text=""></asp:Label>
    <div style="width: 82px; float: left; height: 541px; margin-right: 10px">        
        <table style="text-align: center; width: 82px;">
            <tr><td><asp:ImageButton ID="imgbtnAdicionar" runat="server" ImageUrl="~/images/icons/pedido-adicionar.png" />Adicionar</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnRemover" runat="server" ImageUrl="../images/icons/pedido-remover.png" />Remover</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnEditar" runat="server" ImageUrl="../images/icons/pedido-editar.png" />&nbsp;&nbsp;Editar&nbsp;&nbsp;</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnCancelar" runat="server" ImageUrl="../images/icons/pedido-cancelar.png" />Cancelar</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnCliente" runat="server" ImageUrl="../images/icons/pedido-cliente.png" />&nbsp;&nbsp;Cliente&nbsp;&nbsp;</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnPedido" runat="server" ImageUrl="../images/icons/pedido-pesquisar.png" />&nbsp;Pedido&nbsp;</td></tr>
            <tr><td><asp:ImageButton ID="imgbtnImprimir" runat="server" ImageUrl="../images/icons/pedido-imprimir.png" />Imprimir</td></tr>
            <tr><td><asp:Button ID="btnCliente" runat="server" Text="Button" Visible="False" /></td></tr>
            <tr><td><asp:Button ID="btnProduto" runat="server" Text="Button" Visible="False" /></td></tr>
            <tr><td><asp:Button ID="btnPagamento" runat="server" Text="Button" Visible="False" /></td></tr>
        </table>            
    </div>
    <br />
    <div style="width: 230px; float: left; height: 130px;">
        <h4>Pedido</h4>
        <table style="text-align: right;">
            <tr><td><asp:Label ID="lblPedido" runat="server" Text="Pedido:"></asp:Label></td>
            <td style="text-align: left"><asp:TextBox ID="txtPedido" runat="server" Width="150px" TabIndex="1"></asp:TextBox></td></tr>

            <tr><td><asp:Label ID="lblData" runat="server" Text="Data:"></asp:Label></td>
            <td style="text-align: left"><asp:TextBox ID="txtData" runat="server" Width="150px" TabIndex="1"></asp:TextBox></td></tr>

            <tr><td><asp:Label ID="lblTipo" runat="server" Text="Tipo:"></asp:Label></td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlTipo" class="drop" runat="server" Width="162px" TabIndex="2" BackColor="#CCCCCC">
                        <asp:ListItem Selected="True" Value="1">Pedido</asp:ListItem>
                        <asp:ListItem Value="0">Orçamento</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>

    <div style="width: 950px; float: left; height: 130px;  width:951px;">
        <h4>Informações</h4>
        <asp:Panel ID="pnlCliente" runat="server" defaultbutton="imgbtnRemover">
        <table style="text-align: right;">       
            <tr>
                <td><asp:Label ID="lblCodigo" runat="server" Text="Cod:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtCodigo" runat="server" Width="100px" TabIndex="3"></asp:TextBox></td>

                <td><asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtNome" runat="server" Width="375px" TabIndex="4"></asp:TextBox></td>

                <td><asp:Label ID="lblDocumento" runat="server" Text="Doc:"></asp:Label></td>
                <td colspan="3" style="text-align: left"><asp:TextBox ID="txtDocumento" runat="server" Width="284px" TabIndex="5"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
                <td colspan="3" style="text-align: left"><asp:TextBox ID="txtEmail" runat="server" Width="543px" TabIndex="6"></asp:TextBox></td>

                <td><asp:Label ID="lblTelefone" runat="server" Text="Tel:"></asp:Label></td>
                <td colspan="3" style="text-align: left"><asp:TextBox ID="txtTelefone" runat="server" Width="284px" TabIndex="7"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCEP" runat="server" Text="CEP:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtCEP" runat="server" Width="100px" TabIndex="8"></asp:TextBox></td>

                <td><asp:Label ID="lblEndereco" runat="server" Text="End:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtEndereco" runat="server" Width="375px" TabIndex="9"></asp:TextBox></td>

                <td><asp:Label ID="lblNumero" runat="server" Text="Nº:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtNumero" runat="server" Width="66px" TabIndex="10"></asp:TextBox></td>

                <td><asp:Label ID="lblComplemento" runat="server" Text="Compl:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtComplemento" runat="server" Width="146px" TabIndex="11"></asp:TextBox></td>
            </tr>
        </table>
            </asp:Panel> 
    </div>
 
    <div style="width: 551px; float: left; height: 195px;">
        <table style="text-align: left;">
            <tr><td><asp:Label ID="lblModelo" runat="server" Text="Modelo:"></asp:Label></td>
            <td style="text-align: left"><asp:TextBox ID="txtModelo" runat="server" Width="470px" TabIndex="12"></asp:TextBox></td></tr>
            <tr><td colspan="2">
                    <asp:Panel ID="pnlProdutos" runat="server" Height="155px" ScrollBars="Auto">
                        <asp:GridView ID="dgvProduto" runat="server" AutoGenerateColumns="False" Width="489px">
                            <Columns>
                                <asp:CommandField HeaderText="Sel" ShowSelectButton="True" SelectText="Sel" />
                                <asp:BoundField DataField="Cod" HeaderText="Cod"/>
                                <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
                                <asp:BoundField DataField="Cor.nome" HeaderText="Cor" />
                                <asp:BoundField DataField="Tamanho.nome" HeaderText="Tamanho" />
                                <asp:BoundField DataField="Est_Atual" HeaderText="Estoque" />
                                <asp:BoundField DataField="Venda" HeaderText="Venda" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </td></tr>
        </table>
    </div>

    <div style="width: 630px; float: left; height: 195px;" >
        <asp:Panel ID="pnlProduto" runat="server" defaultbutton="btnProduto">
        <table style="text-align: right;">            
            <tr>
                <td><asp:Label ID="lblInt" runat="server" Text="Int:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtInt" runat="server" Width="80px" TabIndex="13"></asp:TextBox></td>

                <td><asp:Label ID="lblCol" runat="server" Text="Col:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtCol" runat="server" Width="80px" TabIndex="14"></asp:TextBox></td>

                <td><asp:Label ID="lblExt" runat="server" Text="Ext:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtExt" runat="server" Width="80px" TabIndex="15"></asp:TextBox></td>

                <td><asp:Label ID="lblAltCab" runat="server" Text="Alt. Cab:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtAltCab" runat="server" Width="80px" TabIndex="16"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblAcessorios" runat="server" Text="Acessórios:"></asp:Label></td>
                <td colspan="3" style="text-align: left">
                    <asp:DropDownList ID="ddlAcessorios" class="drop" runat="server" TabIndex="17" Width="219px">
                        <asp:ListItem Value="0"> </asp:ListItem>
                    </asp:DropDownList></td>

                <td><asp:Label ID="lblValor" runat="server" Text="Valor:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtValor" runat="server" Width="80px" TabIndex="18"></asp:TextBox></td>

                <td><asp:Label ID="lblQuantidade" runat="server" Text="Qtd:"></asp:Label></td>
                <td style="text-align: left"><asp:TextBox ID="txtQuantidade" runat="server" Width="80px" TabIndex="19"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label></td>
                <td colspan="7" style="text-align: left"><asp:TextBox ID="txtDescricao" runat="server" Width="516px" TabIndex="20"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblVendedor" runat="server" Text="Vendedor:"></asp:Label></td>
                <td colspan="4" style="text-align: left">
                    <asp:DropDownList ID="ddlVendedor" class="drop" runat="server" TabIndex="21" Width="267px">
                        <asp:ListItem Value="0"> </asp:ListItem>
                    </asp:DropDownList></td>
                <td><asp:Label ID="lblTotalProduto" runat="server" Text="Total:"></asp:Label></td>
                <td colspan="2" style="text-align: left"><asp:TextBox ID="txtTotalProduto" runat="server" Width="150px" TabIndex="22"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblObservacao" runat="server" Text="Obs:"></asp:Label></td>
                <td  colspan="4" style="text-align: left"><asp:TextBox ID="txtObservacao" runat="server" Width="255px" TabIndex="23"></asp:TextBox></td>

                <td><asp:Label ID="lblEntrega" runat="server" Text="Entrega:"></asp:Label></td>
                <td colspan="2" style="text-align: left"><asp:TextBox ID="txtEntrega" runat="server" Width="150px" TabIndex="24"></asp:TextBox></td>
            </tr>
        </table>
            </asp:Panel>
    </div>

    <div style="width: 711px; float: left; height: 195px;">
        <table style="text-align: left;">
            <tr><td>
                <asp:Panel ID="pnlCarrinho" runat="server" Height="200px" ScrollBars="Auto">
                <asp:GridView ID="gdvCarrinho" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField HeaderText="Del" DeleteText="Del" ShowDeleteButton="True" />
                    <asp:BoundField DataField="Barras" HeaderText="Barras" />
                    <asp:BoundField DataField="Modelo" HeaderText="Descrição" />
                    <asp:BoundField DataField="Valor" HeaderText="Valor" />
                    <asp:BoundField DataField="Estoque" HeaderText="Qtd" />
                    <asp:BoundField DataField="Venda" HeaderText="Total" />
                </Columns>
            </asp:GridView></asp:Panel></td></tr> 
        </table>
    </div>

    <div style="width: 470px; float: left; height: 195px;">
        <asp:Panel ID="pnlPagamento" runat="server" defaultbutton="btnPagamento">
        <table style="text-align: right;">
            <tr>
                <td><asp:Label ID="lblForma" runat="server" Text="Forma:"></asp:Label></td>
                <td colspan="5">
                    <asp:DropDownList ID="ddlForma" class="drop" runat="server" TabIndex="25" Width="405px">
                        <asp:ListItem Value="0"> </asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr style="text-align: center;">
                <td colspan="2"><asp:Label ID="lblTituloParcelado" runat="server" Text="Parcelado"></asp:Label></td>
                <td colspan="2"><asp:Label ID="lblTituloCheque" runat="server" Text="Cheque"></asp:Label></td>
                <td colspan="2"><asp:Label ID="lblTituloPedido" runat="server" Text="Pedido"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblParceladoValor" runat="server" Text="Valor:"></asp:Label></td>
                <td><asp:TextBox ID="txtParceladoValor" runat="server" Width="80px" TabIndex="26"></asp:TextBox></td>
                <td><asp:Label ID="lblChequeBanco" runat="server" Text="Banco:"></asp:Label></td>
                <td><asp:TextBox ID="txtChequeBanco" runat="server" Width="80px" TabIndex="29"></asp:TextBox></td>
                <td><asp:Label ID="lblPedidoValor" runat="server" Text="Valor:"></asp:Label></td>
                <td><asp:TextBox ID="txtPedidoValor" runat="server" Width="80px" TabIndex="33"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblParceladoQuantidade" runat="server" Text="Qtd:"></asp:Label></td>
                <td><asp:TextBox ID="txtParceladoQuantidade" runat="server" Width="80px" TabIndex="27"></asp:TextBox></td>
                <td><asp:Label ID="lblChequeAgencia" runat="server" Text="Ag:"></asp:Label></td>
                <td><asp:TextBox ID="txtChequeAgencia" runat="server" Width="80px" TabIndex="30"></asp:TextBox></td>
                <td><asp:Label ID="lblPedidoDesconto" runat="server" Text="Desc:"></asp:Label></td>
                <td><asp:TextBox ID="txtPedidoDesconto" runat="server" Width="80px" TabIndex="34"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblParceladoTotal" runat="server" Text="Total:"></asp:Label></td>
                <td><asp:TextBox ID="txtParceladoTotal" runat="server" Width="80px" TabIndex="28"></asp:TextBox></td>
                <td><asp:Label ID="lblChequeNumero" runat="server" Text="Cheque:"></asp:Label></td>
                <td><asp:TextBox ID="txtChequeNumero" runat="server" Width="80px" TabIndex="31"></asp:TextBox></td>
                <td><asp:Label ID="lblPedidoTroco" runat="server" Text="Troco:"></asp:Label></td>
                <td><asp:TextBox ID="txtPedidoTroco" runat="server" Width="80px" TabIndex="35"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><asp:Label ID="lblChequeValor" runat="server" Text="Valor:"></asp:Label></td>
                <td><asp:TextBox ID="txtChequeValor" runat="server" Width="80px" TabIndex="32"></asp:TextBox></td>
                <td><asp:Label ID="lblPedidoTotal" runat="server" Text="Total:"></asp:Label></td>
                <td><asp:TextBox ID="txtPedidoTotal" runat="server" Width="80px" TabIndex="36"></asp:TextBox></td>
            </tr>
        </table>
        </asp:Panel> 
    </div>    
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroProd.aspx.cs" Inherits="AplicacaoTesteFront.CadastroProd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form runat="server">

    <table width="100" align="center" cellpadding="4" cellspacing="4" border="2">
        <tr>
            <td>
                <label id="lblCod">Codigo</label>

            </td>
            <td>
                <label id="lblDesc">Descrição</label>

            </td>
            <td>
                <label id="lblQuant">Quantidade</label>

            </td>
            <td>
                <label id="lblVal">Valor</label>

            </td>
        </tr>
        <tr>
            <td>
                
                <asp:TextBox ID="txtCod" Columns="13" MaxLength="12" runat="server"/>
                    
               
            </td>
            <td>
                <asp:TextBox ID="txtDesc" Columns="24" MaxLength="24" runat="server"/>
                
            </td>
            <td>
                 <asp:TextBox ID="txtQuant" Columns="6" MaxLength="6" runat="server"/>
                
            </td>
            <td>
                <asp:TextBox ID="txtVal" Columns="8" MaxLength="8" runat="server"/>
                
            </td>
           
        </tr>

    </table>


    <table align="center" cellpadding="2" cellspacing="2" border="0" runat="server">
        <tr>
            <td>
                
                 <asp:Button ID="btnCadastra" Text="Cadastrar" runat="server" onclick="btnCadastra_Click"/><p />            
            
            </td>
            <td>
                <label id="lblErro" runat="server" visible="false">Digite todos os campos</label>
            </td>
        </tr>
    </table>

    <table id="tblCad" align="center" cellpadding="3" cellspacing="4" border="1" runat="server" visible="false">
        <tr>
            <td>
                <label id="lblTabCod1" runat="server">Codigo</label>
            </td>
            <td>
                <label id="lblTabDesc1" runat="server">Descrição</label>
            </td>
            <td>
                <label id="lblTabQuant" runat="server">Quantidade</label>
            </td>
            <td>
                <label id="lblTabVal" runat="server">Valor</label>
            </td>
            <td>
                <label id="lblTabValTot" runat="server">Valor Total</label>
            </td>            
        </tr>

    </table>
   </form>
</body>

</html>

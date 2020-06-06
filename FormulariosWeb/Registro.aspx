<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FormulariosWeb.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Usuario</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            font-size: medium;
            width: 179px;
        }
        .auto-style4 {
            text-align: right;
            font-size: medium;
            width: 179px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
            text-align: left;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
            width: 320px;
        }
        .auto-style9 {
            height: 24px;
            text-align: center;
            width: 320px;
        }
        .auto-style10 {
            text-align: right;
            font-size: medium;
            width: 179px;
            height: 26px;
        }
        .auto-style11 {
            text-align: left;
            width: 320px;
            height: 26px;
        }
        .auto-style12 {
            text-align: left;
            height: 26px;
        }
        .auto-style13 {
            width: 87px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">


            <strong>Formulario de Registro de Usuarios<br />
            <br />
            </strong>
            
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Usuario</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Debe ingresar usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Debe ingresar contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Re-Contraseña</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPass2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPass2" ErrorMessage="Reingrese contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPass2" ErrorMessage="Deben coincidir las contraseñas" ForeColor="Red" ControlToCompare="txtPass"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Correo</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtCorreo" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar un correo" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="El formato del correo no es válido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Nombre </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtNombre" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar su nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">País</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlPais" runat="server" Width="180px">
                            <asp:ListItem Selected="True">Seleccione País</asp:ListItem>
                            <asp:ListItem>Chile</asp:ListItem>
                            <asp:ListItem>Colombia</asp:ListItem>
                            <asp:ListItem>España</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlPais" ErrorMessage="Debe seleccionar su país" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style9">
                        <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar" Width="186px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Limpiar" class="auto-style13" type="reset" value="reset" /></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
               


        </div>
    </form>
</body>
</html>

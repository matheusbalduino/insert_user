<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="insert_user.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert User</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row" style="margin-top: 15px;">
                <div class="col-md-4">
                    <label>Nome</label>
                    <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label>Email:</label>
                    <asp:RequiredFieldValidator ID="rfvSobre" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Sexo:</label>
                    <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="ddlSexo" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control" >
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Feminino" Value="F"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row" style="margin-top: 15px;">
                <div class="col-md-4">
                    <label>Data de Nascimento:</label>
                    <asp:RequiredFieldValidator ID="rfvData" ControlToValidate="txtData" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtData" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Carteira de Trabalho:</label>
                    <asp:RequiredFieldValidator ID="rfvCtb" ControlToValidate="txtCtb" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCtb" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>telefone Fixo:</label>
                    <asp:RequiredFieldValidator ID="rfvTelF" ControlToValidate="txtTelF" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTelF" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top: 15px;">
                <div class="col-md-4">
                    <label>telefone Celular:</label>
                    <asp:RequiredFieldValidator ID="rfvTelC" ControlToValidate="txtTelC" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTelC" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="col-md-8">
                    <label>Endereço Completo:</label>
                    <asp:RequiredFieldValidator ID="rfvEnd" ControlToValidate="txtEnd" ErrorMessage="*" ForeColor="Red" runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEnd" runat="server" CssClass="form-control" placeholder="Rua, número, bairro, cidade - uf." ></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="col-md-2">
                    <asp:Button ID="btnEnviar" Text="Enviar" runat="server" CssClass="btn btn-primary" OnClick="btnEnviar_Click" />
                </div>
            </div>
             <div class="row" style="margin-top: 15px; text-align:center;">
                  <asp:Label ID="lblResult" runat="server"></asp:Label>
             </div>
        </div>
    </form>
</body>
</html>

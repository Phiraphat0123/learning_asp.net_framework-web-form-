<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LogInWeb.Login" %>

<!DOCTYPE html>
<style>
    *{
        margin:0px;
        box-sizing:border-box;
    }
    .form{
        width:100dvw;
        height:100dvh;
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:center;
        background-color:#22333b;

    }
    .form > div{
        display:flex;
        width:fit-content;
        height:fit-content;
        flex-direction:column;
        gap:10px;
        justify-content:center;
        align-items:center;
    }
    .header{
        color:#C6AC8F;
        font-size:24px;
        font-weight:500;
    }
    .input_container{
        display:flex;
        flex-direction:column;
        gap:5px;
    }
    .input_container input{
        width:300px;
        height:fit-content;
        background-color:#5E503F;
        color:#EAE0D5;
        font-size:16px;
        border:none;
        border-radius:5px;
        font-weight:400;
        padding:5px;
    }

    .logIn{
        border:none;
        width:100%;
        height:40px;
        cursor:pointer;
        border-radius: 5px;
        font-size:16px;
        background-color:#C6AC8F;
        color:#22333B;
        margin-top:10px;
    }
    .alert_show{
        display:block;
        color:#e07a5f;
        font-size:16px;
        font-weight:400;
    }
    .alert_hidden{
        display:none;
        
    }
    .alert_container{
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:flex-start;
        min-height:30px;
        height:fit-content;
        width:300px;
    }
    .logIn:hover{
        background-color:#5E503F;
        color:#EAE0D5;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form class="form" id="form1" runat="server">
        <div>
            <div class="input_container">
                <asp.Label class="header">Email</asp.Label>
                <asp:TextBox ID="txtEmail" runat="server" MaxLength="50"></asp:TextBox>
            </div>
            
            <div class="input_container">
                <asp.Label class="header">Password</asp.Label>
                <asp:TextBox Id="txtPassword" runat="server" MaxLength="16" type="password" />
            </div>
            
            <asp:Button CssClass="logIn" ID="Submit" runat="server" Text="Login" OnClick="SubmitLogin" />

            <div class="alert_container">
                <asp:Label  ID="txtError" runat="server" Text="Error" CssClass="alert_hidden" ></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

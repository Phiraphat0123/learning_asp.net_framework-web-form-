<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="LogInWeb.Welcome" %>

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
        flex-direction:column;
        gap:10px;
        justify-content:center;
        align-items:center;
    }
    .header{
        color:#C6AC8F;
        font-size:64px;
        font-weight:500;
    }
    .text{
        color:#EAE0D5;
        font-weight:300;
        font-size:32px;
    }
    .logOut{
        border:none;
        width:100%;
        height:40px;
        cursor:pointer;
        border-radius: 5px;
        font-size:16px;
        background-color:#5E503F;
        color:#EAE0D5;
        font-weight:400;
    }
    .logOut:hover{
        background-color:#C6AC8F;
        color:#22333B;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form class="form" id="form1" runat="server">
        <div>
            <asp:Label class="header" runat="server" Text="Welcome"></asp:Label>
            <asp:Label class="text" ID="txtWelcome" runat="server" Text="Welcome" ></asp:Label>
            <asp:Button class="logOut" ID="Button1" runat="server" OnClick="SubmitLogOut" Text="Log-out" />
        </div>
    </form>
</body>
</html>

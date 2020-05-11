<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormulaOneWebFormProject.Default" EnableEventValidation="False"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>        
        div{margin:20px}
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button CssClass="btn-primary" ID="btnLoadDriver" runat="server" OnClick="btnLoadDriver_Click" Text="Drivers" />
            <asp:Button CssClass="btn-primary" ID="btnLoadCountry" runat="server" OnClick="btnLoadCountry_Click" Text="Countries" />
            <asp:Button CssClass="btn-primary" ID="btnLoadTeam" runat="server" OnClick="btnLoadTeam_Click" Text="Teams" />
            <asp:GridView CssClass="table" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:GridView CssClass="table" ID="GridView2" runat="server">
            </asp:GridView>
            <asp:GridView CssClass="table" ID="GridView3" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>

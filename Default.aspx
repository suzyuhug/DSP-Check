<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DSP 检查工具</title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 72px;
            left: 89px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 70px;
            left: 123px;
            z-index: 1;
            height: 23px;
        }
        .auto-style3 {
            position: absolute;
            top: 71px;
            left: 283px;
            z-index: 1;
            width: 73px;
            height: 24px;
        }
        .auto-style4 {
            width: 445px;
            height: 83px;
            position: absolute;
            top: 201px;
            left: 172px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 127px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h>DSP 检查工具</h> 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" style="z-index: 1" Text="Button" />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="PO:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="查 询" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" CellPadding="5" CssClass="auto-style4">
                <Columns>
                    <asp:BoundField DataField="料号" HeaderText="料号" />
                    <asp:BoundField DataField="数量" HeaderText="数量" />
                    <asp:ImageField DataImageUrlField="确认" HeaderText="确认">
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

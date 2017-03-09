<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VM.aspx.cs" Inherits="VM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="622px" Width="593px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V<span class="auto-style1">ENDING MACHINE</span><br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp; INSERT COIN. Denominations allowed are 1,2,5 and 10 rupees.</span><br class="auto-style1" /> <span class="auto-style1">&nbsp;&nbsp;&nbsp; </span>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:RadioButtonList ID="CoinList" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp; </span>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Height="27px" OnClick="Button1_Click" Text="Insert Coin" Width="78px" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="InitialState" runat="server" CssClass="auto-style1"></asp:Label>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Button ID="Return" runat="server" CssClass="auto-style1" OnClick="Return_Click" Text="Get my change!" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="SelectionState" runat="server" CssClass="auto-style1"></asp:Label>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="BeverageSelection" runat="server">
                <asp:ListItem Value="Coffee">1</asp:ListItem>
                <asp:ListItem Value="Tea">2</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Button ID="Submit" runat="server" CssClass="auto-style1" OnClick="Submit_Click" Text="Press Here" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Beverage" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
            <span class="auto-style1">&nbsp;&nbsp; </span>
            <asp:Label ID="Success" runat="server" CssClass="auto-style1" Text="  poured sucessfully from the machine for consuming"></asp:Label>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
        </asp:Panel>
    </form>
</body>
</html>

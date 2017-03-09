<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WM.aspx.cs" Inherits="WM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #990033;
            font-size: large;
        }
        .auto-style2 {
            margin-right: 17px;
        }
        .auto-style3 {
            font-size: small;
            color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="635px" Width="546px">
            &nbsp;&nbsp;<div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp; WASHING MACHINE
                <br />
                <br />
                </span>Select the type of cloth:&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="List_ClothType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="List_ClothType_SelectedIndexChanged">
                    <asp:ListItem>SelectItem</asp:ListItem>
                    <asp:ListItem>Synthetic</asp:ListItem>
                    <asp:ListItem>Cotton</asp:ListItem>
                    <asp:ListItem>Woolen</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <strong>Select the Water Type:&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="List_WaterType" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;<strong><asp:Label ID="Label1" runat="server" Text="Set Temperature: "></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="PW_Temp" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Height="39px" OnClick="Button1_Click" Text="Start!" Width="75px" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Title" runat="server" Text="Lifecyle of Machine"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="PW" runat="server" Text="1) Machine Enters PreWash State with Cloth Type, Water Type and Temperature as the following respectively:"></asp:Label>
                &nbsp;&nbsp;&nbsp; </strong>
                <asp:Label ID="PW_Values" runat="server"></asp:Label>
                &nbsp;
                <asp:Label ID="PW_Time" runat="server"></asp:Label>
                <strong>&nbsp;<br />&nbsp;&nbsp;
                <asp:Label ID="Wash" runat="server" Text="2) Machine enters Wash State "></asp:Label>
                </strong>
                <asp:Label ID="Wash_Value" runat="server"></asp:Label>
                <strong>
                <br />
&nbsp;
                <asp:Label ID="Rinse" runat="server" Text="3) Machine Enters Rinse State"></asp:Label>
&nbsp;</strong><asp:Label ID="Rinse_Values" runat="server"></asp:Label>
                <strong>
                <br />
                &nbsp;
                <asp:Label ID="Spin" runat="server" Text="4) Machine is in Spin state now. Select RPM for spin:"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="List_RPM" runat="server" AutoPostBack="True" OnSelectedIndexChanged="List_RPM_SelectedIndexChanged">
                    <asp:ListItem>Select RPM</asp:ListItem>
                    <asp:ListItem>400</asp:ListItem>
                    <asp:ListItem>800</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:Label ID="Error_Label" runat="server" CssClass="auto-style3" Text="RPM for Woolen cannot be more than 400."></asp:Label>
                <strong id="Final">
                <br />
                &nbsp;&nbsp; </strong>
                <asp:Label ID="Spin_Time" runat="server"></asp:Label>
                <strong id="Final">
                <br />
                &nbsp;
                <asp:Label ID="Final" runat="server" Text="5) Machine enters Dry state. Clothes are dried. Process of Washing terminates."></asp:Label>
                <br />
                &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>

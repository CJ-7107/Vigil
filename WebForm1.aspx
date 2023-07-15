<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_24Hr_Vigil_SIgn_up_Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1278px;
        }
        .auto-style4 {
            font-size: xx-large;
            height: 65px;
        }
        .auto-style5 {
            width: 214px;
            font-weight: 700;
        }
        .auto-style8 {
            font-size: xx-small;
        }
        .auto-style9 {
            width: 214px;
            font-weight: 700;
            text-align: left;
        }
        .auto-style11 {
            width: 211px;
            font-weight: 700;
            text-align: left;
        }
        .auto-style13 {
            width: 214px;
            font-weight: 700;
            height: 29px;
        }
        .auto-style14 {
            width: 211px;
            font-weight: 700;
            height: 14px;
        }
        .auto-style15 {
            width: 214px;
            font-weight: 700;
            height: 14px;
        }
        .auto-style16 {
            color: #FF0000;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style23 {
            width: 297px;
            font-weight: 700;
            height: 29px;
        }
        .auto-style24 {
            width: 265px;
            font-weight: 700;
        }
        .auto-style25 {
            width: 265px;
            font-weight: 700;
            height: 14px;
        }
        .auto-style26 {
            width: 265px;
            font-weight: 700;
            text-align: left;
        }
        .auto-style27 {
            font-size: 40pt;
        }
        .auto-style28 {
            font-weight: 700;
            text-align: left;
        }
        .auto-style29 {
            font-size: 10pt;
        }
        .auto-style31 {
            font-weight: 700;
            height: 29px;
            text-align: center;
        }
        .auto-style32 {
            font-weight: 700;
        }
        *
        {
            margin: 0;
            padding: 0;
        }
        .backimg {
            background-image:url(IMG/background.png);
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style36 {
            width: 81px;
            font-weight: 700;
            height: 29px;
        }
        .auto-style37 {
            width: 81px;
            font-weight: 700;
            height: 14px;
        }
        .auto-style38 {
            font-weight: 700;
            text-align: left;
            width: 81px;
        }
        .auto-style39 {
            width: 211px;
            font-weight: 700;
            text-align: left;
            height: 22px;
        }
        .auto-style40 {
            font-weight: 700;
            text-align: left;
            width: 81px;
            height: 22px;
        }
        .auto-style41 {
            width: 265px;
            font-weight: 700;
            text-align: left;
            height: 22px;
        }
        .auto-style42 {
            width: 214px;
            font-weight: 700;
            text-align: left;
            height: 22px;
        }
        .auto-style43 {
            background-color: #D18A2F;
        }
        .auto-style44 {
            width: 265px;
            font-weight: 700;
            height: 29px;
        }
        .auto-style45 {
            width: 214px;
            font-weight: 700;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="backimg">

            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="4" style="text-align: center">
                        <h1 class="auto-style27"><strong>St. Faith&#39;s Prayer Vigil Sign Up Sheet.</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style31" colspan="2">&nbsp;</td>
                    <td class="auto-style44"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="2"><strong><span class="auto-style17">Name and Surname: </span>&nbsp;</strong><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="183px" Height="22px"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="2"><span class="auto-style17">Time Slot:</span> (<span class="auto-style8"></span><span class="auto-style29">You may select more than one</span>)</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style45">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style41"></td>
                    <td class="auto-style42">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="DS" DataTextField="Time Slot" DataValueField="Time Slot" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        </asp:CheckBoxList>
                        <asp:SqlDataSource ID="DS" runat="server" ConnectionString="<%$ ConnectionStrings:MMConnectionString %>" ProviderName="<%$ ConnectionStrings:MMConnectionString.ProviderName %>" SelectCommand="Time Slot" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style28">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click" Text="Submit" Width="167px" style="background-position: 0% 0%; color:white; box-shadow:inset; background-image: none; background-repeat: repeat; background-attachment: scroll;" CssClass="auto-style43" />
                    </td>
                    <td class="auto-style26">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
            </table>
           </div>
        </div>
    </form>

</body>
</html>

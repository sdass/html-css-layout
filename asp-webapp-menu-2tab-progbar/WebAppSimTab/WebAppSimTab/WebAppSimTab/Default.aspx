<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppSimTab.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test panel and tab</title>
    <link href="Styles/slim-style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>

            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem ImageUrl="" Target="#" Text="first|" Value="0" Selected="true"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Target="#" Text="second|" Value="1"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Target="#" Text="third|" Value="2"></asp:MenuItem>

                </Items>

            </asp:Menu>
            <hr />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1Tab1" runat="server">
                    <p>view 1</p>
                </asp:View>
                <asp:View ID="ViewTab2" runat="server">
                    <p>view 2</p>

                    <div id="outer1" class="outer">
                        <div id="top" class="top">
                            <p>center this pane</p>
                        </div>
                        <div id="contentId" class="content">
                            <!-- 2 column layout -->
                            <div id="left" class="left">
                                <asp:Label ID="Label1" runat="server" Text="Farm name" AssociatedControlID="TextBox1"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Select Farm"></asp:Label>
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                <hr />
                                <%--how to display progress bar https://www.youtube.com/watch?v=JrsxuZSPXSw--%>
                                <asp:UpdateProgress ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                                    <ProgressTemplate>
                                        <div id="div1" style="border-style:solid; height: 50px; width: 50%; margin: 0 auto; border-color:blueviolet;">
                                            <asp:Image ID="Image1" ImageUrl="~/images/loader.gif" Height="50px" Width="50px" AlternateText="processing ..." runat="server" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>                               
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">                                
                                    <ContentTemplate>
                                        <asp:ImageButton ID="ImageButton1" AlternateText="PUSH" BackColor="YellowGreen" OnClick="ImageButton1_Click" runat="server" />    
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                
                            </div>
                            <div id="right" class="right">
                                <asp:Label ID="Label2" runat="server" Text="other Info" AssociatedControlID="TextBox2"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Select Sire"></asp:Label>
                                <br />
                                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Start Date"></asp:Label>

                                <div style="text-align:center">
                                <asp:Calendar ID="Calendar1" runat="server" CssClass="calendarspecial" ></asp:Calendar>
                                </div>
                                 <asp:Label ID="Label6" runat="server" Text="Race Type"></asp:Label>
                                <br />
                                <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>


                            </div>



                        </div>

                        <div id="bottom" class="bottom">
                            status bar <br />
                            <asp:Button ID="Button1" runat="server" Text="Process" />
                            
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>                            
                        </div>
                    </div>

                </asp:View>
                <asp:View ID="ViewTab3" runat="server">
                    <p>view 3</p>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>

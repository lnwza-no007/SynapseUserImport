<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_bbgltuo3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SynapseUserImport Tools</title>
</head>
<body style="background-color:Teal;">
<h1 style="background-color:Teal; color:White;">Synapse User Management Tools</h1>
    <form id="form1" runat="server">    
        <div id="LogonPermission" runat="server">คุณไม่ได้รับสิทธิ์ให้ดำเนินการในหน้านี้ได้</div>
        <asp:Button ID="ImportButton" runat="server" onclick="ImportButton_Click" 
            Text="Import User" Width="143px" Height="33px" />
        <asp:Button ID="ChangePasswordButton" runat="server" Text="Change Password" 
            Width="143px" Height="33px" onclick="ChangePasswordButton_Click1" />
        <br />

        <div id="ApplicationForm" style="background-color:White;" runat="server">

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="UserImport" runat="server">
                     <h2>Synapse User Import</h2>
                     <h4>-กรุณาใส่ข้อมูลให้ครบถ้วนแล้วกดปุ่ม Import </h4>
                     <asp:Panel ID="PanelImport" runat="server">
                        <p>
                           <table border="0" style="width:100%;font-family:sans-serif;font-size:small">
                              <tr>
                                <td style="width:80px">ชื่อ :</td>
                                <td><asp:TextBox ID="FirstNameText" runat="server" ></asp:TextBox></td>
                              </tr>
                                                            <tr>
                                <td style="width:80px">นามสกุล :</td>
                                <td><asp:TextBox ID="LastNameText" runat="server" ></asp:TextBox></td>
                              </tr>
                              <tr>
                                <td style="width:80px">UserName :</td>
                                <td><asp:TextBox ID="UserID" runat="server" ></asp:TextBox></td>
                              </tr>
                              <tr>
                                <td style="width:80px"></td>
                                <td>
                                    <asp:CheckBox ID="UseDefaultPasswordChecked" runat="server" Checked="True" 
                                        oncheckedchanged="UserDefaultPasswordChecked_CheckedChanged" 
                                        Text="Use default password" />
                                  </td>
                              </tr>
                              <tr>
                                <td style="width:80px">Password :</td>
                                <td><asp:TextBox ID="PasswordText" runat="server"></asp:TextBox></td>
                              </tr>
                              <tr>
                              <td>Group</td>
                               <td>
                                   <asp:ListBox ID="OUGroup" runat="server" Height="116px" Width="153px">
                                       <asp:ListItem>TEST</asp:ListItem>
                                   </asp:ListBox>
                               </td>
                              </tr>
                              <tr>
                                <td>
                    
                                </td>
                                <td>
                                <asp:Button ID="Import" runat="server" Text="Import" onclick="Import_Click" 
                                        Height="32px" Width="92px" />
                                </td>
                              </tr>
                              <tr>
                              <td colspan ="2"><div><asp:Label ID="LabelText" runat="server" Text="  "></asp:Label></div></td>
                              </tr>
                           </table>
                        </p>
        
                        </asp:Panel>  
                </asp:View>
                <asp:View ID="ChangePassword" runat="server">
                     <h2>Synapse User Change/Reset Password</h2>
                     <h4>-ทำการกรอกข้อมูล UserName จากนั้นกดปุ่ม Search </h4>
                     <h4>-ทำการเปลี่ยน Password จากนั้นกดปุ่ม Change </h4>
                     <asp:Panel ID="Panel1" runat="server">
                        <p>
                           <table border="0" style="width:100%;font-family:sans-serif;font-size:small">
                              <tr>
                                <td style="width:80px">UserName :</td>
                                <td><asp:TextBox ID="UserIDChange" runat="server" ></asp:TextBox>
                                    <asp:Button ID="SearchButton" runat="server" onclick="SearchButton_Click" 
                                        Text="Search" />
                                  </td>
                              </tr>
                              <tr>
                                <td style="width:80px">ชื่อ-สกุล :</td>
                                <td><asp:TextBox ID="NameChange" runat="server" ></asp:TextBox></td>
                              <tr>
                                <td style="width:80px"></td>
                                <td>
                                    <asp:CheckBox ID="UseDefaultPasswordToChangeChecked" runat="server" Checked="True"
                                        Text="Use default password" />
                                  </td>
                              </tr>
                              <tr>
                                <td style="width:80px">Password :</td>
                                <td><asp:TextBox ID="PasswordChange" runat="server"></asp:TextBox></td>
                              </tr>
                              <tr>
                                <td>
                    
                                </td>
                                <td>
                                <asp:Button ID="ChangePasswordBut" runat="server" Text="Change" 
                                        Height="32px" Width="92px" onclick="ChangePasswordBut_Click" />
                                </td>
                              </tr>
                              <tr>
                              <td colspan ="2"><div><asp:Label ID="LabelTextChange" runat="server" Text="  "></asp:Label></div></td>
                              </tr>
                           </table>
                        </p>
        
                        </asp:Panel> 
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>

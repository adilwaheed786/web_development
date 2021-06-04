<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Shooping.Master" AutoEventWireup="true" CodeBehind="UserSignUpPage.aspx.cs" Inherits="Shopping.UserSignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <%-- <img  style="width:50%;" src="images/new user.ico" />--%>
                                    <i class="fas fa-user-plus"style="font-size:100px"></i>
                            </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h3>Create Account</h3>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b><label>Name</label></b>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter Name.....!" Height="31px" Width="100%"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Provide Name" ControlToValidate="TextBox1" Display="Dynamic" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" SetFocusOnError="True" ToolTip="Please Provide Name">Required</asp:RequiredFieldValidator>
                                </div>
                                <b><label>E-Mail</label></b>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="abc@gmail.com" Height="31px" Width="100%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Bold="True" Font-Names="Times New Roman" ErrorMessage="Please Provide E-Mail"  ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Please Provide E-Mail">*Required</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Invalid Sysntax E-mail"  ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ToolTip="abc@gmail.com">*Invalid E-mail</asp:RegularExpressionValidator>
                                </div>
                                <b><label>Password</label></b>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" Height="31px" Width="100%"></asp:TextBox>       
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Provide Password"  ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" Font-Bold="True" Font-Names="Times New Roman" SetFocusOnError="True" ToolTip="Please Provide Password">Required</asp:RequiredFieldValidator>
                                </div>
                                <b><label>Re-Type Password</label></b>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Re-Type Password" TextMode="Password" Height="31px" Width="100%"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match " Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" ControlToCompare="TextBox2" SetFocusOnError="True"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Please Fill!!" ForeColor="Red" Font-Bold="True" Font-Names="Times New Roman" SetFocusOnError="True">Please Provide Confirm Password</asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-md" ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click" Width="100%" />
                                </div>
                                <div class="form-group">   
                           <a style="text-decoration:none;" href="UserLoginPage.aspx">
                               <input  class="btn btn-primary btn-block btn-md"  id="Button2" type="button" value="Back To Login Form" /></a>
                                 </div>
                            </div>
                        </div>
                         </div>
                    </div>
                    </div>
        </div>
    </div>
    <script>  
        function alertme() {
            var a = document.getElementById('<%=TextBox1.ClientID %>').value;
            swal("Welcome " + a + " !", "Account Created ", "success");
        }
        
     

     
          </script>
</asp:Content>

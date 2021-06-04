<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Shooping.Master" AutoEventWireup="true" CodeBehind="UserLoginPage.aspx.cs" Inherits="Shopping.UserLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="row justify-content-center">
          <div id="myalert" class="alert alert-success collapse">
              <a href="#" class="close" data-dismiss="alert">&times;</a>
              <strong>Success</strong> You Have been Successfully Login!!
          </div>
        </div>
    <div class="container">       
      <div class="row">

         <div class="col-md-4 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <%--<img  style="width:50%;" src="images/user.ico" />--%>
                            <i class="fas fa-user"style="font-size:100px"></i>
                            </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 >Log In</h3>
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
                         <b><label>User ID</label></b>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID" Height="31px" Width="100%"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter User Name" Display="Dynamic"  Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox1" ToolTip="Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        </div>
                         <b><label>Password</label></b>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" Height="31px" Width="100%"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Password" Display="Dynamic" Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox2" ToolTip="Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        </div>
                        
                         <div class="form-group">
                           <asp:Button  class="btn btn-success btn-block btn-md" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="100%" />
                        </div>
                         
                        <div class="form-group">
                           <a style="text-decoration:none;width:100%;" href="usersignuppage.aspx">
                               <input  class="btn btn-primary btn-block btn-md"  id="Button2" type="button" value="Create Account"  /></a>
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
                  swal("Password Correct !", "Welcome User", "success");
                 
              }
              function alertmewrong() {
                  swal("Invalid Credential!", "Check Username & Password ", "error");
              }
                   
    
          </script>
</asp:Content>

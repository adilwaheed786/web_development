<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Shooping.Master" AutoEventWireup="true" CodeBehind="AdminLoginpage.aspx.cs" Inherits="Shopping.AdminLoginpage" %>
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
                           <%-- <img  style="width:50%;" src="images/adm.png" />--%>
                            <i class="fas fa-user-shield"style="font-size:100px"></i>
                            </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
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
                         <b><label>Admin ID</label></b>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" Height="31px" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Name" Display="Dynamic" Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox2" ToolTip="Enter Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            
                        </div>
                         <b><label>Password</label></b>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" Height="31px" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Password" Display="Dynamic" Font-Bold="True" Font-Names="Times New Roman" ControlToValidate="TextBox2" ToolTip="Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-md" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
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
                  swal("Invalid Crediential ", "Please provide Correct Information", "error");
              }
          </script>
</asp:Content>

<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Shooping.Master" AutoEventWireup="true" CodeBehind="adminviewpage.aspx.cs" Inherits="Shopping.adminviewpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-family: 'Times New Roman';
            font-size: 20px;
            text-align: left;
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- <div class="row justify-content-center">
          <div id="myalert" class="alert alert-success ">
              <a href="#" class="close" data-dismiss="alert">&times;</a>
              <i class="fas fa-check"> </i>
                   <strong>Success</strong> Dear Admin! You Have been Successfully Login!!  
          </div>
    </div>--%>
    <div  class="container">  
        <div>
        <h4 class="panel">Admin Panel</h4>
            <center>  
        <table>
            <tr>
                <td class="fnt">Product Name</td>
                   <td style="text-align: justify"> <asp:TextBox ID="txt1" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Fill" ControlToValidate="txt1" Display="Dynamic" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>      
            </tr>
            <tr>
                <td class="fnt">Product Description</td>
                   <td style="text-align: left"> <asp:TextBox ID="txt2" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please Fill" ControlToValidate="txt2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                   </td>      
            </tr>
            <tr>
                <td class="fnt">Product Price</td>
                   <td style="text-align: justify">
                       <asp:TextBox ID="txt3" runat="server" Width="300px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt3" Display="Dynamic" ErrorMessage="* Enter 123.." Font-Bold="True" Font-Names="Times New Roman" SetFocusOnError="True" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Please Fill" ControlToValidate="txt3" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                   </td>      
            </tr>
            <tr>
                <td class="auto-style1">Strike Price</td>
                   <td class="auto-style2"> <asp:TextBox ID="txt5" runat="server" Width="300px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt5" ErrorMessage="*Enter 123.." Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Please Fill" ControlToValidate="txt5" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                </td>      
            </tr>
            <tr>
                <td class="fnt">Product Quantity</td>
                   <td style="text-align: justify"> <asp:TextBox ID="txt4" runat="server" Width="300px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt4" ErrorMessage="*Enter 123.." Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Please Fill" ControlToValidate="txt4" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                </td>      
            </tr>
            <tr>
                <td class="fnt">Product File</td>
                   <td style="text-align: justify"><asp:FileUpload ID="f1" runat="server" Width="300px" /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please Select Image" ControlToValidate="f1" Font-Bold="True" Font-Names="Times New Roman" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>      
            </tr>
            <tr>
                <td colspan="2" style="padding: 2px; margin: 8px 5px 2px 2px; position: relative; font-family: 'Times New Roman', Times, serif;" >
                    <center>
                    <asp:Button ID="b1" runat="server" class="btn btn-success btn md" Text="Insert" OnClick="b1_Click" Width="164px" />
                    </center>
                    </td>
            </tr>
        </table>
                </center>
        </div>
    </div>
    <br />
    <%-- grid view====== --%>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" HorizontalAlign="Center" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView2_RowDeleting" OnRowUpdating="GridView2_RowUpdating" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
               <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" >
               
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
               
                <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="product_images" HeaderText="Product Images" ReadOnly="True">
                    <ControlStyle Height="100px" Width="100px" />
                    <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" >
                    
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                <ItemStyle Font-Bold="True" Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:BoundField>

                <asp:BoundField DataField="product_desc" HeaderText="Product Dicription" SortExpression="product_desc" >
                
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:BoundField>
                
                <asp:BoundField DataField="product_price" HeaderText="Product Price" SortExpression="product_price" >
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="product_strike" HeaderText="Product Strike" SortExpression="product_strike" >
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="product_qty" HeaderText="Product Qty" SortExpression="product_qty" >
                <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                <ItemStyle Font-Names="Times New Roman" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" CausesValidation="False" ShowEditButton="True" ShowHeader="True" >
                <ControlStyle CssClass="btn btn-info btn-md" Font-Names="Times New Roman" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" CausesValidation="False" ShowDeleteButton="True" ShowHeader="True" >
                <ControlStyle CssClass="btn btn-danger btn-md" Font-Names="Times New Roman" />
                </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <div class="table-responsive">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdminTableConnectionString %>" 
            DeleteCommand="DELETE FROM [adminProduct] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [adminProduct] ([product_name], [product_desc], [product_price], [product_strike], [product_qty], [product_images]) VALUES (@product_name, @product_desc, @product_price, @product_strike, @product_qty, @product_images)" 
            SelectCommand="SELECT * FROM [adminProduct]" 
            UpdateCommand="UPDATE [adminProduct] SET [product_name] = @product_name, [product_desc] = @product_desc, [product_price] = @product_price, [product_strike] = @product_strike, [product_qty] = @product_qty WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
           
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="product_desc" Type="String" />
                <asp:Parameter Name="product_price" Type="Int32" />
                <asp:Parameter Name="product_strike" Type="Int32" />
                <asp:Parameter Name="product_qty" Type="Int32" />
                
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

        </div>
    <script>  
        function alertme() {
            swal("Data Inserted", "Successfully", "success");

        }    
         function alertmeup() {
            swal("Data Uptated", "Successfully", "success");

        } 
         function alertmedel() {
            swal("Data Deleted", "Successfully", "warning");

        } 
           </script>

    </asp:Content>
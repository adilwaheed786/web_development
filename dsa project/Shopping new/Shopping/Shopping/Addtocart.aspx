<%@ Page Title="" Language="C#" MasterPageFile="~/Shooping.Master" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="Shopping.Addtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr />
    <h2 style="font-family:Times New Roman; text-align: center;">
        You Have Product &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#006666"></asp:Label>
    &nbsp;In Your Cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/loginviewpage.aspx">Continue Shopping</asp:HyperLink>
&nbsp;</h2>
    <div class="table-responsive">
    <asp:GridView ID="GridView1"  runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="260px" ShowFooter="True" Width="900px" HorizontalAlign="Center" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Names="Times New Roman" OnRowCreated="GridView1_RowCreated1" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No">
            
                <HeaderStyle Font-Names="Times New Roman"/>
            <ItemStyle HorizontalAlign="Center" Font-Names="Times New Roman" />
            </asp:BoundField>
            <asp:BoundField DataField="productid" HeaderText="Product ID">
                <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="right" />
           
            <ItemStyle HorizontalAlign="Center" Font-Names="Times New Roman"/>
            </asp:BoundField>
            <asp:BoundField DataField="productname" HeaderText="Prdouct Name">
           
                <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" Font-Names="Times New Roman" Font-Bold="True" Font-Size="Larger" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                <ControlStyle Height="150px" Width="150px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="Price">
                
                <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="center" Font-Names="Times New Roman"/>
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <HeaderStyle Font-Names="Times New Roman"  />
               
            <ItemStyle HorizontalAlign="Center" Font-Names="Times New Roman" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <FooterStyle Font-Bold="True" Font-Names="Times New Roman" />
                <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
               
            <ItemStyle HorizontalAlign="Center" Font-Names="Times New Roman"/>
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" ButtonType="Button" >
                 
            <ControlStyle CssClass="btn btn-danger btn-md" />
                 
            <ItemStyle HorizontalAlign="Center" />
                    
            </asp:CommandField>

        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1D3C45" Font-Bold="True" ForeColor="White" Font-Size="X-Large" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#1D3C45" Font-Bold="True" ForeColor="White" Height="50px" HorizontalAlign="Center" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        </div>
    <center>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#006666" Font-Names="Times New Roman" Font-Size="X-Large" style="text-align: justify; font-size: xx-large"></asp:Label>
      </center>
        <hr />
        <center>  
    <asp:Button ID="Button1" class="btn btn-success btn-md" runat="server" Text="Buy Now" Width="150px" OnClick="Button1_Click" style="text-align: center" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" />
        </center>            
    <br />
</asp:Content>

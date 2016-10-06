<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
  <asp:Label ID="titleLabel" runat="server" Text="Your Shopping Cart" CssClass="ShoppingCartTitle" />
  <br />
  <asp:Label ID="statusLabel" CssClass="AdminPageText" ForeColor="Red" runat="server" /><br />
  <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" Width="100%" BorderWidth="0px" OnRowDeleting="grid_RowDeleting">
    <Columns>
      <asp:BoundField DataField="Name" HeaderText="Product Name" ReadOnly="True" SortExpression="Name" >
        <ControlStyle Width="100%" />
      </asp:BoundField>
      <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True"
        SortExpression="Price" />
      <asp:TemplateField HeaderText="Quantity">
        <ItemTemplate>
          <asp:TextBox ID="editQuantity" runat="server" CssClass="GridEditingRow" Width="24px" MaxLength="2" Text='<%#Eval("Quantity")%>' />
        </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField DataField="Subtotal" DataFormatString="{0:c}" HeaderText="Subtotal"
        ReadOnly="True" SortExpression="Subtotal" />
      <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" >
        <ControlStyle CssClass="SmallButtonText " />
      </asp:ButtonField>
    </Columns>
  </asp:GridView>
  <table width="100%">
    <tr>
      <td>
        <span class="ProductDescription">
          Total amount:
        </span>
        <asp:Label ID="totalAmountLabel" runat="server" Text="Label" CssClass="ProductPrice" />
      </td>
      <td align="right">
        <asp:Button ID="updateButton" runat="server" Text="Update Quantities" CssClass="SmallButtonText" OnClick="updateButton_Click" />
      </td>
    </tr>
  </table>
  <br />
  <asp:Button ID="continueShoppingButton" runat="server" Text="Continue Shopping" CssClass="SmallButtonText" OnClick="continueShoppingButton_Click" />
</asp:Content>

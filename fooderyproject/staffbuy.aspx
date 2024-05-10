<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffbuy.aspx.cs" Inherits="fooderyproject.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="operation id" DataSourceID="SqlDataSource5" ForeColor="#333333">
             <EditItemTemplate>
                 operation id:
                 <asp:Label ID="operation_idLabel1" runat="server" Text='<%# Eval("[operation id]") %>' />
                 <br />
                 product:
                 <asp:TextBox ID="productTextBox" runat="server" Text='<%# Bind("product") %>' />
                 <br />
                 price:
                 <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                 <br />
                 employee:
                 <asp:TextBox ID="employeeTextBox" runat="server" Text='<%# Bind("employee") %>' />
                 <br />
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <InsertItemTemplate>
                 operation id:
                 <asp:TextBox ID="operation_idTextBox" runat="server" Text='<%# Bind("[operation id]") %>' />
                 <br />
                 product:
                 <asp:TextBox ID="productTextBox" runat="server" Text='<%# Bind("product") %>' />
                 <br />
                 price:
                 <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                 <br />
                 employee:
                 <asp:TextBox ID="employeeTextBox" runat="server" Text='<%# Bind("employee") %>' />
                 <br />
                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </InsertItemTemplate>
             <ItemTemplate>
                 operation id:
                 <asp:Label ID="operation_idLabel" runat="server" Text='<%# Eval("[operation id]") %>' />
                 <br />
                 product:
                 <asp:Label ID="productLabel" runat="server" Text='<%# Bind("product") %>' />
                 <br />
                 price:
                 <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                 <br />
                 employee:
                 <asp:Label ID="employeeLabel" runat="server" Text='<%# Bind("employee") %>' />
                 <br />
                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [operation id] = @operation_id" InsertCommand="INSERT INTO [Table] ([operation id], [product], [price], [employee]) VALUES (@operation_id, @product, @price, @employee)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [product] = @product, [price] = @price, [employee] = @employee WHERE [operation id] = @operation_id">
                <DeleteParameters>
                    <asp:Parameter Name="operation_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="operation_id" Type="Int32" />
                    <asp:Parameter Name="product" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="employee" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="employee" Type="String" />
                    <asp:Parameter Name="operation_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="operation id" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="operation id" HeaderText="operation id" ReadOnly="True" SortExpression="operation id" />
                    <asp:BoundField DataField="product" HeaderText="product" SortExpression="product" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="employee" HeaderText="employee" SortExpression="employee" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [items] WHERE [resturant + operation number] = @column1" InsertCommand="INSERT INTO [items] ([resturant + operation number], [product], [price], [employee]) VALUES (@column1, @product, @price, @employee)" SelectCommand="SELECT * FROM [items]" UpdateCommand="UPDATE [items] SET [product] = @product, [price] = @price, [employee] = @employee WHERE [resturant + operation number] = @column1">
                <DeleteParameters>
                    <asp:Parameter Name="column1" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="column1" Type="Int32" />
                    <asp:Parameter Name="product" Type="String" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="employee" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product" Type="String" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="employee" Type="String" />
                    <asp:Parameter Name="column1" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table1] ([Id], [name], [password]) VALUES (@Id, @name, @password)" SelectCommand="SELECT * FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [name] = @name, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource6">
  <ItemTemplate >
                <%# Eval("product") %> - <%# Eval("price") %> 
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price], [product] FROM [items]"></asp:SqlDataSource>
    </form>
</body>
</html>

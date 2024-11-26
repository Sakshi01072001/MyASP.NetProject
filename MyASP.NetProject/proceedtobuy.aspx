<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proceedtobuy.aspx.cs" Inherits="MyASP.NetProject.proceedtobuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bill</title>
     <script type="text/javascript">
        function printBill() {
            var printContent = document.getElementById('printArea').innerHTML;
            var originalContent = document.body.innerHTML;
            document.body.innerHTML = printContent;
            window.print();
            document.body.innerHTML = originalContent;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
         <div id="printArea">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="productid" HeaderText="Product ID" />
                    <asp:BoundField DataField="productName" HeaderText="Product Name" />
                    <asp:BoundField DataField="productPrice" HeaderText="Product Price" />
                    <%--<asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image" />--%>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <%--<asp:BoundField DataField="totalAmount" HeaderText="Total Amount" />--%>
                </Columns>
            </asp:GridView>
            <h3>Grand Total: <asp:Label ID="lblGrandTotal" runat="server" Text=""></asp:Label></h3>
        </div>
        <asp:Button ID="btnPrint" runat="server" Text="Print Bill" OnClientClick="printBill()" />
    </form>
    
</body>
</html>

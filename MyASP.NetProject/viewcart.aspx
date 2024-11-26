<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="MyASP.NetProject.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="text-center"> 
     <h1>
         <img src="images/trolley_4290854.png" style="width: 80px; height: 80px" width="80px" />My Cart</h1>
     <br />
     
     <br /> 
     <br /> 
       
     <asp:DataList ID="DataList1" runat="server" Width="100%" OnItemCommand="DataList1_ItemCommand"> 
         <HeaderTemplate> 
             <table width="100%"> 
                 <tr> 
                     <th width="10%">productid</th> 
                     <th width="25%">product Name</th> 
                     <th width="10%">product Price</th> 
                     <th width="25%">product image</th> 
                     <th width="10%">quantity</th> 
                     <th width="10%" >total amount</th>
                     <th width="10%"> - </th>
                    
                 </tr> 
             </table> 
         </HeaderTemplate> 
         <ItemTemplate> 
              <table width="100%"> 
                 <tr> 
                     <th width="10%"> 
                         <asp:Label ID="pid" runat="server" Text='<%#Eval("productid") %>' /> 
 
                     </th> 
                     <th width="25%"> 
                         <asp:Label ID="pn" runat="server" Text='<%#Eval("productname") %>' /> 
 
                     </th> 
                     <th width="10%"> 
                          <asp:Label ID="pr" runat="server" Text='<%#Eval("productprice") %>' /> 
                     </th> 
                     <th width="25%"> 
                          <asp:Image  runat="server" ID="img" imageurl='<%#Eval("productimg","{0}")%>' width="50px" Height="50px"  /> 
                     </th> 
                     <th width="10%"> 
                         <asp:Button CommandName="plus" ID="btnplus" runat="server" Text="+" />
                            <asp:TextBox Width="30px" ID="qty" runat="server" Text='<%#Eval("quantity") %>' />
                         <asp:Button CommandName="minus" ID="btnminus" runat="server" Text="-" />
                     </th> 
                     <th width="10%" >    
                         <asp:Label ID="ta" runat="server" Text='<%#Eval("totalamount") %>' /></th> 
                     <th width="10%">
                         <asp:Button ID="btnupdate" CommandName="update" runat="server" Text="update" />
                         <asp:Button ID="btndelete" CommandName="delete" runat="server" Text="delete" />
                     </th>
                    
                 </tr> 
             </table> 
             
         </ItemTemplate> 
     </asp:DataList> 


     
     <p align="right" style="font-weight: 900; font-size: 20px;"> 
         Grand Total :<asp:Label ID="grandtotal" runat="server" Text="result"  /> 
     </p> 
     <p align="center"> 
         <asp:Button ID="Button1" runat="server" Text="add more items" OnClick="Button1_Click" /> 
        | <asp:Button ID="Button2" runat="server" Text="proceed to buy" OnClick="Button2_Click" /> 
     </p> 
     <p align="center"> 
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> 
     </p>
 </div>
</asp:Content>

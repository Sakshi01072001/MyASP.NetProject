<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="office.aspx.cs" Inherits="MyASP.NetProject.office" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        th{
            text-align: center;
        }
    </style>
     <main>
 <h1 class="text-center">
     Office Stationary&nbsp;</h1>
 <p class="text-center">
     &nbsp;</p>
 <p>
         </p>
             <hr />

     <p>
                     <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate> 
                    <center >
                        <Table width="100" border="1">
                            <tr>
                                <th>
                <asp:Label runat="server" ID="pn" Text='<%#Eval("productname") %>' /> 
                                    </th>
                                </tr>
                            
                            

                            <tr>
                                <th>
                    <asp:Image runat="server" ID="img" imageurl='<%#Eval("imagename","{0}") %>' Width="300" Height="250" /> 
           </th>
                                </tr>
                           
                            <tr>
                                <th>
                                     <asp:Label runat="server" ID="pprice" Text='<%#Eval("productprice") %>' />RS/- 
                                </th>

                            </tr>
                           

                            <tr>
                                <th>
                                    <asp:Button CommandArgument='<%#Eval("productid") %>' ID ="btndetails"  runat="server" Text="View Details" />
                                </th>
                            </tr>
                            <br>
                            </br>
                            
                             </center>
                    </table>
                                </ItemTemplate>
               
            

            </asp:DataList>
        </p>
        <p>&nbsp;</p>
        
  
</main>
    


</asp:Content>

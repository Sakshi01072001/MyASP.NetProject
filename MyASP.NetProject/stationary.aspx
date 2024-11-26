<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stationary.aspx.cs" Inherits="MyASP.NetProject.stationary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
     th{            
         text-align:center;
     }
     
     .auto-style1 {
         width: 512px;
         height: 512px;
     }
      .translate
         {
            transition: all 3s ease-in;
        }
       .translate:hover {
            transform: scale(1.2);
        }
    
 </style>
    <main>
    <h1 class="text-center">
        EveryDay Stationary&nbsp;</h1>
    <p class="text-center">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" BackColor="MediumAquamarine" ForeColor="White" Font-Size="20px" bordercolor="MediumAquamarine" Text="Search" />
    </p>
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
                    <asp:Image runat="server" ID="img" class="translate" imageurl='<%#Eval("imagename","{0}") %>' Width="300" Height="250" /> 
           </th>
                                </tr>
                           
                            <tr>
                                <th>
                                     <asp:Label runat="server" ID="pprice" Text='<%#Eval("productprice") %>' />RS/- 
                                </th>

                            </tr>
                           

                            <tr>
                                <th>
                                    <asp:Button CommandArgument='<%#Eval("productid") %>' ID ="btndetails" border-radius="25px" BackColor="black" BorderColor="black" ForeColor="White"  runat="server" Text="View Details" />
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

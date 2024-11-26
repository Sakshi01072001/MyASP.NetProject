<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="MyASP.NetProject.viewdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
    <h1>Product Details</h1>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" Width="100%" RepeatColumns="1" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
                <div style="float:left; width:100%; border:1px solid gray; background-color:mediumaquamarine; margin-bottom:20px;">
                    <div style="padding:20px; float:left; width:50%; font-weight: 900; font-size: 30px">
                        Product name : <asp:Label ID="pn" runat="server" Text='<%#Eval("productname") %>' /><br />
                        Product price : <asp:Label ID="pr" runat="server" Text='<%#Eval("productprice") %>' /> RS /-<br />

                    </div>
                    <div style="float:left; width:45%;padding:20px;">
                        <asp:Image runat="server" ID="img" ImageUrl='<%#Eval("imagename","{0}") %>' Width="250px" />

                    </div>
                    
                </div>                 
              
            </ItemTemplate>           
                           
        </asp:DataList>

        <asp:Button   runat="server" BackColor="Black" ForeColor="White"  Text="Go Back" OnClick="unnamed1_Click"/>   |
         &nbsp;  
         <asp:Button  runat="server" BackColor="Black" ForeColor="White" Text="Add to Cart" OnClick="unnamed2_Click"/>   |
        &nbsp;
         <asp:Button  runat="server" BackColor="Black" ForeColor="White" Text="Proceed to Buy" OnClick="unnamed3_Click"/>
    </p>
    <br />
    <br />

         <video controls width="90%" autoplay muted loop>
        <source src="images/assets/craftvideo.mp4">
    </video>
        
</div>
</asp:Content>

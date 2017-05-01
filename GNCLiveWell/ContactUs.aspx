<%@ Page Title="" Language="C#" MasterPageFile="~/GNC.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="GNCLiveWell.ContactUs" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
     <div class="Contact-Us">
		<div class="container">
			<h2>Contact Us</h2>
			
	<div class="contact">
		<div class="mail-us">
				<div class="col-md-4 contact">
					<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
					    <h5>Address</h5>   
      <p>Jalan Kebangsaan, Complex Shopping Mabohai. Brunei Darussalam</p>
           
	            </div> 
            								
	<div class="col-md-4 contact">
				    <i class="glyphicon glyphicon-phone" aria-hidden="true"></i>
				        <h5>Phone</h5>
					      <p>Telephone:  +673 7140016</p>
	</div>
								
	<div class="col-md-4 contact">
			<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
				<h5>E-mail</h5>
					<p>E-mail:<a href="mailto:example@mail.com"> example@mail.com</a></p>
	</div>
   
    <div id="map"></div>
 	<script src="JS/Map.js"></script>	
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBrAfeOKfvyG_-2m2tdU4rBq-6IBIXmyq8&callback=initMap">
   
    </script>
            </div>
       </div>
             </div>
       </div>
    <div class="mail-bottom">
        <h4>Get In Touch With Us</h4>
        <p><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required." ControlToValidate="txtName" Font-Size="Small"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject Is Required." ControlToValidate="txtSub" Font-Size="Small"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email." ControlToValidate="txtEmail" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
   
    
                 </p>
      <h6>Name&nbsp;<asp:TextBox ID="txtName" runat="server" Height="30px" Width="303px" BorderColor="Red" BorderStyle="Solid" Font-Size="Small"></asp:TextBox>
&nbsp;Subject&nbsp;<asp:TextBox ID="txtSub" runat="server"  Height="32px" Width="303px" BorderColor="Red" BorderStyle="Solid" Font-Size="Small"></asp:TextBox>
&nbsp;Email&nbsp;<asp:TextBox ID="txtEmail" runat="server"  Height="32px" Width="303px" BorderColor="Red" BorderStyle="Solid" Font-Size="Small"></asp:TextBox>
   
      </h6>
            
       
           <h6> Message</h6> 
             

              <asp:TextBox ID="txtmsg" runat="server" Height="137px" TextMode="MultiLine" Width="939px" BorderColor="Red" BorderStyle="Solid"></asp:TextBox>
              <br />
             
           
              <br />
              <asp:Button ID="btnsend" runat="server" Height="42px" OnClick="btnsend_Click" Text="Send" Width="169px" BorderColor="Red" BorderStyle="Solid" BackColor="Red" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
              <br />
              <br />
              <asp:Literal ID="litresult" runat="server"></asp:Literal>
              <br />
              <br />
            
        </div>

      
       </form>
</asp:Content>

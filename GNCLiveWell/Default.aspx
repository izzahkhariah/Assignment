<%@ Page Title="" Language="C#" MasterPageFile="~/GNC.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GNCLiveWell.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<form id="form1" runat="server">
    
	<div class="banner">
				<div class="home-banner">
				<img class="mySlides" src="Images/home.jpg"	alt="banner1">
				<img class="mySlides" src="Images/home2.jpg" alt="banner2">
				<img class="mySlides" src="Images/home3.jpg" alt="banner3">
               

			
				<script src="JS/websiteJS.js"></script>				
			</div>
		</div>

	
		<div class="product">
				<h3>Products</h3>
				<div class="BS-product">
				<h6>Best Selling Products</h6>
					<div class="col-md-3 BS-product">
						<div class="hover14 column">
								<div class="BS-product1">
								
								<figure>
									<a href="single.html"><img src="Images/BS1.jpg" alt="Fish Oil" /></a>
											<p>GNC Triple Strenght Fish Oil</p>
											<h4>$39.99</h4>
											 <p> &nbsp;</p>
                                    <p> &nbsp; 
                                        <asp:Button ID="Button4" runat="server" Height="28px" Text="Add to Cart" Width="119px" BackColor="Red" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    </p>
								
								
								</figure>
							</div>
						</div>
						</div>
					</div>
					</div>
				<div class="col-md-3 BS-product">
						<div class="hover14 column">
								<div class="BS-product1">
								<figure>
									<a href="single.html"><img src="Images/BS2.jpg" alt="ultra mega" /></a>
										<p>GNC Women's Ultra Mega 50 Plus</p>
											<h4>$29.99</h4>
                                     <p> &nbsp;</p>
                                    <p> &nbsp; 
                                        <asp:Button ID="Button3" runat="server" Height="28px" Text="Add to Cart" Width="119px" BackColor="Red" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    </p>
												</figure>
								
								
							
							</div>
						</div>
						</div>
						<div class="col-md-3 BS-product">
						<div class="hover14 column">
								<div class="BS-product1">
								
								<figure>
									<a href="single.html"><img src="Images/BS3.jpg" alt="triflex" /></a>
											<p>GNC Triflex</p>
											<h4>$32.99 </h4>
                                     <p> &nbsp;</p>
                                    <p> &nbsp; 
                                        <asp:Button ID="Button2" runat="server" Height="28px" Text="Add to Cart" Width="119px" BackColor="Red" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    </p>
											</figure>
										
								
								
							</div>
						</div>
						</div>
						<div class="col-md-3 BS-product">
						<div class="hover14 column">
								<div class="BS-product1">
								<figure>
									<a href="single.html"><img src="Images/BS4.jpg" alt="testosterone" /></a>
											<p>Nugenix Ultimate Testosterone</p>
											<h4> $74.99</h4>
                                    <p> &nbsp;</p>
                                    <p> &nbsp; 
                                        <asp:Button ID="Button1" runat="server" Height="28px" Text="Add to Cart" Width="119px" BackColor="Red" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    </p>
												</figure>

							
							</div>
						</div>
						</div>
    </form>
</asp:Content>

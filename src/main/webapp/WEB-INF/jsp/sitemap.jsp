<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Mend Your Thing</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
</head>
<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index.html"><span>Mend</span>Your Thing</a>
			</div>
			<div class="header-right">
			<a class="account" href="login.html">My Account</a>
			<span class="active uls-trigger">Select language</span>
	<!-- Large modal -->
			<div class="selectregion">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				Select Your Region</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title" id="myModalLabel">
										Please Choose Your Location</h4>
								</div>
								<div class="modal-body">
									 <form class="form-horizontal" role="form">
										<div class="form-group">
											<select id="basic2" class="show-tick form-control" multiple>
												<optgroup label="More Cities">
													<optgroup label="Andhra Pradesh">
														<option>Hyderabad</option>
														
													</optgroup>
													<optgroup label="Arunachal Pradesh">
														<option>Itanagar</option>
														
													</optgroup>
													<optgroup label="Assam">
														<option>Dispur</option>
														
													</optgroup>
													<optgroup label="Bihar">
														<option>Patna</option>
														
													</optgroup>
													<optgroup label="Chhattisgarh">
														<option>Raipur</option>
														
													</optgroup>
													<optgroup label="Goa">
														<option>Panaji</option>
														
													</optgroup>
													<optgroup label="Gujarat">
														<option>Gandhinagar</option>
														<option>Ahmedabad</option>
														<option>Surat</option>
														<option>Baroda</option>
														<option>Rajkot</option>
													</optgroup>
													<optgroup label="Haryana">
														<option>Chandigarh</option>
														
													</optgroup>
													<optgroup label="Himachal Pradesh">
														<option>Shimla</option>
														
													</optgroup>
													<optgroup label="Jammu & Kashmir">
														<option>Jammu</option>
														
													</optgroup>
													<optgroup label="Jharkhand">
														<option>Ranchi</option>
														
													</optgroup>
													<optgroup label="Karnataka">
														<option>Bangalore</option>
														
													</optgroup>
													<optgroup label="Kerala">
														<option>Thiruvananthapuram</option>
														
													</optgroup>
													<optgroup label="Madhya Pradesh">
														<option>Bhopal</option>
																												       
													</optgroup>
													<optgroup label="Maharashtra">
														<option>Mumbai</option>
														   													
													</optgroup>
													<optgroup label="Manipur">
														<option>Imphal</option>
														            													
													</optgroup>
													<optgroup label="Meghalaya">
														<option>Shillong</option>
														       														
													</optgroup>
													<optgroup label="Mizoram">
														<option>Aizawl</option>
														          														
													</optgroup>
													<optgroup label="Nagaland">
														<option>Kohima</option>
														     														
													</optgroup>
													<optgroup label="Odisha">
														<option>Bhubaneshwar</option>
														    														
													</optgroup>
													<optgroup label="Punjab">
														<option>Chandigarh</option>
														
													</optgroup>
													<optgroup label="Rajasthan">
														<option>Jaipur</option>
														
													</optgroup>
													<optgroup label="Sikkim">
														<option>Gangtok</option>
														   														
													</optgroup>
													<optgroup label="Tamil Nadu">
														<option>Chennai</option>
														       														
													</optgroup>
													<optgroup label="Telangana">
														<option>Hyderabad </option>
														            														
													</optgroup>
													<optgroup label="Tripura">
														<option>Agartala</option>
														      														
													</optgroup>
													<optgroup label="Uttar Pradesh">
														<option>Lucknow</option>
														       													
													</optgroup>
													<optgroup label="Uttarakhand">
														<option>Dehradun</option>
														          													
													</optgroup>
													<optgroup label="West Bengal">
														<option>Kolkata</option>
														            													
										            </optgroup>
			<optgroup label="More Cities">
													<optgroup label="Andhra Pradesh">
														<option>Hyderabad</option>
														
													</optgroup>
													<optgroup label="Arunachal Pradesh">
														<option>Itanagar</option>
														
													</optgroup>
													<optgroup label="Assam">
														<option>Dispur</option>
														
													</optgroup>
													<optgroup label="Bihar">
														<option>Patna</option>
														
													</optgroup>
													<optgroup label="Chhattisgarh">
														<option>Raipur</option>
														
													</optgroup>
													<optgroup label="Goa">
														<option>Panaji</option>
														
													</optgroup>
													<optgroup label="Gujarat">
														<option>Gandhinagar</option>
														<option>Ahmedabad</option>
														<option>Surat</option>
														<option>Baroda</option>
														<option>Rajkot</option>
													</optgroup>
													<optgroup label="Haryana">
														<option>Chandigarh</option>
														
													</optgroup>
													<optgroup label="Himachal Pradesh">
														<option>Shimla</option>
														
													</optgroup>
													<optgroup label="Jammu & Kashmir">
														<option>Jammu</option>
														
													</optgroup>
													<optgroup label="Jharkhand">
														<option>Ranchi</option>
														
													</optgroup>
													<optgroup label="Karnataka">
														<option>Bangalore</option>
														
													</optgroup>
													<optgroup label="Kerala">
														<option>Thiruvananthapuram</option>
														
													</optgroup>
													<optgroup label="Madhya Pradesh">
														<option>Bhopal</option>
																												       
													</optgroup>
													<optgroup label="Maharashtra">
														<option>Mumbai</option>
														   													
													</optgroup>
													<optgroup label="Manipur">
														<option>Imphal</option>
														            													
													</optgroup>
													<optgroup label="Meghalaya">
														<option>Shillong</option>
														       														
													</optgroup>
													<optgroup label="Mizoram">
														<option>Aizawl</option>
														          														
													</optgroup>
													<optgroup label="Nagaland">
														<option>Kohima</option>
														     														
													</optgroup>
													<optgroup label="Odisha">
														<option>Bhubaneshwar</option>
														    														
													</optgroup>
													<optgroup label="Punjab">
														<option>Chandigarh</option>
														
													</optgroup>
													<optgroup label="Rajasthan">
														<option>Jaipur</option>
														
													</optgroup>
													<optgroup label="Sikkim">
														<option>Gangtok</option>
														   														
													</optgroup>
													<optgroup label="Tamil Nadu">
														<option>Chennai</option>
														       														
													</optgroup>
													<optgroup label="Telangana">
														<option>Hyderabad </option>
														            														
													</optgroup>
													<optgroup label="Tripura">
														<option>Agartala</option>
														      														
													</optgroup>
													<optgroup label="Uttar Pradesh">
														<option>Lucknow</option>
														       													
													</optgroup>
													<optgroup label="Uttarakhand">
														<option>Dehradun</option>
														          													
													</optgroup>
													<optgroup label="West Bengal">
														<option>Kolkata</option>
														            													
										            </optgroup>
												</optgroup>
											</select>
										</div>
									  </form>    
								</div>
							</div>
						</div>
					</div>
				<script>
				$('#myModal').modal('');
				</script>
			</div>
		</div>
		</div>
	</div>
	<div class="banner text-center">
	  <div class="container">    
			<h1>Repair  <span class="segment-heading">    anything online </span> with </h1>
			<p>Mend Your Thing</p>
			<a href="post-ad.html">Post Free Ad</a>
	  </div>
	</div>
	<!-- Regions -->
		<div class="container">
			<h2 class="head">Sitemap</h2>
		</div>
		<div class="sitemap-regions">
			<div class="container">
				<div class="sitemap-region-grid">
					<div class="sitemap-region">
						<h4>Furniture</h4>
						<ul>
							<li><a href="furnitures.html">Sofa & Dining</a></li>
							<li><a href="furnitures.html">Other Household Items</a></li>
							<li><a href="furnitures.html">Beds & Wardrobes</a></li>
							<li><a href="furnitures.html">Home Decor & Garden</a></li>
							<li><a href="furnitures.html">Kitchen & Other Appliances</a></li>
							<li><a href="furnitures.html">Fridge - AC - Washing Machine</a></li>
							<li class="left-gap"><a href="furnitures.html">Fridges</a></li>
							<li class="left-gap"><a href="furnitures.html">AC</a></li>
							<li class="left-gap"><a href="furnitures.html">Washing Machine</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Services</h4>
						<ul>
							<li><a href="services.html">Other Services</a></li>
							<li><a href="services.html">Education & Classes</a></li>
							<li class="left-gap"><a href="services.html">Tutoring</a></li>
							<li class="left-gap"><a href="services.html">Other</a></li>
							<li class="left-gap"><a href="services.html">Computer</a></li>
							<li class="left-gap"><a href="services.html">Language Classes</a></li>
							<li class="left-gap"><a href="services.html">Music & Dance</a></li>
							<li><a href="services.html">Drivers & Taxi</a></li>
							<li><a href="services.html">Web Development</a></li>
							<li><a href="services.html">Electronics & Computer Repair</a></li>
							<li class="left-gap"><a href="services.html">Computer</a></li>
							<li class="left-gap"><a href="services.html">Home Appliances</a></li>
							<li class="left-gap"><a href="services.html">Other Electronics</a></li>
							<li class="left-gap"><a href="services.html">Mobile</a></li>
							<li><a href="services.html">Health & Beauty</a></li>
							<li><a href="services.html">Event Services</a></li>
							<li><a href="services.html">Movers & Packers</a></li>
							<li><a href="services.html">Maids & Domestic Help</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Kitchen Stoup</h4>
						<ul>
							<li class="left-gap"><a href="real-estate.html">Cooker</a></li>
							<li class="left-gap"><a href="real-estate.html">Stockpot</a></li>
							<li class="left-gap"><a href="real-estate.html">Skillet</a></li>
							<li class="left-gap"><a href="real-estate.html">Saucepan</a></li>
							<li class="left-gap"><a href="real-estate.html">Masher</a></li>
							<li class="left-gap"><a href="real-estate.html">Mixer</a></li>
							
							<li class="left-gap"><a href="real-estate.html">Nonsticks</a></li>
							<li class="left-gap"><a href="real-estate.html">Rolling pin and Board</a></li>
							<li class="left-gap"><a href="real-estate.html">Tongs</a></li>
<!-- 							<li class="left-gap"><a href="real-estate.html">Lease</a></li> -->
<!-- 							<li class="left-gap"><a href="real-estate.html">Sale</a></li> -->
<!-- 							<li><a href="real-estate.html">Blender</a></li> -->
<!-- 							<li><a href="real-estate.html">Vacation Rentals - Guest Houses</a></li> -->
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Bikes</h4>
						<ul>
							<li><a href="bikes.html">Motorcycles</a></li>
							<li><a href="bikes.html">Bajaj</a></li>
							<li><a href="bikes.html">Hero Honda</a></li>
							<li><a href="bikes.html">Yamaha</a></li>
							<li><a href="bikes.html">Royal Enfield</a></li>
							<li><a href="bikes.html">Honda</a></li>
							<li><a href="bikes.html">Hero</a></li>
							<li><a href="bikes.html">TVS</a></li>
							<li><a href="bikes.html">Suzuki</a></li>
							<li><a href="bikes.html">Other Brands</a></li>
							<li><a href="bikes.html">KTM</a></li>
							<li><a href="bikes.html">Mahindra</a></li>
							<li><a href="bikes.html">Kawasaki</a></li>
							<li><a href="bikes.html">Harley Davidson</a></li>
							<li><a href="bikes.html">Spare Parts</a></li>
							<li><a href="bikes.html">Scooters</a></li>
							<li><a href="bikes.html">Honda</a></li>
							<li><a href="bikes.html">TVS </a></li>
							<li><a href="bikes.html">Bajaj</a></li>
							<li><a href="bikes.html">Hero</a></li>
							<li><a href="bikes.html">Suzuki</a></li>
							<li><a href="bikes.html">Mahindra</a></li>
							<li><a href="bikes.html">LML</a></li>
							<li><a href="bikes.html">Kinetic</a></li>
							<li><a href="bikes.html">Other Brands</a></li>
							<li><a href="bikes.html">Yamaha</a></li>
							<li><a href="bikes.html">Vespa</a></li>
							<li><a href="bikes.html">Lambretta</a></li>
							<li><a href="bikes.html">Bicycles</a></li>
							<li><a href="bikes.html">Hero</a></li>
							<li><a href="bikes.html">Other Brands</a></li>
							<li><a href="bikes.html">Hercules</a></li>
							<li><a href="bikes.html">BSA</a></li>
							<li><a href="bikes.html">Atlas</a></li>
							<li><a href="bikes.html">Avon</a></li>
							<li><a href="bikes.html">Firefox</a></li>
							<li><a href="bikes.html">Trek</a></li>
						</ul>
					</div>
				</div>
				<div class="sitemap-region-grid">
<!-- 					<div class="sitemap-region"> -->
<!-- 						<h4>Jobs</h4> -->
<!-- 						<ul> -->
<!-- 							<li><a href="jobs.html">Online</a></li> -->
<!-- 							<li><a href="jobs.html">Other Jobs</a></li> -->
<!-- 							<li><a href="jobs.html">Customer Service</a></li> -->
<!-- 							<li><a href="jobs.html">IT</a></li> -->
<!-- 							<li><a href="jobs.html">Marketing</a></li> -->
<!-- 							<li><a href="jobs.html">Sales</a></li> -->
<!-- 							<li><a href="jobs.html">Manufacturing</a></li> -->
<!-- 							<li><a href="jobs.html">Clerical & Administration</a></li> -->
<!-- 							<li><a href="jobs.html">Hotels & Tourism</a></li> -->
<!-- 							<li><a href="jobs.html">Accounting & Finance</a></li> -->
<!-- 							<li><a href="jobs.html">Advertising & PR</a></li> -->
<!-- 							<li><a href="jobs.html">Human Resources</a></li> -->
<!-- 							<li><a href="jobs.html">Education</a></li> -->
<!-- 						</ul> -->
<!-- 					</div>				 -->
					<div class="sitemap-region">
						<h4>Cars</h4>
						<ul>
							<li><a href="cars.html">Cars</a></li>
							<li class="left-gap"><a href="cars.html">Maruti Suzuki</a></li>
							<li class="left-gap"><a href="cars.html">Hyundai</a></li>
							<li class="left-gap"><a href="cars.html">Tata</a></li>
							<li class="left-gap"><a href="cars.html">Mahindra</a></li>
							<li class="left-gap"><a href="cars.html">Honda</a></li>
							<li class="left-gap"><a href="cars.html">Ford</a></li>
							<li class="left-gap"><a href="cars.html">Toyota</a></li>
							<li class="left-gap"><a href="cars.html">Chevrolet</a></li>
							<li class="left-gap"><a href="cars.html">Skoda</a></li>
							<li class="left-gap"><a href="cars.html">Volkswagen</a></li>
							<li class="left-gap"><a href="cars.html">Fiat</a></li>
							<li class="left-gap"><a href="cars.html">Mitsubishi</a></li>
							<li class="left-gap"><a href="cars.html">Other Brands</a></li>
							<li class="left-gap"><a href="cars.html">Mercedes-Benz</a></li>
							<li class="left-gap"><a href="cars.html">Nissan</a></li>
							<li class="left-gap"><a href="cars.html">BMW</a></li>
							<li class="left-gap"><a href="cars.html">Renault</a></li>
							<li class="left-gap"><a href="cars.html">Hindustan Motors</a></li>
							<li class="left-gap"><a href="cars.html">Audi</a></li>
							<li class="left-gap"><a href="cars.html">Mahindra Renault</a></li>
							<li class="left-gap"><a href="cars.html">Opel</a></li>
							<li class="left-gap"><a href="cars.html">Daewoo</a></li>
							<li class="left-gap"><a href="cars.html">Force Motors</a></li>
							<li class="left-gap"><a href="cars.html">Landrover</a></li>
							<li class="left-gap"><a href="cars.html">Premier</a></li>
							<li class="left-gap"><a href="cars.html">Jaguar</a></li>
							<li class="left-gap"><a href="cars.html">Volvo</a></li>
							<li class="left-gap"><a href="cars.html">Isuzu</a></li>
							<li class="left-gap"><a href="cars.html">Mini</a></li>
							<li class="left-gap"><a href="cars.html">Porsche</a></li>
							<li class="left-gap"><a href="cars.html">Ssangyong</a></li>
							<li class="left-gap"><a href="cars.html">Mahindra Reva</a></li>
							<li class="left-gap"><a href="cars.html">Rolls Royce</a></li>
							<li class="left-gap"><a href="cars.html">Bentley</a></li>
							<li class="left-gap"><a href="cars.html">Ferrari</a></li>
							<li class="left-gap"><a href="cars.html">Lamborghini </a></li>
							<li><a href="cars.html">Spare Parts</a></li>
							<li class="left-gap"><a href="cars.html">Car Parts</a></li>
							<li class="left-gap"><a href="cars.html">Other Parts</a></li>
							<li class="left-gap"><a href="cars.html">Spare Parts</a></li>
							<li><a href="cars.html">Commercial Vehicles</a></li>
							<li><a href="cars.html">Other Vehicles</a></li>
							<li><a href="cars.html">Motorcycles</a></li>
							<li class="left-gap"><a href="cars.html">Hero Honda</a></li>
							<li class="left-gap"><a href="cars.html">Honda</a></li>
							<li class="left-gap"><a href="cars.html">Bajaj</a></li>
							<li class="left-gap"><a href="cars.html">TVS</a></li>
							<li class="left-gap"><a href="cars.html">Royal Enfield</a></li>
							<li class="left-gap"><a href="cars.html">Suzuki</a></li>
							<li><a href="cars.html">Scooters</a></li>
							<li class="left-gap"><a href="cars.html">Honda</a></li>
							<li class="left-gap"><a href="cars.html">Bajaj</a></li>
							<li class="left-gap"><a href="cars.html">TVS</a></li>
							<li class="left-gap"><a href="cars.html">Suzuki</a></li>
							<li class="left-gap"><a href="cars.html">Kinetic</a></li>
							<li class="left-gap"><a href="cars.html">Mahindra</a></li>
							<li><a href="cars.html">Bicycles</a></li>
							<li class="left-gap"><a href="cars.html">Other Brands</a></li>
							<li class="left-gap"><a href="cars.html">Hero</a></li>
						</ul>
					</div>
					
				<div class="sitemap-region-grid">
					<div class="sitemap-region">					
						<h4>Mobiles</h4>
						<ul>
							<li><a href="mobiles.html">Mobile Phones</a></li>
							<li class="left-gap"><a href="mobiles.html">Samsung</a></li>
							<li class="left-gap"><a href="mobiles.html">Nokia</a></li>
							<li class="left-gap"><a href="mobiles.html">Other Mobiles</a></li>
							<li class="left-gap"><a href="mobiles.html">Micromax</a></li>
							<li class="left-gap"><a href="mobiles.html">iPhone</a></li>
							<li class="left-gap"><a href="mobiles.html">Sony</a></li>
							<li class="left-gap"><a href="mobiles.html">HTC</a></li>
							<li class="left-gap"><a href="mobiles.html">Lenovo</a></li>
							<li class="left-gap"><a href="mobiles.html">Intex</a></li>
							<li class="left-gap"><a href="mobiles.html">Motorola</a></li>
							<li class="left-gap"><a href="mobiles.html">Lava</a></li>
							<li class="left-gap"><a href="mobiles.html">LG</a></li>
							<li class="left-gap"><a href="mobiles.html">Mi</a></li>
							<li class="left-gap"><a href="mobiles.html">BlackBerry</a></li>
							<li class="left-gap"><a href="mobiles.html">Karbonn</a></li>
							<li class="left-gap"><a href="mobiles.html">Asus</a></li>
							<li><a href="mobiles.html">Accessories</a></li>
							<li class="left-gap"><a href="mobiles.html">Mobile</a></li>
							<li class="left-gap"><a href="mobiles.html">Tablets</a></li>
							<li><a href="mobiles.html">Tablets</a></li>
							<li class="left-gap"><a href="mobiles.html">Samsung</a></li>
							<li class="left-gap"><a href="mobiles.html">Other Tablets</a></li>
							<li class="left-gap"><a href="mobiles.html">iPads</a></li>
							<li class="left-gap"><a href="mobiles.html">iBall</a></li>
							<li class="left-gap"><a href="mobiles.html">Micromax</a></li>
							<li class="left-gap"><a href="mobiles.html">Lenovo</a></li>
							<li class="left-gap"><a href="mobiles.html">Asus</a></li>
							<li class="left-gap"><a href="mobiles.html">HP</a></li>
							<li class="left-gap"><a href="mobiles.html">Dell</a></li>
							<li class="left-gap"><a href="mobiles.html">HCL</a></li>
							<li class="left-gap"><a href="mobiles.html">Acer</a></li>
							<li class="left-gap"><a href="mobiles.html">Blackberry</a></li>
							<li class="left-gap"><a href="mobiles.html">Sony</a></li>
						</ul>
					</div>
<!-- 					<div class="sitemap-region">					 -->
<!-- 						<h4>Kids</h4> -->
<!-- 						<ul> -->
<!-- 							<li><a href="kids.html">Furniture And Toys</a></li> -->
<!-- 							<li><a href="kids.html">Accessories</a></li> -->
<!-- 							<li><a href="kids.html">Prams & Walkers</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
					<div class="sitemap-region">
						<h4>Cloths</h4>
						<ul>
							<li><a href="fashion.html">Accessories</a></li>
							<li class="left-gap"><a href="fashion.html">Women</a></li>
							<li class="left-gap"><a href="fashion.html">Men</a></li>
							<li><a href="fashion.html">Clothes</a></li>
							<li class="left-gap"><a href="fashion.html">Women</a></li>
							<li class="left-gap"><a href="fashion.html">Men</a></li>
							<li><a href="fashion.html">Footwear</a></li>
							<li class="left-gap"><a href="fashion.html">Men</a></li>
							<li class="left-gap"><a href="fashion.html">Women</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Electronics & Appliances</h4>
						<ul>
							<li><a href="electronics-appliances.html">Computers & Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Laptops</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Computers</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Other Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Internet</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Printers</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Monitors</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Hard Disk</a></li>
							<li><a href="electronics-appliances.html">Kitchen & Other Appliances</a></li>
							<li><a href="electronics-appliances.html">TV - Video - Audio</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Video - Audio</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">TV</a></li>
							<li><a href="electronics-appliances.html">Cameras & Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Cameras</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Other Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Lenses</a></li>
							<li><a href="electronics-appliances.html">Games & Entertainment</a></li>
							<li><a href="electronics-appliances.html">Fridge - AC - Washing Machine</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Fridges</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">Washing Machine</a></li>
							<li class="left-gap"><a href="electronics-appliances.html">AC</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Clock and Watch</h4>
						<ul>
							<li><a href="books-sports-hobbies.html">Wrist Watch</a></li>
							<li><a href="books-sports-hobbies.html">Digital Clock</a></li>
							<li><a href="books-sports-hobbies.html">Alarm Clock</a></li>
							<li><a href="books-sports-hobbies.html">Quartz Clock</a></li>
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Education & Training</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Competitive Exam</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Literature & Fiction</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Professional & Technical</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Other Books</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">School Books</a></li> -->
<!-- 							<li class="left-gap"><a href="books-sports-hobbies.html">Children</a></li> -->
<!-- 							<li><a href="books-sports-hobbies.html">Sports Equipment</a></li> -->
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<!-- //Regions -->
	<!--footer section start-->		
			<jsp:include page="common/footer.jsp"></jsp:include>
	
        <!--footer section end-->
</body>
</html>
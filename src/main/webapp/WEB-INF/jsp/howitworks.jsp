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
<link rel="stylesheet" href="css/font-awesome.min.css" />
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
			<h1>Repair    <span class="segment-heading">    Anything Online </span> </h1>
			<p>With MendYourThing</p>
			<a href="post-ad.html">Post Free Ad</a>
	  </div>
	</div>
	<!-- How it works -->
		<div class="work-section">
			<div class="container">
				<h2 class="head">How It Works</h2>
					<div class="work-section-head text-center">
						<p>Fast, easy and free to post an ad and you will repair, what you are looking for.</p>
					</div>
					<div class="work-section-grids text-center">
						<div class="col-md-3 work-section-grid">
							<i class="fa fa-pencil-square-o"></i>
							<h4>Post an Ad</h4>
							<p>Custumer can post an Ad for their repairable item</p>
							<span class="arrow1"><img src="images/arrow1.png" alt="" /></span>
						</div>
						<div class="col-md-3 work-section-grid">
							<i class="fa fa-eye"></i>
							<h4>Find an Service Provider</h4>
							<p>Custumers can find best service providers using reviews</p>
							<span class="arrow2"><img src="images/arrow2.png" alt="" /></span>
						</div>
						<div class="col-md-3 work-section-grid">
							<i class="fa fa-phone"></i>
							<h4>contact the service Providers</h4>
							<p>Custumer can contact the interested service provider</p>
							<span class="arrow1"><img src="images/arrow1.png" alt="" /></span>
						</div>
						<div class="col-md-3 work-section-grid">
							<i class="fa fa-money"></i>
							<h4>make transactions</h4>
							<p>Custumer and Service Provider make transactions according their deal</p>
						</div>
						<div class="clearfix"></div>
						<a class="work" href="#">Get start Now</a>
					</div>
				</div>
		</div>	
		<div class="happy-clients">
				<div class="container">
					<div class="happy-clients-head text-center wow fadeInRight" data-wow-delay="0.4s">
						<h3>Happy Clients</h3>
						<p>We are explain who is using our business solutions</p>
					</div>
					<div class="happy-clients-grids">
						<div class="col-md-6 happy-clients-grid wow bounceIn" data-wow-delay="0.4s">
							<div class="client">
								<img src="images/client_1.jpg" alt="" />
							</div>
							<div class="client-info">
								<p><img src="images/open-quatation.jpg" class="open" alt="" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<img src="images/close-quatation.jpg" class="closeq" alt="" /></p>
								<h4><a href="#">Darwin Michle, </a>Project manager</h3>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 happy-clients-grid span_66 wow bounceIn" data-wow-delay="0.4s">
							<div class="client">
								<img src="images/client_2.jpg" alt="" />
							</div>
							<div class="client-info">
								<p><img src="images/open-quatation.jpg" class="open" alt="" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<img src="images/close-quatation.jpg" class="closeq" alt="" /></p>
								<h4><a href="#">Madam Elisabath, </a>Creative Director</h3>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 happy-clients-grid wow bounceIn" data-wow-delay="0.4s">
							<div class="client">
								<img src="images/client_3.jpg" alt="" />
							</div>
							<div class="client-info">
								<p><img src="images/open-quatation.jpg" class="open" alt="" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<img src="images/close-quatation.jpg" class="closeq" alt="" /></p>
								<h4><a href="#">Clips arter, </a>Lipsum director</h3>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 happy-clients-grid span_66 wow bounceIn" data-wow-delay="0.4s">
							<div class="client">
								<img src="images/client_4.jpg" alt="" />
							</div>
							<div class="client-info">
								<p><img src="images/open-quatation.jpg" class="open" alt="" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<img src="images/close-quatation.jpg" class="closeq" alt="" /></p>
								<h4><a href="#">zam cristafr,  </a>manager</h3>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
	<!-- // How it works -->
	<!--footer section start-->		
			<jsp:include page="common/footer.jsp"></jsp:include>
	
        <!--footer section end-->
</body>
</html>
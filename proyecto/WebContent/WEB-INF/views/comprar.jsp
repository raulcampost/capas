<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Alazea - Gardening &amp; Landscaping HTML Template</title>

   <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="resources/style.css">
    <link rel="stylesheet" href="resources/style2.css">
    <script type="text/javascript" src="resources/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="resources/sweetalert/dist/sweetalert.css">
    

</head>

<body>
<script type="text/javascript">
function out(){
		swal({
			type:'warning',
			title:'Log out',
			text:'¿Esta seguro de Cerrar Sesion?',
			showLoaderOnConfirm: true,
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Aceptar',
			closeOnConfirm: false
		}, function (isConfirm) {
			$.ajax({
				success: function(isConfirm){
					swal({
						  title: "Se realizo log out exitosamente!",
						  text: "Redirecting in 3 seconds...",
						  type: "success",
						  showLoaderOnConfirm: true,
						  timer: 3000,
						  showConfirmButton: false
						}, function(){
						      window.location.href = "http://localhost:8080/proyecto/";
						});
					
				}
			});
		
		});
		
	}



	function transaccion(){
	
		//serializeArray convierte a objetos el formulario especificado (un array de tipo llave:valor)
		var d = $('#form1').serializeArray();
		
		//JSON.stringify convierte a Json un objeto javascript
		var f = JSON.stringify(d);
		
		console.log('JSON -> ' + f);
		
		swal({
			type:'warning',
			title:'Realizar compra',
			text:'¿Esta seguro de realizar la compra?',
			showLoaderOnConfirm: true,
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Aceptar',
			closeOnConfirm: false
		}, function (isConfirm) {
			if(isConfirm){
				$.ajax({
					url: '${pageContext.request.contextPath}/',
					type: 'POST',
					contentType: "application/json; charset=utf-8", //Se enviara JSON al controlador
					data: f,
					success: function(data){
						swal("Exito", "La transaccion fue realizada exitosamente\nFecha Registro: " + 
								data.fechaRegistro + ", Llave: " + data.llave , "success");
						//var obj = JSON.parse(data);
						console.log('Respuesta: ' + data);
					},
					error: function(e){
						swal("Error", "Ocurri\u00f3 un error al realizar el pago", "error");
					}
				});
			}
		
		});
	
	}
	
</script>







    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="resources/img/core-img/leaf.png" alt="">
        </div>
    </div>

      <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- ***** Top Header Area ***** -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between">
                            <!-- Top Header Content -->
                            <div class="top-header-meta">
                                <a href="#" data-toggle="tooltip" data-placement="bottom" title="infodeercreative@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: infodeercreative@gmail.com</span></a>
                                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +1 234 122 122</span></a>
                            </div>

                            <!-- Top Header Content -->
                            <div class="top-header-meta d-flex">
                                <!-- Language Dropdown -->
                                <div class="language-dropdown">
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle mr-30" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language</button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">USA</a>
                                            <a class="dropdown-item" href="#">UK</a>
                                            <a class="dropdown-item" href="#">Bangla</a>
                                            <a class="dropdown-item" href="#">Hindi</a>
                                            <a class="dropdown-item" href="#">Spanish</a>
                                            <a class="dropdown-item" href="#">Latin</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Login -->
                                <div class="login">
                                    <a href="#" onclick="out()"><i class="fa fa-user" aria-hidden="true" ></i> <span>Sign out</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Navbar Area ***** -->
        <div class="alazea-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="alazeaNav">

                        <!-- Nav Brand -->
                        <a href="index.html" class="nav-brand"><img src="resources/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Navbar Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                </ul>

                                <!-- Search Icon -->
                                <div id="searchIcon">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                            </div>
                            <!-- Navbar End -->
                        </div>
                    </nav>

                    <!-- Search Form -->
                    <div class="search-form">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
                            <button type="submit" class="d-none"></button>
                        </form>
                        <!-- Close Icon -->
                        <div class="closeIcon"><i class="fa fa-times" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </header>    
    
    <!-- ##### Header Area End ##### -->




    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(resources/img/bg-img/sc.png);">

        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> single</a></li>
                            <li class="breadcrumb-item active" aria-current="page">comprar</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->
    <!-- ##### Header Area End ##### -->


	 <!-- ##### Service Area Start ##### -->
    <section class="our-services-area bg-gray section-padding-100-0">
        <div class="container">          
            
           
            <div class="row justify-content-center">
                <div class="col-4 col-lg-3">
                    <div class="alazea-service-area mb-100">

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center wow fadeInUp" data-wow-delay="400ms">
                            <!-- Icon -->
                            <div class="col-lg-12">
                                <img src="${pelicula.ssingular2}" alt="">
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-5 col-lg-5">
                   <div class="section-heading text-center">
                        <h2>${pelicula.stitulo}</h2>
                        <p>${pelicula.ssinopsis}</p>
                        <p>Dirigido por: ${pelicula.sdirector}</p>
                        <p>Formato: ${funcion.sformato}</p>
                        <p>Horario: ${horario.shora}</p>
                    </div>
                </div>
            </div>
            
         </div>
    </section>
    <!-- ##### Service Area End ##### -->  
    




       
    
    <!-- ##### Service Area Start ##### -->
    <section class="about-us-area  section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Comprar tickets</h2>
                    </div>
                </div>
            </div>
            
            
           
            <div class="row justify-content-center ">
                <div class="col-sm-4">
                    <div class="alazea-service-area mb-100">
                    	<form:form id="form1" class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/">

	                        <div class="form-group">
	                            <label for="ticket" class="col-sm-12 control-label"><b>Cantidad de Pases:</b></label>
	
	                            <div class="col-sm-12">
	                                <input id="ticket" type="number" class="form-control" name="ticket" path="ticket" min="0" min="15" value="0" required="" autofocus="">
	                            </div>
	                        </div>
	
	                        <div class="form-group">
	                            <div class="col-md-8 col-md-offset-4">
	                                <button type="button" class="btn btn-primary" onclick="transaccion()">
	                                    Comprar
	                                </button>
	                            </div>
	                        </div>
	                    </form:form>

                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="alazea-service-area mb-100">
                        <div class="theatre">
  
						  <div class="cinema-seats left">
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						    
						     <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						     <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						    
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						    
						    <div class="cinema-row row-1">
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						      <div class="seat"></div>
						    </div>
						    
						  </div>
						  
						  
						  
						</div>
                    </div>
                </div>
            </div>
         </div>
    </section>
    <!-- ##### Service Area End ##### -->  
    
    
    
    
    

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area bg-img" style="background-image: url(resources/img/bg-img/3.jpg);margin-top:150px;">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="footer-logo mb-30">
                                <a href="#"><img src="resources/img/core-img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit samet, consectetur adipiscing elit. India situs atione mantor</p>
                            <div class="social-info">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>QUICK LINK</h5>
                            </div>
                            <nav class="widget-nav">
                                <ul>
                                    <li><a href="#">Purchase</a></li>
                                    <li><a href="#">FAQs</a></li>
                                    <li><a href="#">Payment</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Return</a></li>
                                    <li><a href="#">Advertise</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Career</a></li>
                                    <li><a href="#">Orders</a></li>
                                    <li><a href="#">Policities</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>BEST SELLER</h5>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="resources/img/bg-img/4.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Cactus Flower</a>
                                    <p>$10.99</p>
                                </div>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="resources/img/bg-img/5.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Tulip Flower</a>
                                    <p>$11.99</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>CONTACT</h5>
                            </div>

                            <div class="contact-information">
                                <p><span>Address:</span> 505 Silk Rd, New York</p>
                                <p><span>Phone:</span> +1 234 122 122</p>
                                <p><span>Email:</span> info.deercreative@gmail.com</p>
                                <p><span>Open hours:</span> Mon - Sun: 8 AM to 9 PM</p>
                                <p><span>Happy hours:</span> Sat: 2 PM to 4 PM</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Bottom Area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="border-line"></div>
                    </div>
                    <!-- Copywrite Text -->
                    <div class="col-12 col-md-6">
                        <div class="copywrite-text">
                            <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright  All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
                        </div>
                    </div>
                    <!-- Footer Nav -->
                    <div class="col-12 col-md-6">
                        <div class="footer-nav">
                            <nav>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script type="text/javascript" src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script type="text/javascript" src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script type="text/javascript" src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script type="text/javascript" src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script type="text/javascript" src="resources/js/active.js"></script>
    <script type="text/javascript" src="resources/script.js"></script>
    
</body>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
    <link rel="icon" href="resources/img/core-img/loader.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="resources/style.css">
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
					  title: "Se realizo sign out exitosamente!",
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



function mensaje(id,b){
	
	swal({
		  title: "An input!",
		  text: "Write something interesting:",
		  type: "input",
		  showCancelButton: true,
		  closeOnConfirm: false,
		  inputPlaceholder: "Write something"
		}, function (inputValue) {
		  if (inputValue === false) return false;
		  if (inputValue === "") {
		    swal.showInputError("You need to write something!");
		    return false
		  }
		  swal("Nice!", "Se realizo la actualizacion del registro!!! ", "success");
		  window.location.href = "http://localhost:8080/proyecto/updateEstado?id="+id+"&b="+b+"&mensaje="+inputValue;
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

    </div>

    <!-- ##### Blog Area Start ##### -->
    <section class="alazea-blog-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Area de modificacion</h2>
                        <p>Tu administrador puedes modificar lo que quieras</p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
			<c:forEach var="v" items="${pelicula}">
                <!-- Single Blog Post Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-post mb-100">
                        <div class="post-thumbnail mb-30">
                            <a href="#"><img src="${v.ssingular}" alt=""></a>
                        </div>
                        <div class="post-content">
                            <a href="#" class="post-title">
                                <h5>${v.stitulo}</h5>
                            </a>
                            <div class="post-meta">
                                <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> 19 Jun 2018</a>
                                <a href="#"><i class="fa fa-user" aria-hidden="true"></i>${v.sdirector}</a>
                            </div>
                            <p class="post-excerpt">${v.ssinopsis}</p>
                            <c:choose>
								<c:when test="${v.bseleccion==true}">
									<div class="welcome-btn-group">
                                    	<a href="#" onclick="mensaje('${v.idpelicula}','false')" class="btn btn-danger">Ocultar</a>
                            		</div>
								</c:when>
								<c:when test="${v.bseleccion==false}">
									<div class="welcome-btn-group">
                                    	<a href="#" onclick="mensaje('${v.idpelicula}','true')" class="btn btn-success">Mostrar</a>
                            		</div>
								</c:when>
							</c:choose>
                            
                        </div>
                    </div>
                </div>
			</c:forEach>
            </div>
        </div>
    </section>
    <!-- ##### Blog Area End ##### -->



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
</body>

</html>
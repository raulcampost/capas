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

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="resources/img/core-img/camara.png" width="400" height="400" alt="">
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
                                    	<a href="${pageContext.request.contextPath}/updateEstado?id=${v.idpelicula}&b=false" class="btn btn-danger">Ocultar</a>
                            		</div>
								</c:when>
								<c:when test="${v.bseleccion==false}">
									<div class="welcome-btn-group">
                                    	<a href="${pageContext.request.contextPath}/updateEstado?id=${v.idpelicula}&b=true" class="btn btn-success">Mostrar</a>
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
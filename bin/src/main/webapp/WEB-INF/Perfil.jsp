<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- LIBRERIA JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- LIBRERIA PARA FORMULARIOS - DATA BINDING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>TargetGreenAlliance/Perfil</title>
    <!--Fuente Google Form: UnifrakturCook-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=UnifrakturCook:wght@700&display=swap" rel="stylesheet">
    <!--Fuente Google Form: Cairo Play-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo+Play:wght@700&display=swap" rel="stylesheet">
   
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style_perfil.css" />



</head>
<body >
      <header>
        <h1>TargetGreenAlliance</h1>
        <nav>
                <ul>
                    <li><a href="/">| Inicio |</a></li>
                    <li><a href="/Editar/Perfil">| Editar Perfil |</a></li>
                    <li><a href="#">| Donaciones |</a></li>
                </ul> 
        </nav>
    </header>

    <section>
        <h2>Perfil</h2>
            <aside>
                <div class="Bloque_General">
                    <container class="Menu_Superior">
                    <img class= "avatar" src="/img/usuario.png">
                        <div class="info">
                        <h3 class = "nombre"> <c:out value="${usuario.userName}"/> </h3>
                        <p class = "fecha"><fmt:formatDate value="${usuario.createdAt}"
											pattern="MMMM dd, yyyy" var="fechaFormateada" /> <c:out
											value="${fechaFormateada}"></c:out></p>
                        </div>
                    </container>
                    <container class="info_usuario">
                        <p>Edad:<c:out value="${usuario.edad}"/></p>
                        <p>Region:<c:out value="${usuario.region}"/></p>
                        <p>Provincia:<c:out value="${usuario.provincia}"/></p>
                        <p>Correo: <c:out value="${usuario.email}"/></p>
                        <p>Numero: <c:out value="${usuario.lider}"/></p>
                    </container>
                  
                </div>
            </aside>
        </section>

    <footer>
        <p>Pie de página ©2024</p>
    </footer>
</body>
</html>
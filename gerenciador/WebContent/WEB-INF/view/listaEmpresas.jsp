<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/formNovaEmpresa.jsp" var="linkFormNovaEmpresa" />


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listando Empresas</title>
</head>
<body>

<c:import url="logout-parcial.jsp"/>

Usuario Logado: ${usuarioLogado.login }

<br>
<br>
<br>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso! <br />
	</c:if>

	Lista de empresas:
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<fmt:formatDate value="${empresa.dataAbertura }" var="dataF" pattern="dd/MM/yyyy" />
			<li>${empresa.nome}-${dataF} -- 
			<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id }">edita</a>
            <a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id }">remove</a>
				
		</c:forEach>
	</ul>

</body>
</html>
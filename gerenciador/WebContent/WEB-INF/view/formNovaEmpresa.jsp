<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkServletEntrada" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrando empresas</title>
</head>
<body>
<c:import url="logout-parcial.jsp"/>


	<form action="${linkServletEntrada }" method="post">

		Nome: <input type="text" name="nome" /> Data Abertura: <input type="text" name="data" />
			<input type="submit" />
			<input type="hidden" name="acao" value="NovaEmpresa" />
	</form>
</body>
</html>
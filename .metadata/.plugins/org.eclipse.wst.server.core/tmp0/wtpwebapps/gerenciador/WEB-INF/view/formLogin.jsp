<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkServletEntrada" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Usuario</title>
</head>
<body>

	<form action="${linkServletEntrada }" method="post">

		Login: <input type="text" name="login" />
		Senha: <input type="password" name="senha" />
			<input type="submit" />
			<input type="hidden" name="acao" value="Login" />
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="tarefas.css" rel="stylesheet" />
<title>FJ21 Tarefas - Login</title>
</head>
<body>

	<h2>Página de Login das Tarefas</h2>

	<form action="efetuaLogin" method="post">
		<label for="login">Login: </label> <input type="text" id="login"
			name="login" /><br /> <label for="senha">Senha: </label> <input
			type="password" id="senha" name="senha" /><br /> <input type="submit"
			value="Entrar nas Tarefas">
	</form>

</body>
</html>	
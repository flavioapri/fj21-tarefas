<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="dt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="resources/css/jquery-ui.css" />
<script src="resources/js/jquery-1.10.2.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />

<title>Tarefas - Alterar Tarefa</title>

</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}">
		Descrição:<br />
		<textarea name="descricao" rows="5" cols="60">${tarefa.descricao}</textarea>
		<br /> Finalizado?<input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : ''} /> <br /> Data de
		finalização:<br />
		<dt:campo-data id="dataFinalizacao" />

		<input type="submit" value="Alterar" />
	</form>
</body>
</html>
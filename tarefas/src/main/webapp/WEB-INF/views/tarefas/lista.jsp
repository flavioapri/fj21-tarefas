<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>FJ21 Tarefas - Lista de Tarefas</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

	<script type="text/javascript">
  function finalizaAgora(id) {
    $.post("finalizaTarefa", {'id' : id}, function(resposta) {
      $("#tarefa_"+id).html(resposta);
    });
  }
</script>

	<a href="novaTarefa">Criar Tarefas</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de finalização</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>

				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizada</td>
				</c:if>

				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id}"><a href="#"
						onclick="finalizaAgora(${tarefa.id})">Não Finalizada</a></td>
				</c:if>

				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a>
				
				<a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
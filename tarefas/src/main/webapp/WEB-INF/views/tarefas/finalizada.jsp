<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>
<td>
	<c:if test="${tarefa.finalizado eq false}">
		<a href="#" onclick="finalizaAgora(${tarefa.id})">Finalizar</a>
	</c:if>
	<c:if test="${tarefa.finalizado eq true}">
		Finalizada
	</c:if>
</td>
<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
		pattern="dd/MM/yyyy" /></td>
<td>
<a href="removeTarefa?id=${tarefa.id}">Remover</a>
<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>
</td>
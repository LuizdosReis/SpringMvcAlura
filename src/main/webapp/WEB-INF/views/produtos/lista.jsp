<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Produtos</h1>
	
	<div>${sucesso}</div>
	
	 <table>
	 	<thead>
	 		<tr>
	 			<td>Titulo</td>
	 			<td>Descrição</td>
	 			<td>Paginas</td>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<c:forEach items="${produtos}" var="produto">
	 			<tr>
	 				<td>${produto.titulo }</td>
	 				<td>${produto.descricao}</td>
	 				<td>${produto.paginas}</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
	 </table>

</body>
</html>
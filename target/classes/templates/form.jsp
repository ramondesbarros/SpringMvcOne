<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<h1>Cadastrar Produto</h1>
		<form action="produtos" method="POST">
    		<div>
        		<label>Título</label>
        		<input type="text" name="titulo" />
    		</div>
    		<div>
        		<label>Descrição</label>
        		<textarea rows="10" cols="20" name="descricao"></textarea>
    		</div>
    		<div>
        		<label>Páginas</label>
        		<input type="text" name="paginas"/>
    		</div>
    		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        		<div>
            		<label>${tipoPreco}</label>
            		<input type="text" name="precos[${status.index}].valor" />
            		<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}" />
        		</div>
    		</c:forEach>
    		<button type="submit">Cadastrar</button>
		</form>
	</body>
</html>
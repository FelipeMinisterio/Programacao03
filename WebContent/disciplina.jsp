<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário</title>
</head>
<body>
	<form name="form1" action="crudDisciplina.jsp" method="get">
 		<table>
			<tr>
				<td>Código:</td>
				<td><input type="text" name="codigo" /></td>
			</tr>
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao" /></td>
			</tr>
			<tr>
				<td>Carga Horária:</td>
				<td><input type="text" name="carga" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Enviar" /></td>
			</tr>
		</table> 
		<input type="submit" name="crud" value="Pesquisar" /> 
		<input type="submit" name="crud" value="Incluir" /> 
		<input type="submit" name="crud" value="Alterar" /> 
		<input type="submit" name="crud" value="Excluir" />


	</form>
</body>
</html>
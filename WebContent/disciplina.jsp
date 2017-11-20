<%@page import="java.util.ArrayList"%>
<%@page import="br.com.prog3.trabalho5pc3.CrudDisciplina"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário</title>
<style>
table tableInsert {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>

</head>
<body>
	<%@page
		import="br.com.prog3.trabalho5pc3.*,java.util.List"%>

	<form name="form1" action="crudDisciplina.jsp" method="get">
		<table id="tableInsert">
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
		</table>
		<input type="submit" name="crud" value="Pesquisar" /> <input
			type="submit" name="crud" value="Incluir" /> <input type="submit"
			name="crud" value="Alterar" /> <input type="submit" name="crud"
			value="Excluir" />
	</form>
<%
	CrudDisciplina crd = new CrudDisciplina();
	List<Disciplina> listaAll = new ArrayList<>();	

	listaAll = crd.listarTodos();
	for(int i = 0; i < listaAll.size(); i++){
	    Disciplina cd = new Disciplina();
	    cd = listaAll.get(i);
	    
	out.print("<table id='tableShow'><tr><th>Código:</th><th>Descrição:</th><th>Carga Horária:</th></tr><tr><td>"+cd.getCodigo()+"</td><td>"+cd.getDescricao()+"</td><td>"+cd.getCargaHoraria()+"</tr></table>");
	}

%>
</body>
</html>
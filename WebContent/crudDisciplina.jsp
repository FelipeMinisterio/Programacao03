<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resposta do Formulário</title>
</head>
<body>
	<%@page
		import="br.com.prog3.trabalho5pc3.*,java.util.List"%>

	<%=request.getParameter("crud")%>

	<%!List<List<Disciplina>> lista;%>
	
	<%CrudDisciplina crd = new CrudDisciplina();
	
	lista.add(crd.listarTodos());
	
	%>
</body>
</html>
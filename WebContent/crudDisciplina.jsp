<%@page import="org.apache.catalina.connector.OutputBuffer"%>
<%@page import="java.util.ArrayList"%>
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
		import="br.com.prog3.trabalho5pc3.*"%>
	
	<%CrudDisciplina crd = new CrudDisciplina();

	if(request.getParameter("crud").equals("Pesquisar")){
		Disciplina cd = crd.buscarPeloCodigo(Integer.parseInt(request.getParameter("codigo")));
		out.print("Código: "+cd.getCodigo()+ "<br>");
		out.print("Descrição: "+cd.getDescricao()+ "<br>");
		out.print("Carga Horaria: "+cd.getCargaHoraria()+ "<br>");
	}else if (request.getParameter("crud").equals("Incluir")){
		Disciplina cd1 = new Disciplina();
		cd1.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		cd1.setCargaHoraria(Integer.parseInt(request.getParameter("carga")));
		cd1.setDescricao(request.getParameter("descricao"));
		crd.inserir(cd1);
		
		out.print("Inserido! <br>");
		out.print("Código: "+cd1.getCodigo()+ "<br>");
		out.print("Descrição: "+cd1.getDescricao()+ "<br>");
		out.print("Carga Horaria: "+cd1.getCargaHoraria()+ "<br>");
	}else if(request.getParameter("crud").equals("Alterar")){
		Disciplina cd2 = new Disciplina();
		cd2.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		cd2.setCargaHoraria(Integer.parseInt(request.getParameter("carga")));
		cd2.setDescricao(request.getParameter("descricao"));
		crd.alterar(cd2);
		
		out.print("Alterado! <br>");
		out.print("Código: "+cd2.getCodigo()+ "<br>");
		out.print("Descrição: "+cd2.getDescricao()+ "<br>");
		out.print("Carga Horaria: "+cd2.getCargaHoraria()+ "<br>");
	}else if(request.getParameter("crud").equals("Excluir")){
		out.print(crd.excluir(Integer.parseInt(request.getParameter("codigo"))));
		
	}
	
	%>
</body>
</html>
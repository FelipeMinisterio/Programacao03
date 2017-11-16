package br.com.prog3.trabalho5pc3;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CrudDisciplina {

	private static Map<Integer, Disciplina> mapaDisciplina;

	public CrudDisciplina() {
		Disciplina d1 = new Disciplina();
		d1.setCodigo(1);
		d1.setCargaHoraria(60);
		d1.setDescricao("Java");

		Disciplina d2 = new Disciplina();
		d2.setCodigo(2);
		d2.setCargaHoraria(45);
		d2.setDescricao("PHP");

		mapaDisciplina.put(d1.getCodigo(), d1);
		mapaDisciplina.put(d2.getCodigo(), d2);
	}

	public List<Disciplina> listarTodos() {
		List<Disciplina> lista = new ArrayList<>();

		for (Integer s : mapaDisciplina.keySet()) {
			lista.add(mapaDisciplina.get(s));

		}
		return lista;
	}

	public Disciplina buscarPeloCodigo(Integer codigo) {

		Disciplina d1 = mapaDisciplina.get(codigo);

		return d1;
	}

	public void inserir(Disciplina disciplina) {
		mapaDisciplina.put(disciplina.getCodigo(), disciplina);
	}

	public void excluir(Integer codigo) {

		if (mapaDisciplina.containsKey(codigo) == true) {
			mapaDisciplina.remove(codigo);
		} else {
			System.out.println("Disciplina não encontrada.");
		}

	}
	public void alterar(Disciplina disciplina) {
		if(mapaDisciplina.containsKey(disciplina.getCodigo()) == true) {
			mapaDisciplina.replace(disciplina.getCodigo(), disciplina);
		}else {
			mapaDisciplina.put(disciplina.getCodigo(), disciplina);
		}
		
	}
	
	
}

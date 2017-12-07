package br.com.prog3.trabalho08.controller;

import java.util.List;

import javax.faces.bean.ManagedBean;

import br.com.prog3.trabalho08.model.Multa;
import br.com.prog3.trabalho08.model.Veiculo;
import br.com.prog3.trabalho08.persistence.MultaDaoImp;

@ManagedBean
public class MultaController {
	public void incluir(Multa multa) {
		MultaDaoImp md = new MultaDaoImp();
		md.incluir(multa);
	}

	public void alterar(Multa multa) {
		MultaDaoImp md = new MultaDaoImp();
		md.alterar(multa);
	}

	public void excluir(Multa multa) {

		MultaDaoImp md = new MultaDaoImp();
		md.excluir(multa);
	}

	public List<Multa> listarTodos() {
		MultaDaoImp md = new MultaDaoImp();
		return md.listarTodos();
	}

	public Multa buscarPeloCodigo(int codigo) {
		MultaDaoImp md = new MultaDaoImp();
		return md.buscarPeloCodigo(codigo);
	}

	public List<Multa> buscarPeloVeiculo(Veiculo veiculo) {
		MultaDaoImp md = new MultaDaoImp();
		return md.buscarPeloVeiculo(veiculo);
	}
}
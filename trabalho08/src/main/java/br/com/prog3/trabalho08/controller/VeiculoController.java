package br.com.prog3.trabalho08.controller;

import java.util.List;

import javax.faces.bean.ManagedBean;

import br.com.prog3.trabalho08.model.Veiculo;
import br.com.prog3.trabalho08.persistence.VeiculoDaoImp;


@ManagedBean
public class VeiculoController {


	private Veiculo veiculo = new Veiculo();

	public Veiculo getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(Veiculo veiculo) {
		this.veiculo = veiculo;
	}

	public void incluir(Veiculo veiculo) {
		VeiculoDaoImp vd = new VeiculoDaoImp();
		vd.incluir(veiculo);
	}

	public void alterar(Veiculo veiculo) {
		VeiculoDaoImp vd = new VeiculoDaoImp();
		vd.alterar(veiculo);
	}

	public void excluir(Veiculo veiculo) {
		VeiculoDaoImp vd = new VeiculoDaoImp();
		vd.excluir(veiculo);
	}

	public List<Veiculo> listarTodos() {
		VeiculoDaoImp vd = new VeiculoDaoImp();
		return vd.listarTodos();
	}

	public Veiculo buscarPelaPlaca(String placa) {
		VeiculoDaoImp vd = new VeiculoDaoImp();
		return vd.buscarPelaPlaca(placa);
	}
}

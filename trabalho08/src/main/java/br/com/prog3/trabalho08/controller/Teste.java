package br.com.prog3.trabalho08.controller;

import java.util.List;

import br.com.prog3.trabalho08.model.Multa;
import br.com.prog3.trabalho08.model.Veiculo;

public class Teste {
	public static void main(String[] args) {
		Multa m = new Multa();
		Veiculo v = new Veiculo();
		MultaController mc = new MultaController();
		v.setPlaca("PAZ1020");
		m.setCodigo(1);
		m.setDescricao("Ultrapassou com sinal vermelho");
		m.setArtigoviolado("Art. 35");
		m.setVeiculo(v);
		mc.alterar(m);
}
}
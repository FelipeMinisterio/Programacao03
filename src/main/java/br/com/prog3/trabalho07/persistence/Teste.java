package br.com.prog3.trabalho07.persistence;


import br.com.prog3.trabalho07.model.Aluno;

public class Teste {
	public static void main(String[] args) {

		AlunoDaoImp ad = new AlunoDaoImp();
		Aluno aluno = ad.findByMatricula(2);
		if(aluno != null){
		System.out.println(aluno.getNome());
		}
}
}
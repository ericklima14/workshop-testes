//
//  Cadastro.swift
//  Testes Unitarios
//
//  Created by AppleAcademy2 on 13/05/25.
//

import Foundation

class Cadastro{
    private var pessoas: [Pessoa]
    
    init(pessoas: [Pessoa] = [Pessoa(nome: "Fulano", idade: 23, curso: "BCC"),
                              Pessoa(nome: "Beltrano", idade: 25, curso: "ADS"),
                              Pessoa(nome: "Ciclano", idade: 26, curso: "TSI")]) {
        self.pessoas = pessoas
    }
    
    func adicionarPessoa(pessoa: Pessoa){
        pessoas.append(pessoa)
    }
    
    func removerPessoa(pessoa: Pessoa){
        let index = pessoas.firstIndex(where: {$0.nome == pessoa.nome})
        
        if let indice = index{
            pessoas.remove(at: indice)
            return
        }
    }
    
    func atualizarCurso(curso: String){
        let index = pessoas.firstIndex(where: {$0.curso == curso})
        
        if let indice = index{
            pessoas[indice].curso = curso
            return
        }
    }
    
    func mostrarPessoasCadastradas(){
        print("----------------------")
        for pessoa in pessoas{
            print("Nome: \(pessoa.nome)")
            print("Idade: \(pessoa.idade)")
            print("Curso: \(pessoa.curso)")
            print("----------------------")
        }
    }
}

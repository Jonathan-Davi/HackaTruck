//
//  PersonagemViewModel.swift
//  Desafio10
//
//  Created by Turma02-8 on 17/02/25.
//

import Foundation

class PersonagemViewModel : ObservableObject{
    
    @Published var persona : [Personagem] = []
    
    func fetch(){
        
        let url = "https://valorant-api.com/v1/agents"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){ dados, _, error in
            
            do {
                self.persona = try JSONDecoder().decode(API.self, from: dados!).data
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
        
}

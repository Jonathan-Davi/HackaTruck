//
//  CarroViewModel.swift
//  Desafio11
//
//  Created by Turma02-8 on 20/02/25.
//

import Foundation

class CarroViewModel : ObservableObject{
    
    @Published var car : [carros] = []
    
    func fetch(){
        
        let url = "http://127.0.0.1:1880/lerDados"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){ dados, _, error in
            
            do {
                self.car = try JSONDecoder().decode([carros].self, from: dados!)
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
        
}

//
//  HomeViewModel.swift
//  Vollmed
//
//  Created by Igor Costa Nascimento on 28/01/25.
//

import Foundation

struct HomeViewModel{
    
    //MARK: Variaveis
    let services = WebService( )
    
    //MARK: CLASS METHODS
    
    func getSpecialists()  async throws -> [ Specialist]{
        do {
            if let specialists = try  await services.getAllSpecialists(){
                return specialists
            }
            return []
        } catch {
            print("Ocorreu um erro ao obter os especialistas: \(error)")
            throw error
        }
    }
    
}

//
//  RequestError.swift
//  Vollmed
//
//  Created by Igor Costa Nascimento on 28/01/25.
//

import Foundation

enum RequestError: Error{
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unknown
    case custom(_ error: [String: Any])
    
    var custoMessege: String{
        switch self {
            case .decode:
                return "Erro de decodificação"
            case .unauthorized:
                return "Sessão expirada"
            default:
                return "Erro desconhecido"
        }
    }
}

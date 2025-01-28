//
//  Appointment.swift
//  Vollmed
//
//  Created by Igor Costa Nascimento on 28/01/25.
//

import Foundation

struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}

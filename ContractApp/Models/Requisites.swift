//
//  Untitled.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import Foundation

// Models
struct ContractData {
    // Company details (fixed)
    let companyName: String
    let companyAddress: String
    let companyRegNumber: String
    
    // Buyer details (variable)
    var buyerName: String
    var buyerAddress: String
    var buyerRegNumber: String
    
    // Contract details
    var contractDate: Date
    var totalAmount: Double
    var contractNumber: String
  
}

struct Seller: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let address: String
    let registrationNumber: String
    
    // Пример предустановленных продавцов
    static let sellers = [
        Seller(
            name: "Company A",
            address: "123 Business Street, City A",
            registrationNumber: "REG-001-2024"
        ),
        Seller(
            name: "Company B",
            address: "456 Corporate Ave, City B",
            registrationNumber: "REG-002-2024"
        )
    ]
}

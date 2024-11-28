//
//  Untitled.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import Foundation

// Models
struct ContractData {
    var companyName: String = ""
    var companyAddress: String = ""
    var companyRegNumber: String = ""
    var buyerName: String = ""
    var buyerAddress: String = ""
    var buyerRegNumber: String = ""
    var contractDate: Date = Date()
    var totalAmount: Double = 0.0
    var contractNumber: String = ""
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

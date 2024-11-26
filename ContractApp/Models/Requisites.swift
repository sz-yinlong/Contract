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

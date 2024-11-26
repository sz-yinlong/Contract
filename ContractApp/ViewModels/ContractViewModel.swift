//
//  RequisitesViewModel.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//
import Foundation

class ContractViewModel: ObservableObject {
    @Published var contractData: ContractData
    
    init() {
        // Initialize with company's fixed data
        self.contractData = ContractData(
            companyName: "Your Company Name",
            companyAddress: "Your Company Address",
            companyRegNumber: "Your Company Reg Number",
            buyerName: "",
            buyerAddress: "",
            buyerRegNumber: "",
            contractDate: Date(),
            totalAmount: 0.0,
            contractNumber: ""
        )
    }
    
    func generateContractNumber() -> String {
        // Implement your contract number generation logic
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: contractData.contractDate)
        return "CNT-\(dateString)-\(Int.random(in: 1000...9999))"
    }
    
    func generateContract() {
        // Implement contract generation logic here
        // This could involve creating a PDF or other document format
    }
}

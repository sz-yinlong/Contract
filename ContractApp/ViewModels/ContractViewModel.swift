//
//  RequisitesViewModel.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//
import Foundation

class ContractViewModel: ObservableObject {
    @Published var contractData: ContractData
    @Published var selectedSeller: Seller?
    
    let sellers = Seller.sellers

    init() {
        // Initialize with company's fixed data
        contractData = ContractData(
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
        generateContractNumber()
    }

    func generateContractNumber() {
        contractData.contractNumber = ContractNumberGenerator.generate(
            sellerName: contractData.companyName,
            contractDate: contractData.contractDate
        )
    }

    func generateContract() {
        // Implement contract generation logic here
        // This could involve creating a PDF or other document format
    }
}

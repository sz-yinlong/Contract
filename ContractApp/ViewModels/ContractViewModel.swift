//
//  RequisitesViewModel.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//
import Foundation
import Combine

class ContractViewModel: ObservableObject {
    @Published var contractData: ContractData = ContractData()
    @Published var selectedSeller: Seller?
    
    private let contractService = ContractService()
    private var cancellables = Set<AnyCancellable>()
    
    let sellers = Seller.sellers

    init() {
        bindToService()
    }
    
    private func bindToService() {
        contractService.$contractData
            .assign(to: &$contractData)
        contractService.$selectedSeller
            .assign(to: &$selectedSeller)
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

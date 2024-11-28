//
//  ContractService.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/28/24.
//

import Combine

// Сервисный слой для управления контрактами
class ContractService {
    // Публичные Publishers
    @Published var contractData: ContractData = ContractData()
    @Published var selectedSeller: Seller?

    private var cancellables = Set<AnyCancellable>()

    init() {
        setupBindings()
    }

    private func setupBindings() {
        // Настройка подписок Combine
        $selectedSeller
            .sink { [weak self] seller in
                guard let self = self else { return }
                if let seller = seller {
                    self.contractData.companyName = seller.name
                    self.contractData.companyAddress = seller.address
                    self.contractData.companyRegNumber = seller.registrationNumber
                } else {
                    self.contractData.companyName = ""
                    self.contractData.companyAddress = ""
                    self.contractData.companyRegNumber = ""
                }
                self.generateContractNumber()
            }
            .store(in: &cancellables)

        // Подписка на изменения даты контракта
        $contractData
            .map { $0.contractDate }
            .removeDuplicates()
            .sink { [weak self] _ in
                self?.generateContractNumber()
            }
            .store(in: &cancellables)
    }

    func generateContractNumber() {
        // Реализация генерации номера контракта
    }

    func generateContract() {
        // Реализация генерации контракта
    }
}

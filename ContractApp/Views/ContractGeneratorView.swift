//
//  ContractGeneratorView.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import SwiftUI

// Views
struct ContractGeneratorView: View {
    @StateObject private var viewModel = ContractViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(R.string.localizable.buyer_info)) {
                    TextField(
                        R.string.localizable.buyer_name(),
                        text: $viewModel.contractData.buyerName)
                    TextField(
                        R.string.localizable.buyer_address(),
                        text: $viewModel.contractData.buyerAddress)
                    TextField(
                        R.string.localizable.buyer_registration_number(),
                        text: $viewModel.contractData.buyerRegNumber)
                }

                Section(header: Text(R.string.localizable.contract_details)) {
                    DatePicker(
                        R.string.localizable.contract_date(),
                        selection: $viewModel.contractData.contractDate,
                        displayedComponents: .date)

                    TextField(
                        R.string.localizable.total_amount(),
                        value: $viewModel.contractData.totalAmount,
                        format: .currency(
                            code: R.string.localizable.currency_usd()))
                }

                Button(R.string.localizable.generate_contract()) {
                    viewModel.generateContract()
                }
            }
            .navigationTitle(R.string.localizable.contract_generator())
        }
    }
}

// Preview
struct ContractGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        ContractGeneratorView()
    }
}

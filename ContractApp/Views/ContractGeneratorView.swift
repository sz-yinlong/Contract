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
                Section {
                    HStack {
                        Text(R.string.localizable.contract_number())
                            .font(.subheadline)
                        Text(viewModel.contractData.contractNumber)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    DatePicker(
                        R.string.localizable.contract_date(),
                        selection: $viewModel.contractData.contractDate,
                        displayedComponents: .date)
                        .datePickerStyle(CompactDatePickerStyle())
                }

                Section(header: Text(R.string.localizable.buyer_info)) {
                    TextField(
                        R.string.localizable.buyer_name(),
                        text: $viewModel.contractData.buyerName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField(
                        R.string.localizable.buyer_address(),
                        text: $viewModel.contractData.buyerAddress)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField(
                        R.string.localizable.buyer_registration_number(),
                        text: $viewModel.contractData.buyerRegNumber)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 30))
                Section(header: Text(R.string.localizable.contract_details)) {
                    TextField(
                        R.string.localizable.total_amount(),
                        value: $viewModel.contractData.totalAmount,
                        format: .currency(
                            code: R.string.localizable.currency_usd()))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 30))
                }

                Button(R.string.localizable.generate_contract()) {
                    viewModel.generateContract()
                }
            }
            .padding()
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

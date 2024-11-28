//
//  BuyerSection.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//
import SwiftUI

struct BuyerInformationSection: View {
    @ObservedObject var viewModel: ContractViewModel

    var body: some View {
        VStack(spacing: 10) {
            InformationSection(title: R.string.localizable.buyer_info(), iconName: "person.fill") {
                LabeledTextField(
                    title: R.string.localizable.buyer_name(),
                    placeholder: R.string.localizable.enter_buyer_name(),
                    text: $viewModel.contractData.buyerName
                )
                LabeledTextField(
                    title: R.string.localizable.buyer_address(),
                    placeholder: R.string.localizable.enter_buyer_address(),
                    text: $viewModel.contractData.buyerAddress
                )
                LabeledTextField(
                    title: R.string.localizable.buyer_inn(),
                    placeholder: R.string.localizable.enter_registration_number(),
                    text: $viewModel.contractData.buyerRegNumber
                )
            }
        }
    
        .padding()
    }
}

#Preview {
    ContractGeneratorView()
}

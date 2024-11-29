//
//  BuyerSection.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//


import SwiftUI

struct BuyerSection: View {
    @ObservedObject var viewModel: ContractViewModel

    var body: some View {
        InformationSection(
            title: R.string.localizable.buyer_info(),
            iconName: "person.fill"
        ) {
            VStack(spacing: 12) {
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
            .padding(.top, 8)
        }
    }
}

struct BuyerInformationSection_Previews: PreviewProvider {
    static var previews: some View {
        BuyerSection(viewModel: ContractViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

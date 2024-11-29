//
//  ContractDetails.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import SwiftUI

struct ContractDetailsSection: View {
    @Binding var totalAmount: Double

    var body: some View {
        InformationSection(
            title: R.string.localizable.contract_details(),
            iconName: "doc.text.fill"
        ) {
            VStack(alignment: .leading, spacing: 12) {
                LabeledTextField(
                    title: R.string.localizable.total_amount(),
                    placeholder: R.string.localizable.enter_total_amount(),
                    text: Binding(
                        get: { String(format: "%.2f", totalAmount) },
                        set: { newValue in
                            totalAmount = Double(newValue) ?? 0.0
                        }
                    )
                )
            }
            .padding(.top, 8)
        }
    }
}

#Preview {
    ContractGeneratorView()
}

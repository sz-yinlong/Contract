//
//  ContractHeader.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import SwiftUI

struct ContractNumberSection: View {
    let contractNumber: String
    @Binding var contractDate: Date

    var body: some View {
        InformationSection(
            title: "",
            iconName: "number.circle"
        ) {
            HStack {
                // Дата Контракта
                HStack(spacing: 4) {
                    Text(R.string.localizable.contract_date())
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)

                    DatePicker(
                        "",
                        selection: $contractDate,
                        displayedComponents: .date
                    )
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                }
                Spacer()
                // Номер Контракта
                VStack(alignment: .trailing, spacing: 6) {
                    Text(contractNumber)
                        .font(.system(size: 15))
                        .foregroundColor(.primary)
                        .fontDesign(.monospaced)
                }
            }
        }
    }
}

struct ContractNumberSection_Previews: PreviewProvider {
    static var previews: some View {
        ContractNumberSection(contractNumber: "123456", contractDate: .constant(Date()))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

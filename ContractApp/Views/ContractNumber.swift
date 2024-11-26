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
        HStack {
            // Contract Date
            VStack(alignment: .leading) {
                Text(R.string.localizable.contract_date())
                    .font(.system(size: 13))
                    .foregroundColor(.gray)

                DatePicker(
                    "",
                    selection: $contractDate,
                    displayedComponents: .date
                )
                .datePickerStyle(CompactDatePickerStyle())
                .labelsHidden()
                .colorScheme(.dark)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 6) {
                Text(R.string.localizable.contract_number())
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                Text(contractNumber)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
            }
        }

        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading) // Добавляем frame с выравниванием влево
    }
}

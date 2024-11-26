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
        VStack(alignment: .leading, spacing: 8) {
            Text(R.string.localizable.contract_details)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(R.string.localizable.total_amount())
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                
                TextField(
                    "",
                    value: $totalAmount,
                    format: .currency(code: R.string.localizable.currency_usd())
                )
                .textFieldStyle(PlainTextFieldStyle())
                .font(.system(size: 15))
                .padding(8)
                .background(Color(.darkGray).opacity(0.2))
                .cornerRadius(6)
            }
            .padding(.horizontal, 10)
        }
        .padding()
    }
}

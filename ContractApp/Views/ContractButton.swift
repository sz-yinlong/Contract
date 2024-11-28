//
//  ContractButton.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import SwiftUI

struct GenerateContractButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(R.string.localizable.generate_contract())
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color.blue.opacity(0.7))
                .cornerRadius(6)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

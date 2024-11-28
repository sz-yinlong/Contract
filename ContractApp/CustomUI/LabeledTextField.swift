//
//  RoundedTextField.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import SwiftUI

struct LabeledTextField: View {
    let title: String
    let placeholder: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.body)
                .foregroundColor(.primary)
            TextField(placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.vertical, 4)
        }
    }
}

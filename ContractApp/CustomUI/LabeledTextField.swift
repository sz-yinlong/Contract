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
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(.gray)
            
            ZStack(alignment: .leading) { // Добавляем ZStack с выравниванием влево
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray.opacity(0.7))
                        .padding(.leading, 8)
                }
                
                TextField("", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.system(size: 15))
                    .padding(8)
            }
            .background(Color(.darkGray).opacity(0.2))
            .cornerRadius(6)
        }
        .padding(.horizontal, 10)
    }
}

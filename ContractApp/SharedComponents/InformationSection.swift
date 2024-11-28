//
//  InformationSection.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/28/24.
//
import SwiftUI

struct InformationSection<Content: View>: View {
    let title: String
    let iconName: String?
    @ViewBuilder let content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let icon = iconName {
                Image(systemName: icon)
                    .foregroundColor(.accentColor)
            }
            Text(title)
                .font(.title2)
                .padding(.bottom, 4)
            content
        }
        .sectionStyle()
    }
}

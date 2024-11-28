//
//  SectionModifier.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/28/24.
//
import SwiftUI

struct SectionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(NSColor.windowBackgroundColor))
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 1)
    }
}

extension View {
    func sectionStyle() -> some View {
        self.modifier(SectionModifier())
    }
}

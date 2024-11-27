//
//  BuyerSection.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//
import SwiftUI



struct BuyerInformationSection: View {
    @ObservedObject var viewModel: ContractViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Buyer Information")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 4)
            
            VStack(spacing: 16) {
                LabeledTextField(
                    title: "Buyer Name",
                    placeholder: "Enter buyer name",
                    text: $viewModel.contractData.buyerName
                )
                
                LabeledTextField(
                    title: "Buyer Address",
                    placeholder: "Enter address",
                    text: $viewModel.contractData.buyerAddress
                )
                
                LabeledTextField(
                    title: "Registration Number",
                    placeholder: "Enter registration number",
                    text: $viewModel.contractData.buyerRegNumber
                )
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2, opacity: 1),
                            Color(.sRGB, red: 0.15, green: 0.15, blue: 0.15, opacity: 1)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        )
    }
}
#Preview {
    ContractGeneratorView()
}

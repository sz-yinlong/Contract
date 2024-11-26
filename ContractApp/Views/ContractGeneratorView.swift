import SwiftUI

struct ContractGeneratorView: View {
    @StateObject private var viewModel = ContractViewModel()

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                // Top Section (Seller, Date, Contract Number)
                HStack(alignment: .top) {
                    // Seller Section
                    SellerSection(
                        selectedSeller: $viewModel.selectedSeller,
                        sellers: viewModel.sellers
                    )
                    .frame(maxWidth: .infinity, alignment: .leading) // Выровнять влево

                  

                    // Contract Date and Number Section
                    VStack(alignment: .leading, spacing: 8) {
                        DatePicker(
                            R.string.localizable.contract_date(),
                            selection: $viewModel.contractData.contractDate,
                            displayedComponents: .date
                        )
                        .labelsHidden()

                        HStack {
                            Text(R.string.localizable.contract_number())
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text(viewModel.contractData.contractNumber)
                                .font(.body)
                        }
                    }
                }
                .padding(.horizontal, 16)

                // Form Section (Buyer Information, Contract Details)
                Form {
                    // Buyer Information
                    BuyerInformationSection(viewModel: viewModel)
                        .padding(.top, 16)

                    // Contract Details
                    ContractDetailsSection(
                        totalAmount: $viewModel.contractData.totalAmount
                    )
                    .padding(.top, 16)

                    // Generate Button
                    GenerateContractButton {
                        viewModel.generateContract()
                    }
                    .padding(.top, 16)
                }
                .padding()
            }
            .padding()
            .background(Color(.darkGray).opacity(0.1))
            .navigationTitle(R.string.localizable.contract_generator())
        }
        .padding()
    }
}

// MARK: - Preview

#Preview {
    ContractGeneratorView()
        .frame(width: 500)
}

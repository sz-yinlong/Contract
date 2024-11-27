import SwiftUI

struct ContractGeneratorView: View {
    @StateObject private var viewModel = ContractViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 8) {
                    HStack {
                        SellerSection(
                            selectedSeller: $viewModel.selectedSeller,
                            sellers: viewModel.sellers
                        )
                        .padding(.trailing, 20)
                        
                        VStack(alignment: .trailing) {
                            Text(R.string.localizable.contract_number())
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text(viewModel.contractData.contractNumber)
                                .font(.caption)
                                .fontDesign(.monospaced)
                        }
                    }
                    .padding(.horizontal, 8)
                    
                    Divider()
                        
                    
                    VStack(spacing: 8) {
                        BuyerInformationSection(viewModel: viewModel)
                        ContractDetailsSection(
                            totalAmount: $viewModel.contractData.totalAmount
                        )
                        GenerateContractButton {
                            viewModel.generateContract()
                        }
                    }
                    .padding(.horizontal, 8)
                }
                .frame(minWidth: 600, minHeight: 800)
                .padding(8)
                .background(Color(.darkGray).opacity(0.1))
            }
            .navigationTitle(R.string.localizable.contract_generator())

        }
    }
}

struct ContractGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        ContractGeneratorView()
            .frame(width: 700, height: 600) // Adjust as needed
            .previewLayout(.sizeThatFits) // Prevents extra spacing
    }
}

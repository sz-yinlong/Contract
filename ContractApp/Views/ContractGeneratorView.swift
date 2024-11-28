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
                        .padding(.trailing, 50)
                     
                        HStack {
                            Text(R.string.localizable.contract_number())
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text(viewModel.contractData.contractNumber)
                                .font(.caption)
                                .fontDesign(.monospaced)
                        }
                    }
                    .padding(.horizontal, 18)
                    .sectionStyle()
                    Divider()
                        .padding()

                  
                        BuyerInformationSection(viewModel: viewModel)
                            .padding(EdgeInsets(top: 8, leading: 18, bottom: 8, trailing: 250))
                        ContractDetailsSection(
                            totalAmount: $viewModel.contractData.totalAmount
                        )
                        .sectionStyle()
                        GenerateContractButton {
                            viewModel.generateContract()
                        }
                  
                    
                    
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

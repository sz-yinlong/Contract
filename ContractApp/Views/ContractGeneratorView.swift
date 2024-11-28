import SwiftUI

struct ContractGeneratorView: View {
    @StateObject private var viewModel = ContractViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 16) {
                    HStack {
                        SellerSection(
                            selectedSeller: $viewModel.selectedSeller,
                            sellers: viewModel.sellers
                        )
                        .padding(.trailing, 50)

                        VStack(alignment: .trailing, spacing: 4) {
                            Text(R.string.localizable.contract_number())
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Text(viewModel.contractData.contractNumber)
                                .font(.caption)
                                .fontDesign(.monospaced)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 18)

                    Divider()
                        .padding(.horizontal, 18)

                    VStack(spacing: 16) {
                        
                        HStack {
                            BuyerInformationSection(viewModel: viewModel)
                                .padding(EdgeInsets(top: 8, leading: 18, bottom: 8, trailing: 250))
                        }
                    }
                    
                    ContractDetailsSection(
                        totalAmount: $viewModel.contractData.totalAmount
                    )
                    .sectionStyle()
                    GenerateContractButton {
                        withAnimation {
                            viewModel.generateContract()
                        }
                    }
                    .padding(.horizontal, 18)
                }
                .frame(minWidth: 600, minHeight: 800)
                .padding(8)
                
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .navigationTitle(R.string.localizable.contract_generator())
        }
        .frame(minWidth: 600, minHeight: 600)
        
    }
}

struct ContractGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        ContractGeneratorView()
            .frame(width: 700, height: 600) // Adjust as needed
            .previewLayout(.sizeThatFits) // Prevents extra spacing
    }
}

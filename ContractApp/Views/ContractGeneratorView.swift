import SwiftUI

struct ContractGeneratorView: View {
    @StateObject private var viewModel = ContractViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 16) {
                    // Секция Продавца и Номер Контракта
                    HStack(alignment: .top, spacing: 16) {
                        // Секция Продавца с Иконкой
                        SellerSection(
                            selectedSeller: $viewModel.selectedSeller,
                            sellers: viewModel.sellers
                        )
                        .frame(maxWidth: .infinity)
                        .padding(.trailing, 20) // Умеренный отступ

                        // Номер Контракта
                        ContractNumberSection(
                            contractNumber: viewModel.contractData.contractNumber,
                            contractDate: $viewModel.contractData.contractDate
                        )
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal, 18)


                    Divider()
                        .padding(.horizontal, 18)

                    // Основные Секции: Покупатель и Детали Контракта
                    VStack(spacing: 16) {
                        BuyerSection(viewModel: viewModel)
                        ContractDetailsSection(
                            totalAmount: $viewModel.contractData.totalAmount
                        )
                    }
                    .padding(.horizontal, 18)

                    // Кнопка Генерации Контракта
                    GenerateContractButton {
                        withAnimation {
                            viewModel.generateContract()
                        }
                    }
                    .padding(.horizontal, 18)
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                .frame(minWidth: 600, minHeight: 800)
            }
        }
        .navigationTitle(R.string.localizable.contract_generator())
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct ContractGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        ContractGeneratorView()
            .frame(width: 800, height: 600)
            .previewLayout(.sizeThatFits)
    }
}

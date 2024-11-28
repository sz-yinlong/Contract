//
//  SellerInformationSection.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//


import SwiftUI

struct SellerSection: View {
    @Binding var selectedSeller: Seller?
    let sellers: [Seller]
    
    var body: some View {
        HStack() {
            Image(systemName: "person.3.fill")
                    .foregroundColor(.accentColor)
            Text(R.string.localizable.seller_info)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.white)
            
            Menu {
                ForEach(sellers) { seller in
                    Button(action: {
                        selectedSeller = seller
                    }) {
                        HStack {
                            Text(seller.name)
                            if selectedSeller == seller {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } label: {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(selectedSeller?.name ?? "Select Seller")
                            .font(.system(size: 15))
                            .foregroundColor(selectedSeller == nil ? .gray : .white)
                        
                        if let seller = selectedSeller {
                            Text(seller.address)
                                .font(.system(size: 13))
                                .foregroundColor(.gray)
                            Text(seller.registrationNumber)
                                .font(.system(size: 13))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                   
                }
                .padding(12)
                .background(Color(.darkGray).opacity(0.2))
                .cornerRadius(6)
            }
        }
        .padding()
    }
}

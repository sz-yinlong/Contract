//
//  ContractNumberGeneratro.swift
//  ContractApp
//
//  Created by ARTEM BARIEV on 11/26/24.
//

import Foundation

import Foundation

struct ContractNumberGenerator {
    static func generate(sellerName: String, contractDate: Date) -> String {
        // Первые две буквы названия компании продавца
        let sellerInitials = String(sellerName.prefix(2)).uppercased()
        
        // Форматирование даты
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: contractDate)
        
        // Случайное двухзначное число
        let randomNumber = Int.random(in: 10...99)
        
        // Сборка номера контракта
        return "\(sellerInitials)-\(dateString)-\(randomNumber)"
    }
}

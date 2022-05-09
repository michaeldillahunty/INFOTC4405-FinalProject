//
//  CalculateCurrency.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 5/2/22.
//

import Foundation
import SwiftUI


class CalculateCurrency {
    var quantity: Double
//    var price: Double
    
    init(quantity: Double) {
        self.quantity = quantity
    }
}

enum Currencies: Double, Codable {
    case bitcoin
    case ethereum
    case gnosis
    case marker
    case yearnFinancial
}


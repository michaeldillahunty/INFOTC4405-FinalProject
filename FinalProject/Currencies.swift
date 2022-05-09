//
//  Currencies.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 4/26/22.


import Foundation
import Swift
import SwiftUI
import UIKit

//enum CurrencyName: Double, Codable {
//    case bitcoin
//    case ethereum
//    case gnosis
//    case marker
//    case yearnFinancial
//}
//
//struct CurrencyData: Codable, Identifiable {
//    var id = UUID()
//    var currencyName: CurrencyName
//    var currencyPrice: Double
//    var currencyRank: Int
//    
//    private enum CodingKeys: String, CodingKey {
//        case currencyName, currencyPrice, currencyRank
//    }
//}
//
//struct CurrenciesData: Codable {
//    var status: String
//    var currencies: [CurrencyData]
//    
//    private enum CodingKeys: String, CodingKey {
//        case status
//        case currencies = "currency"
//    }
//}





//class Currency: Identifiable {
//    let id = UUID()
//    var currencies: [Currencies] = []
//    let currenciesInfo = [["rank":1, "name":"bitcoin", "cost":"38148.20"],["rank":2, "name":"yearn finance", "cost":"17509.10"],["rank":3, "name":"ethereum", "cost":"2815.86"],["rank":4, "name":"maker","cost":"1622.62"],["rank":5, "name":"gnosis","cost":"316.05"]
//    ]
//
//    init() {
//        for currencyInfo in currenciesInfo {
//            currencies.append(Currencies(name: currenciesInfo["name"] as! String, rank: currenciesInfo["rank"] as! Int, cost: currenciesInfo["cost"] as! Double))
//        }
//    }
//}

//
//  BTCView.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 4/26/22.
//

import Foundation
import SwiftUI
import Swift

struct BTCView: View {
    
    @State var userInputTextField: Double = 0.0
    
    @State var calculateCurrency: [CalculateCurrency] = []
    
    @State var quantityStats: Double = 0
    
    @State var costStats: Double = 0
    
    @State var averageCostStats: Double = 0
    
    
    var btcPrice: Double = 38148.20
//    let currencyData: Currencies 
    
    
    func getStatistics(){
        var totalQuantity: Double = 0
        var totalCost: Double = 0
        var averageCost: Double = 0
        
        for i in calculateCurrency {
            totalQuantity += i.quantity
        }

        
        totalCost = totalQuantity*btcPrice
        averageCost = totalCost/totalQuantity
        
        quantityStats = totalQuantity
        costStats = totalCost
        averageCostStats = averageCost
    }
    
    
    var body: some View {
        
        VStack{
            Image("bitcoin").resizable().frame(width:90, height:50)
            Text("Bitcoin (BTC)").font(.title2).fontWeight(.semibold)
            
        }
        
        Spacer()
        VStack {
            ZStack {
                NavigationView {
                    VStack {
                        
                        VStack {

                            Text("Input Desired # of BTC:   ").fontWeight(.heavy)
                            
                            HStack {
                                Text("    Quantity: ").fontWeight(.semibold)
                                TextField("Input desired quantity", value: $userInputTextField, format: .number)
                                    .textFieldStyle(.roundedBorder)
                                    .keyboardType(.decimalPad)
                                Button(action: {
                                    UIApplication.shared.endEditing()
                                }) {
                                    Text("                ")
                                }
                            }
                            
                            HStack {
                                Text("Price as of [May 3, 2022]: ").font(.system(size: 13.0))
                                Text("USD: \(btcPrice)").font(.system(size: 13.0))
                            }
                            
                            
                            HStack{
//                                HStack{
                                    // CALCULATE BUTTON
                                    Button(action: {
                                        let inputQuantity = userInputTextField
                                        let newCalculation: CalculateCurrency = CalculateCurrency(quantity: inputQuantity)
                                        print(newCalculation.quantity)
                                        calculateCurrency.append(newCalculation)
                                        
                                        getStatistics()
                                        
                                    }) {
                                        
                                        Text("Calculate").font(.system(size: 15.0))
                                    }
                                    
                                    // CLEAR BUTTON
//                                    Button(action: {
//                                        let inputQuantity = 0.0
//                                        let clearCalculations: CalculateCurrency = CalculateCurrency(quantity: inputQuantity)
//                                        print(clearCalculations.quantity)
//                                        calculateCurrency.append(clearCalculations)
//
//                                        getStatistics()
//
//                                    }) {
//                                        Text("Clear")
//                                }
//
//                            }
                            
                            
                        }
                        
                        Divider().padding(50)
                        
                        VStack {
                            Text("Statistics:").font(.system(size: 20.0)).fontWeight(.semibold).padding(5)
                            
                            HStack {
                                Text("BTC Quantity: ").fontWeight(.medium).foregroundColor(.orange)
                                Text("\(quantityStats)").font(.system(size: 15))
                            }
                            HStack {
                                Text("Total Cost of \(quantityStats) BTC: ").fontWeight(.medium).foregroundColor(.orange)
                                Text("$\(costStats)").font(.system(size: 15))
                            }
//                            HStack {
//                                Text("Average Cost: ").fontWeight(.medium).foregroundColor(.orange)
//                                Text("$\(averageCostStats)").font(.system(size: 15))
//                            }
                            
                        }
                        
                    }
                        Spacer()
                        
                    
                }
            }
        }
        
        
    }
   
}


}

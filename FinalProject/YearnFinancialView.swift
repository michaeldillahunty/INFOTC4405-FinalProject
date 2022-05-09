//
//  YearnFinancialView.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 4/26/22.
//

import Foundation
import SwiftUI

struct YearnFinancialView: View {
    
    @State var userInputTextField: Double = 0.0
    
    @State var calculateCurrency: [CalculateCurrency] = []
    
    @State var quantityStats: Double = 0
    
    @State var costStats: Double = 0
    
    @State var averageCostStats: Double = 0
    
    
    var yearnPrice: Double = 17509.10
//    let currencyData: Currencies
    
    
    func getStatistics(){
        var totalQuantity: Double = 0
        var totalCost: Double = 0
        var averageCost: Double = 0
        
        for i in calculateCurrency {
            totalQuantity += i.quantity
        }

        
        totalCost = totalQuantity*yearnPrice
        averageCost = totalCost/totalQuantity
        
        quantityStats = totalQuantity
        costStats = totalCost
        averageCostStats = averageCost
    }
    
    
    var body: some View {
        
        VStack{
            Image("yearn").resizable().frame(width:90, height:90)
            Text("Year.Finance (YFI)").font(.title2).fontWeight(.semibold)
            
        }
        
        Spacer()
        VStack {
            ZStack {
                NavigationView {
                    VStack {
                        
                        VStack {

                            Text("Input Desired # of YFI:   ").fontWeight(.heavy)
                            
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
                                Text("USD: \(yearnPrice)").font(.system(size: 13.0))
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
                            
                        }
                        
                        Divider().padding(50)
                        
                        VStack {
                            Text("Statistics:").font(.system(size: 20.0)).fontWeight(.semibold).padding(5)
                            
                            HStack {
                                Text("YFI Quantity: ").fontWeight(.medium).foregroundColor(.blue)
                                Text("\(quantityStats)").font(.system(size: 15))
                            }
                            HStack {
                                Text("Total Cost of \(quantityStats) YFI: ").fontWeight(.medium).foregroundColor(.blue)
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

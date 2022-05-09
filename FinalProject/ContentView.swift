//
//  ContentView.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 4/26/22.
//
//

import SwiftUI
import Swift
import Foundation

struct ContentView: View {
    
//    var currenciesData: Currencies?
//    var jsonFileName = "currency_data"
    
    var body: some View {
        DropDownMenu()
    }
}

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}




// code for DropDown struct from:
// https://anthonycodesofficial.medium.com/swiftui-tutorial-how-to-create-a-floating-drop-down-menu-cc1562dbd48f
//
struct DropDownMenu: View {
    
    @State var isExpanded = false
    
    var body: some View {
        Spacer()
        Text("Crypto Calculator").font(.title2)
        Text("Michael Dillahunty - IFOTC4405 FINAL PROJECT").font(.system(size: 15.0))
        Divider()
        
        NavigationView {
            VStack() {
                VStack(spacing: 30){
                    NavigationLink(destination: AboutView()){
                        Text("About                                                                      ")
                            .font(.callout)
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, -8.0)
                    }
                    Text("Please select a crypto from the menu below: ")
                    HStack() {
                        
                        Text("Menu").fontWeight(.bold).foregroundColor(.black)
                        Image(systemName: isExpanded ? "chevron.up":"chevron.down").resizable().frame(width: 13, height: 6).foregroundColor(.black)
                    }.onTapGesture {
                        self.isExpanded.toggle()
                    }
//                    Spacer()
                    if isExpanded {
                        VStack {
                            NavigationLink(destination: BTCView()){
                                HStack{
                                    Image("bitcoin").resizable().frame(width:45, height:25)
                                    Text("Bitcoin")
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, -13.0)
                                }
                            }
                            
                            NavigationLink(destination: ETHView()){
                                HStack {
                                    Image("ethereum").resizable().frame(width:18, height:21)
                                    Text("Ethereum").multilineTextAlignment(.leading)
                                        .padding(.leading, -6.0)
                                }
                            }
                            
                            NavigationLink(destination: GnosisView()){
                                HStack{
                                    Image("gnosis").resizable().frame(width:19, height:19)
                                    Text("Gnosis") .multilineTextAlignment(.leading)
                                        .padding(.leading, -5.0)
                                }
                                
                            }
                            NavigationLink(destination: MarkerView()){
                                HStack{
                                    Image("maker").resizable().frame(width:21, height:21)
                                    Text("Maker").multilineTextAlignment(.leading)
                                        .padding(.leading, -6.0)
                                }
                                
                            }
                            NavigationLink(destination: YearnFinancialView()){
                                HStack{
                                    Image("yearn").resizable().frame(width:21, height:21)
                                    Text("Yearn.Finance").multilineTextAlignment(.leading)
                                        .padding(.leading, -6.0)
                                }
                                
                            }
                            
                        }
                        
                    }
                    Spacer()
//                    NavigationLink(destination: aboutView()){
//                        Text("About")
//                    }
                }
            }
            
            
        }
//        .navigationTitle("Crypto Calculator")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        DropDownMenu()
    }
}

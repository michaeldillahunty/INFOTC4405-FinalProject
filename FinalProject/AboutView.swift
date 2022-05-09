//
//  AboutView.swift
//  FinalProject
//
//  Created by Michael Dillahunty on 5/4/22.
//

import Foundation
import SwiftUI
import Swift

struct AboutView: View {
    var body: some View {
        Text("This project is a 'Crypto Calculator'. Meaning it takes the current price of the selected crypo currency, and multiplies the cost by the amount, input by the user").padding(15)
        Spacer()
        Text("Created by Michael Dillahunty as a final project for INFOTC4405")
        Spacer()
    }
}

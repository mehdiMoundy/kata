//
//  ContactLine.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI

struct ContactLine: View {
    var flag:String
    var socityName:String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(flag)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.1)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {Circle().stroke(Color.gray, lineWidth: 2)}
            Text(socityName)
                
            
            
        }
    }
}

struct ContactLine_Previews: PreviewProvider {
    static var previews: some View {
        ContactLine(flag: "flagFrance", socityName: "BNP Paribas Personal Finance")
    }
}

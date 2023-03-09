//
//  ContactDetail.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI

struct ContactDetail: View {
    var flag:String
    var socityName:String
    var direction:String
    
    var body: some View {
        VStack {
            Image("bg")  .resizable()
                .scaledToFit()
            Image(flag)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.3)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {Circle().stroke(Color.gray, lineWidth: 4)}
                .offset(y:UIScreen.main.bounds.width * (-0.15))
           
            Text(socityName)
                .font(.title)
            Text(direction)
                .multilineTextAlignment(.center)
            Spacer()
        }
        
         
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(flag: "flagFrance", socityName: "BNP Paribas Personal Finance", direction: "143-145 Rue Anatole France \n92300 Levallois-Perret \nFrance")
    }
}

//
//  ContactView.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI

struct ContactView: View {
    static let modelData = ModelData()
    @State private var selectedView: Int? = 0
    var body: some View {
        
      NavigationView{
            List (ContactView.modelData.contacts) {  contact in
                NavigationLink {ContactDetail(flag: contact.flag, socityName: contact.societyName, direction: contact.direction)
                }
                label :{
                ContactLine(flag: contact.flag, socityName: contact.societyName)}
            }
            .navigationTitle("Contacts")
            .scrollIndicators(.hidden)
            .scrollContentBackground(.hidden)
        }.navigationViewStyle(.stack)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

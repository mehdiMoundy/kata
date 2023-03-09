//
//  homePage.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

struct homeView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showProfile = false
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width * 0.5)
            .padding(.top, 10.0)
          VStack(alignment: .center) {
                Text("Bienvenu sur la page d'acceuil")
                    .font(.title)
                    .fontWeight(.bold)
                    
          }.frame(width: UIScreen.main.bounds.width)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
            Image("bg")  .resizable()
                .scaledToFit()
            VStack(alignment: .center) {
                Text ("Plan stratégique")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Fort de ses plateformes métiers leaders en Europe, stratégiquement alignées pour servir ses clients et ses partenaires, avec le plein apport du modèle opérationnel intégré et transformé, BNP Paribas s’appuie sur trois axes :"
                )}.padding(.horizontal, 10.0)
            HStack {
                VStack(alignment: .leading){
                    Text("1 - La technologie et l'industrialisation au cœur de son modèle")
                    Text("2 - Le déploiement de la finance durable et de la RSE à l'échelle")
                    Text("3 - Le développement du potentiel et de l’engagement des collaborateurs")
                }
                Spacer()
            }.padding([.top, .leading, .trailing], 20.0)
        }
       
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView().environmentObject(ModelData())
    }
}

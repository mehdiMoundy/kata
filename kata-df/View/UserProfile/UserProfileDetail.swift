//
//  UserProfileDetail.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI

struct UserProfileDetail: View {
    @EnvironmentObject var modelData: ModelData
    var draftProfile : Profile
    var body: some View {
        NavigationView{
            VStack {
                Image(draftProfile.userAvatar.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.5)
                HStack {
                    Text(draftProfile.userName)
                    Text(draftProfile.userSurname)
                }
                .font(.title)
                HStack {
                    Image(systemName: "mail")
                    Text(draftProfile.userEmail)
                }
                HStack {
                    Image(systemName: "birthday.cake")
                    Text(draftProfile.userBirthday,style : .date)
                }
            }
        }
    }
}

struct UserProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileDetail(draftProfile: Profile.default)
            .environmentObject(ModelData())
    }
}

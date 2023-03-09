//
//  UserProfileEdit.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI

struct UserProfileEdit: View {
    @Binding var tempProfile: Profile
    var body: some View {
               List {
                Section (header: Text("Update your Avatar")) {
                    HStack {
                        Spacer()
                        Image(tempProfile.userAvatar.rawValue)
                               .resizable()
                               .scaledToFit()
                               .frame(width: UIScreen.main.bounds.width * 0.5)
                        Spacer()
                       }
                       Picker("Avatar", selection: $tempProfile.userAvatar ) {
                           ForEach(Profile.Avatars.allCases) { avatar in
                                Text(avatar.rawValue)
                                   .tag(avatar)
                                    }
                                }.pickerStyle(.segmented)
                    }
                   Section (header: Text("Update your personal info")) {
                        HStack {
                            Image(systemName: "person.circle")
                            Divider()
                            TextField("Username", text: $tempProfile.userName)
                            Divider()
                            TextField("Username", text: $tempProfile.userSurname)
                        }
                       HStack {
                           Image(systemName: "mail")
                           Divider()
                           TextField("Username", text: $tempProfile.userEmail)
                       }
                        HStack {
                            Image(systemName: "birthday.cake")
                            Divider()
                            DatePicker(selection: $tempProfile.userBirthday,  displayedComponents: .date) {
                            }.fixedSize()
                        }
                    }
                }
    }
}

struct UserProfileEdit_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileEdit(tempProfile: .constant(.default)).environmentObject(ModelData())
    }
}

//
//  ProfileHost.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import SwiftUI
struct ProfileHost: View {
    @Environment(\.editMode) private var editMode
    @EnvironmentObject var modelData : ModelData
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            HStack() {
                if editMode?.wrappedValue == .active
                {  Button("Ugh, No thx!", role: .cancel)
                    {draftProfile = modelData.profile
                    editMode?.animation().wrappedValue = .inactive}
                    
                 }
                Spacer()
                Button(action: {
                    if editMode?.wrappedValue == .active{
                        editMode?.wrappedValue = .inactive}
                        else
                    {  editMode?.wrappedValue = .active
                    }
                         }) {
                             Text(self.editMode?.wrappedValue == .active ? "Ok like this!" : "Update Profile")
                         }
                }
            if editMode?.wrappedValue == .inactive {
                UserProfileDetail(draftProfile: modelData.profile)
                }
            else {
                UserProfileEdit(tempProfile: $draftProfile)
                    .onAppear {draftProfile = modelData.profile}
                    .onDisappear {modelData.profile = draftProfile}
                }
        }.accentColor(Color("NavigationLabelColor"))
        .padding([.top, .leading, .trailing], 10.0)
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost().environmentObject(ModelData())
    }
}

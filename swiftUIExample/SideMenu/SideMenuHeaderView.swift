//
//  SideMenuHeaderView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack  (alignment:.leading) {
            Image("profiledp")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom,16)
            
            Text("John Doe")
                .font(.system(size: 24, weight : .semibold))
            
            Text("@email")
                .font(.system(size: 14)).padding(.bottom,12)
            
            HStack (spacing : 12) {
                HStack (spacing : 14) {
                    Text("123").bold()
                    Text("following")
                }
                HStack (spacing : 4) {
                    Text("607").bold()
                    Text("Followers")
                }
                Spacer()
            }
           
            
            Spacer()
        }.padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}

//
//  SideMenuOptionView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        HStack(spacing: 16){
            
            Image(systemName: "person")
                .frame(width: 24, height: 24, alignment: .center)
            Text("Profile").font(.system(size: 15,weight: .semibold))
            
            Spacer()
        }.padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}

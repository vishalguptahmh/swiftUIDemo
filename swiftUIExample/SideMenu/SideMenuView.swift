//
//  SideMenuView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
//                Header
                SideMenuHeaderView().foregroundColor(.white).frame(height: 200)
//                Cell Items
                
                ForEach(0..<5) {_ in
                    SideMenuOptionView()
                }
                
                Spacer()
                
            }.foregroundColor(.white)
            
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

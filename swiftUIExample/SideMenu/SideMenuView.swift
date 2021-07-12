//
//  SideMenuView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
//                Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white).frame(height: 200)
//                Cell Items
                
                ForEach(SideMenuViewModel.allCases ,  id: \.self) { value in
                   NavigationLink(
                    destination: Text(value.title),
                    label: {
                        SideMenuOptionView(model: value)
                    })
                }
                
                Spacer()
                
            }.foregroundColor(.white)
            .navigationBarHidden(true)
        
            
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

//
//  DashboardView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 12-July-2021.
//

import SwiftUI

struct DashboardView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                MainScreen()
                    .cornerRadius(isShowing ? 20 : 10 )
                    .offset(x: isShowing ? 250 : 0, y: isShowing ? 40 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                        
                    }, label: {
                        MySmallImage()
                    }))
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                
            }
            .onAppear{
                isShowing = false
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}


struct MainScreen: View {
    var body: some View {
        SegmentedView()
        
    }
}

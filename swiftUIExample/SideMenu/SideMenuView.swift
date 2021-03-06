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
                    .foregroundColor(.white).frame(height: 150)
//                Cell Items
                
                ForEach(SideMenuViewModel.allCases ,  id: \.self) { value in
                  
                    NavigationLink(
                    destination:
                        
                        DestinationAfterClick(sideModel: value ),
                    
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

struct DestinationAfterClick: View {
    @State var sideModel : SideMenuViewModel
    var body: some View {
        switch sideModel {
        case SideMenuViewModel.home:
            Text(sideModel.title)
        case SideMenuViewModel.yourAccount :
            AccountInfoView()
        case SideMenuViewModel.settings:
            SettingsUiView()
        default:
            Text(sideModel.title)
        }
//        if(SideMenuViewModel.yourAccount == sideModel){
//            AccountInfoView()
//        }
//        else{
//            Text(sideModel.title)
//        }
        
    }
}

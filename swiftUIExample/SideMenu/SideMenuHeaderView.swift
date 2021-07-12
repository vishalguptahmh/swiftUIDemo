//
//  SideMenuHeaderView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack(alignment : .topTrailing) {
            
            // x button to close
            Button(action: {
                withAnimation( .spring() ){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                   
                    .padding()
            })
            
            
            
            VStack  (alignment:.leading) {
                NavigationLink(
                 destination:
                     
                    AccountInfoView(),
                    
                 label: {
                    Image("profiledp")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .padding(.bottom,16)
                 })
             
            
//                Button(action: {
//                    withAnimation( .spring() ){
//                        isShowing.toggle()
//                    }
//                }, label: {
//                    Image("profiledp")
//                        .resizable()
//                        .scaledToFill()
//                        .clipped()
//                        .frame(width: 64, height: 64)
//                        .clipShape(Circle())
//                        .padding(.bottom,16)
//                })
//
                
                Text("Vishal Gupta")
                    .font(.system(size: 24, weight : .semibold))
                
                Text("@email")
                    .font(.system(size: 14)).padding(.bottom,12)
                
             
                HStack (spacing : 12) {
//                    HStack (spacing : 14) {
//                        Text("123").bold()
//                        Text("following")
//                    }
//                    HStack (spacing : 4) {
//                        Text("607").bold()
//                        Text("Followers")
//                    }
                    Spacer()
                }
//
//
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}

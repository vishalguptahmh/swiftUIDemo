//
//  SideMenuOptionView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    let model : SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16){
            
            Image(systemName: model.ImageName)
                .frame(width: 24, height: 24, alignment: .center)
            Text(model.title).font(.system(size: 15,weight: .semibold))
            
            Spacer()
        }.padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(model: .messages)
    }
}

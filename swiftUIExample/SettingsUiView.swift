//
//  SettingsUiView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 13-July-2021.
//

import SwiftUI

struct SettingsUiView: View {
    var body: some View {
        NavigationView {
      
            Form {
//                Top Main Sign View
                
                TopMainView()
                
//                Main View
                
//                
                Section{
                    
                    SingleSettingCell(imageName: "airplane", name: "Airplane mode", color: Color.yellow)
                    SingleSettingCell(imageName: "wifi", name: "Wifi", color: Color.blue)
                    SingleSettingCell(imageName: "antenna.radiowaves.left.and.right", name: "Mobile Data", color: Color.green)
                    
                }
                Section{
                    
                    SingleSettingCell(imageName: "rotate.left.fill", name: "Notifications", color: Color.red)
                    SingleSettingCell(imageName: "speaker.3.fill", name: "Sounds & Haptics", color: Color.orange)
                    SingleSettingCell(imageName: "moon.fill", name: "Mobile Data", color: Color.purple)
                    SingleSettingCell(imageName: "hourglass", name: "Screen Time", color: Color.purple)
                    
                }
            }
          
               
        
                .navigationTitle("Settings")
            
        }
    }
}

struct SettingsUiView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUiView()
    }
}

struct SingleSettingCell: View {
    let imageName : String
    let name : String
    let color : Color
    
    var body: some View {
        NavigationLink(
            destination: Text(name),
            label: {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                        .cornerRadius(29)
                        .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(5)
                        .background(color)
                        .clipped()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
        //                .resizable()
        //                .cornerRadius(12)
        //                .frame(width: 24, height: 24)
        //                .clipped()
        //                .aspectRatio(contentMode: .fit)
                    
                    Text(name)
                        .font(.system(size: 16))
                    
                    Spacer()
//                    Image(systemName: "chevron.right")
                    
                }
            })
     
    }
}

struct TopMainView: View {
    var body: some View {
        HStack {
            MyMediumSettingImage()
            
            VStack (alignment:.leading) {
                Text("Vishal Gupta")
                    .font(.system(size: 16))
                    .lineLimit(nil)
                   
                Text("Apple ID , iCloud , Media & Purchases")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                    .lineLimit(nil)
                    
            }
            .padding(.leading,4)
        }
    }
}

struct MyMediumSettingImage :  View {
    var body: some View{
        Image("profiledp").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 60, height: 60)
            .clipped()
            .cornerRadius(150)
            .padding(.leading,1)
    }
}

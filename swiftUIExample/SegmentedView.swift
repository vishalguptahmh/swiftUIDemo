//
//  SegmentedView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct SegmentedView: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .black
        UISegmentedControl.appearance().setTitleTextAttributes( [.foregroundColor : UIColor.white], for: .selected)
    }
    
    @State private var selectedTab : TabName = .main
    var body: some View {
       
//        NavigationView {
            VStack {
                Picker("Choose a Side", selection: $selectedTab) {
                    ForEach(TabName.allCases , id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                ChooseTab(selectedSide: selectedTab)
                Spacer()
                
            }
//            .navigationBarItems(leading: Button(action: {}, label: {
//
//                MySmallImage()
////                    .foregroundColor(.blue)
//            }))
//            .navigationTitle("UI Demo")
//            .navigationBarTitleDisplayMode(.inline)
//        }
      
    
    }
    
   
}




enum TabName : String , CaseIterable {
    case profile  = "Profile"
    case main  = "Main"
    case account  = "Account"
    case setting = "Settings"
   
}

struct ChooseTab : View {
    var selectedSide : TabName
    var body : some View {
        switch selectedSide {
        case .profile:
            AccountInfoView()
        case .main :
            Account(name: selectedSide.rawValue)
//            LoginUIView()
        default:
            Account(name: selectedSide.rawValue)
        }
    }
}


struct Account : View {
    var name : String
    var body : some View {
        Text("you are on \(name) screen")
        Image("profiledp").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom , 75)
    }
}

struct SegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedView()
    }
}



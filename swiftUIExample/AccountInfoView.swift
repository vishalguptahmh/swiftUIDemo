//
//  ContentView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI


struct AccountInfoView: View {
    
    @State private var firstName = "Vishal"
    @State private var lastName = "Gupta"
    @State private var dob = Date()
    @State private var notificationEnabled = true
    @State private var cartValue = 5

    var body: some View {
        NavigationView {
        
            Form {
                
                Section(header: Text("personal Info")){
                    TextField("First Name",text:$firstName)
                    TextField("Last Name",text:$lastName)
                    DatePicker("Date of birth", selection: $dob, displayedComponents: .date )
                }
                Section(header: Text("More Details")){
            
                    Toggle("Receive Notifcations", isOn: $notificationEnabled)
                    Stepper("Cart Value", value: $cartValue, in: 1...10)
                    Text ("Items in cart : \(cartValue) ")
                    Link("Terms and Conditions", destination: URL(string: "https://google.com")!)
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        hideKeyBoard()
                    } label : {
                        Image (systemName: "keyboard.chevron.compact.down")
                    }
                    
                    Button("Save", action: saveUser)
                    
                }
            }
        }
        .accentColor(.green)
    }
    func saveUser()  {
        print("User saved " )
    }
}

extension View {
    func hideKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil   )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}

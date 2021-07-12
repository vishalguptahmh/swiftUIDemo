//
//  LoginUIView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import SwiftUI

struct LoginUIView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var authenticationFail = false
    var body: some View {
        NavigationView {
            VStack {
                MyHeading()
                MyImage()
            
                UserNameTextFieldView(username: $userName)
                
                PasswordTextFieldView(password: $password)
                
                if authenticationFail {
                    Text("Information not correct. please try again")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Button(action: { loginButtonClicked()}){
                    loginButtonView()
                }
                
                Spacer()
            }

            .padding()
            
        }
    }
    func loginButtonClicked() {
        print("Login Clicked")
    }
}

struct MyHeading :  View {
    var body: some View{
        Text("Hello to Swift UI Demo")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}
struct MyImage :  View {
    var body: some View{
        Image("profiledp").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom , 75)
    }
}

//struct MyTextField :  View {
//    var body: some View{
//
//    }
//}
//struct MyButton :  View {
//    var body: some View{
//
//    }
//}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}



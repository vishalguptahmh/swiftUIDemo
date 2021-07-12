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

struct loginButtonView: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .frame(width: 320, height: 60)
            .background(Color.black)
            .cornerRadius(30.0)
    }
}

struct UserNameTextFieldView: View {
    @Binding var username : String
    var body: some View {
        TextField("UserName", text: $username)
            .padding()
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

struct PasswordTextFieldView: View {
    @Binding var password   : String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}
